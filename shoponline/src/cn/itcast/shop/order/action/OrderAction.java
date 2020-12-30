package cn.itcast.shop.order.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.cart.vo.Cart;
import cn.itcast.shop.cart.vo.CartItem;
import cn.itcast.shop.order.service.OrderService;
import cn.itcast.shop.order.vo.Order;
import cn.itcast.shop.order.vo.OrderItem;
import cn.itcast.shop.user.vo.User;
import cn.itcast.shop.utils.PageBean;
import cn.itcast.shop.utils.PaymentUtil;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 订单Action类
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order> {

	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	// 模型驱动使用的对象
	private Order order = new Order();

	public Order getModel() {
		return order;
	}



	// 接收page
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// 注入OrderService
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	// 生成订单的执行的方法:
	public String saveOrder() {

		// 调用Service完成数据库插入的操作:
		// Order order = new Order();
		// 设置订单的总金额:订单的总金额应该是购物车中总金额:
		// 购物车在session中,从session总获得购物车信息.
		Cart cart = (Cart) ServletActionContext.getRequest().getSession().getAttribute("cart");
		if (cart == null) {
			this.addActionMessage("亲!您还没有购物!");
			return "msg";
		}
		order.setTotal(cart.getTotal());
		// 设置订单的状态
		order.setState(1); // 1:未付款.
		// 设置订单时间
		order.setOrdertime(new Date());
		// 设置订单关联的客户:
		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		if (existUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		order.setUser(existUser);
		// 设置订单项集合:
		for (CartItem cartItem : cart.getCartItems()) {
			// 订单项的信息从购物项获得的.
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			orderItem.setOrder(order);

			order.getOrderItems().add(orderItem);
		}
		orderService.save(order);
		// 清空购物车:
		cart.clearCart();

		// 页面需要回显订单信息:
		// 使用模型驱动了 所有可以不使用值栈保存了
		// ActionContext.getContext().getValueStack().set("order", order);

		return "saveOrder";
	}

	// 查询我的订单:
	public String findByUid() {
		// 获得用户的id.
		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		// 获得用户的id
		Integer uid = existUser.getUid();
		// 根据用户的id查询订单:
		PageBean<Order> pageBean = orderService.findByUid(uid, page);
		// 将PageBean数据带到页面上.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByUid";
	}

	// 根据订单id查询订单:
	public String findByOid() {
		order = orderService.findByOid(order.getOid());
		return "findByOid";
	}

	// 为订单付款:
	public String payOrder() {
		order = orderService.findByOid(order.getOid());
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setAddr(order.getAddr());
		currOrder.setName(order.getName());
		currOrder.setPhone(order.getPhone());
		// 修改订单
		orderService.update(currOrder);
		// 订单号
		String out_trade_no = order.getOid().toString();
		// 产品价格
		String total_amount = order.getTotal().toString();
		// 产品名
		String subject = "网上购物";
		// 调用 阿里预支付方法生成 二维码
		Map map = orderService.createNative(out_trade_no, total_amount, subject);
		ActionContext.getContext().getSession().put("alipay", map);
		return "alipay";
	}
	
	// 重新付款:
	public String andPayOrder() {
		Map alipayMap = (Map) ActionContext.getContext().getSession().get("alipay");
		// 订单号
		String out_trade_no = (String) alipayMap.get("out_trade_no");
		// 产品价格
		String total_amount = (String) alipayMap.get("total_amount");
		// 产品名
		String subject = "网上购物";
		// 调用 阿里预支付方法生成 二维码
		Map map = orderService.createNative(out_trade_no, total_amount, subject);
		ActionContext.getContext().getSession().put("alipay", map);
		return "alipay";
	}

	/**
	 * 查询支付状态
	 * @return
	 * @throws IOException 
	 */
	public void queryPayStatus() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
        PrintWriter writer = response.getWriter();
        boolean flag = true;
        int x=0;
        while(true) {
        	// 订单号
    		Map alipayMap = (Map) ActionContext.getContext().getSession().get("alipay");
    		//从sison中获取单号
    		String out_trade_no = (String) alipayMap.get("out_trade_no");
    		
    		// 用于接收订单交易状态
    		Map map = orderService.queryPayStatus(out_trade_no);
    		// 订单交易状态
    		String trade_status = (String) map.get("trade_status");
    		if ("TRADE_SUCCESS".equals(map.get("trade_status"))) {
    			//订单状态置为 支付状态
    			//(请查数据库更改)
    			// 修改订单的状态:
    			Order currOrder = orderService.findByOid(Integer.parseInt(out_trade_no));
    			// 修改订单状态为2:已经付款:
    			currOrder.setState(2);
    			orderService.update(currOrder);
    			map.put("msg","支付成功");
    			ActionContext.getContext().getSession().put("payStatus", map);
    			flag = true;
    			break;
    		} else if ("TRADE_CLOSED".equals(map.get("trade_status"))) {
    			map.put("msg","未付款交易超时关闭，或支付完成后全额退款");
    			ActionContext.getContext().getSession().put("payStatus", map);

    		} else if ("TRADE_FINISHED".equals(map.get("trade_status"))) {
    			map.put("msg","交易结束，不可退款");
    			ActionContext.getContext().getSession().put("payStatus", map);
   
    		} else {
    			map.put("msg","未付款");
    			ActionContext.getContext().getSession().put("payStatus", map);
    		}
        	
    		try {
                Thread.sleep(3000);//间隔三秒
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            //为了不让循环无休止地运行，我们定义一个循环变量，如果这个变量超过了这个值则退出循环，设置时间为5分钟
            x++;
            if(x>=20){  
            	flag = false;
                break;
            }
            System.out.println("查询  "+x+"  次");
        }

		writer.print(flag);
        writer.flush();
        writer.close();

	}
	//修改订单状态
	public String updateState() {
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setState(4);
		orderService.update(currOrder);
		return "updateStateSuccess";
	}

}
