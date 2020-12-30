package cn.itcast.shop.order.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePrecreateRequest;
import com.alipay.api.request.AlipayTradeQueryRequest;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.alipay.api.response.AlipayTradeQueryResponse;

import cn.itcast.shop.order.dao.OrderDao;
import cn.itcast.shop.order.vo.Order;
import cn.itcast.shop.order.vo.OrderItem;
import cn.itcast.shop.utils.PageBean;

@Transactional
public class OrderService {
	// 注入OrderDao
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	// 业务层保存订单的方法
	public void save(Order order) {
		orderDao.save(order);
	}
	
	
	private static AlipayClient alipayClient;
	
	static {
		String APP_ID = "2016110200787281";
		String APP_PRIVATE_KEY = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCVy/IzndYEEvoKy/eDxxuppHZ3Jw2j6nzbrdZku0G52YMeSExwoHrNmSPvmQkgsIycg4Oty+oqYMSVwr9HswrMlg5qBj/ImrxETuP2fWU7cIPbOxf2nbZAGtSAanDNHwKGz2WkvtABQpjqBAbyVA36NHprGjobg8nCW5MrK02FZdF+BLkr+t7vnhhyvR/OscaZLYYfYmZs/lvaHVQHkmjS69yAaRl+D+qLND5vTnnl4dAHcJDcku22B1PgiV8HCOB9c0BQPGjT1pA8pEMFfvoqqaVI6Z44QTyZyyK1wm/fSoGBxJ6Jv45sG5WaLyADxwPZVpnH/EYe6ItshvJIdSbdAgMBAAECggEAXONFwkoqjwYxdQZ76oRKHAz2xPY7mBxs5lBKtNYFcLh3fQy6EdEBtYIz7XxJU7MGznsi6V+cSkENRgyoTk6w8KJQN+C+JqgE/Jqq84tYfd5MdWKUfoHXpLK+eQ8H+boz9+KdleYY198zMVHj+Nq0fCWUj9uIks1LDDF69fb5MDE6qmoDfVM1oAPePTlYV3bnHnyC++qPAztJUNyl8ezxS+U3XGnDb/r5ajOuD1357uwIcz27V0NM+O9EvuaHHL9rM+qUMKilEhtpxYtTO4MqWGL7HJvnM84djRZ1b4dAsPIGcN2BsotsGpWWZlBxXF/2tKElHetD/VRFJq0/UxuNBQKBgQDRUjQPxyRvtNl/dBEGFZXazwLNF0d5yj32vPElYPLWmLqOXgKu0yVObHIRLWgTjQk14uPH0s5i7S8z+nV0jfdOpXA2mLP1pm1iUIbMMHQynm6ayibpx5Z/GA5cHiplrP51OyMmLYPScwVe9SK1/D/BgOupQw246/Zmgxu/LhNpswKBgQC3M5csnSfnjwTWRKeRUvaZlJyrSKOGzst6eWOmPaHpxUkj8Yw1H+fcX2IUCm8QC944BAtHfELRWTygcUxjwL7sHJNX2+ztMP+aTZ9VVuhI+JpXSxfStd0Or3ogCXaWu+8JDSMBvizWppk3F7RLW+MvcYv+cMJEgCSa+y4yUDrFLwKBgFMYwCQ3WWajM+jeCdgRf6ESpzkF8dEOkZS/IzhEiYLZtM3J0mTW26uLb6kUDoocZjinLufn7xjkseV/m1s+9JubH7X83ww5Gpl6AFlVLvvdW2lFsTcDjeI8iY7WRtyAVa/yXxzL2tYT5WDyDeqTDjhiVqumO+9adUHy8HPv9bLzAoGAL6AEw79TGVpPqpgMa7YCj2hX1hs7D5eAxCT8Z8IL7mawHdz0UvcpYluVdppDxwseyLcca4f9Isks/pSVhDUeLOk80JFGpV6gg+975UaDejzOerT1y3wlrGSnvd5X6tWOTW8R06kppN+IYw8Reqm3hKTi/NE5X29klLmJh+DddlcCgYAKc5AYmrnZ12iUKh2CEL1VvN/tq8MZ4Cj+A8yJY8O8YuVYUbTsO78b5zn4bAHvq0EoTW9fnSSLQJnnocH7q+KtyukjltJxXXuAOHagaT4nLGhyMt9hnTk6mYRloCNmHGxZo6zUwshzvCanjwubxmqaRt5gJtCATPShFSRTCnbwcQ==";
	    String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvmrfAdEuobAT2z/IRc6j9lSX+3sOwbwtCQdSgswTbG5WGLBMG7SW/B2CvYSOVff0SsjXNghU8IHRxEFVVhiCnQokV93BEBrbIfngTBXpJ5k5JUbK+8qkLF+NTbZT89SMzaQICaCSU40GryERZuLOGO0fKUc1rGBMda5aLoPa1OL2PUulXUIlVP9VOA21xBc388O518UOYu1b4RhH+OcqNcki4OOlNa1GWaWA1LRQnAA3p3FrNIN/QtmNkgHpImG2V1YULPSlirok0bV6z1At1uFyIF/KsIqWw5JSc7HSiI3/aqGkPPooDzr0QGHY2tZvT982WsMUd6cAtiS1zbVfewIDAQAB";
		String return_url = "http://localhost:8080/shoponline/paySuccess.jsp";
		String CHARSET = "utf-8";
		
		alipayClient = new DefaultAlipayClient("https://openapi.alipaydev.com/gateway.do", APP_ID,
				APP_PRIVATE_KEY, "json", CHARSET, ALIPAY_PUBLIC_KEY,"RSA2"); // 获得初始化的AlipayClient
	}
	


	// 业务层根据用户id查询订单,带分页查询.
	public PageBean<Order> findByUid(Integer uid, Integer page) {
		PageBean<Order> pageBean = new PageBean<Order>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		// 显示5个
		int limit = 5;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = orderDao.findCountByUid(uid);
		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置每页显示数据集合:
		int begin = (page - 1) * limit;
		List<Order> list = orderDao.findPageByUid(uid, begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 根据订单id查询订单
	public Order findByOid(Integer oid) {
		return orderDao.findByOid(oid);
	}

	// 业务层修改订单的方法:
	public void update(Order currOrder) {
		orderDao.update(currOrder);
	}

	// 业务层查询所有订单方法
	public PageBean<Order> findAll(Integer page) {
		PageBean<Order> pageBean = new PageBean<Order>();
		// 设置参数
		pageBean.setPage(page);
		// 设置每页显示的记录数:
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录数
		int totalCount = orderDao.findCount();
		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置每页显示数据集合
		int begin = (page - 1) * limit;
		List<Order> list = orderDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 业务层查询订单项的方法
	public List<OrderItem> findOrderItem(Integer oid) {
		return orderDao.findOrderItem(oid);
	}

	// 生成二维码
	public Map createNative(String out_trade_no, String total_amount, String subject) {
		Map map = new HashMap();
		
		String  return_url = "http://localhost:8080/shoponline/paySuccess.jsp";

		AlipayTradePrecreateRequest request = new AlipayTradePrecreateRequest(); // 创建API对应的request类
		request.setReturnUrl(return_url);
		request.setBizContent("{" + "\"out_trade_no\":\"" + out_trade_no + "\"," + // 商户订单号
				"\"total_amount\":\"" + total_amount + "\"," + "\"subject\":\"" + subject + "\","
				+ "\"store_id\":\"NJ_001\"," + "\"timeout_express\":\"90m\"}"); // 订单允许的最晚付款时间
		AlipayTradePrecreateResponse response = null;
		try {
			response = alipayClient.execute(request);
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		String responseStr = response.getBody();
		String code = response.getCode();
		String qr_code = response.getQrCode();
	
		map.put("out_trade_no", out_trade_no);
		map.put("total_amount", total_amount);
		map.put("subject", subject);
		map.put("code", code);
		map.put("qr_code", qr_code);

		System.out.print(responseStr);

		// 根据response中的结果继续业务逻辑处理
		return map;
	}

	public Map queryPayStatus(String out_trade_no) {
		Map map = new HashMap();
		
		
		
		AlipayTradeQueryRequest request = new AlipayTradeQueryRequest(); // 创建API对应的request类
		request.setBizContent("{\"out_trade_no\":\""+out_trade_no+"\"}"); // 设置业务参数
		AlipayTradeQueryResponse response = null;
		try {
			response = alipayClient.execute(request);
		} catch (AlipayApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 通过alipayClient调用API，获得对应的response类
		System.out.print(response.getBody());
		// 根据response中的结果继续业务逻辑处理
		
		String responseStr = response.getBody();
		String code = response.getCode();
		String trade_no = response.getTradeNo();
		String trade_status = response.getTradeStatus();
		String buyer_pay_amount = response.getBuyerPayAmount();

		map.put("out_trade_no", out_trade_no);
		map.put("trade_no",trade_no);
		map.put("trade_status", trade_status);
		map.put("code", code);
		map.put("buyer_pay_amount",buyer_pay_amount);
		
		return map;
	}
}
