package cn.itcast.shop.index.action;

import java.util.List;

import cn.itcast.shop.category.service.CategoryService;
import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.service.ProductService;
import cn.itcast.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页访问的Action
 */
public class IndexAction extends ActionSupport {
	// 注入一级分类的Service:
	private CategoryService categoryService;
	// 注入商品的Service
	private ProductService productService;

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * 执行的访问首页的方法:
	 */
	public String execute() {
		// 查询所有一级分类集合
		List<Category> cList = categoryService.findAll();
		// 将一级分类存入到Session的范围:
		ActionContext.getContext().getSession().put("cList", cList);
		// 查询热门商品:
		List<Product> hList = productService.findHot();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", hList);
		// 查询最新商品:
		List<Product> nList = productService.findNew();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("nList", nList);
		// 轮播图对应相应的商品:
		List<Product> bList = productService.findBanner();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("bList", bList);
		// 水果蔬菜对应的商品:
		List<Product> fList = productService.findFruit();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("fList", fList);
		// 品牌鞋对应的商品:
		List<Product> tList = productService.findFeet();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("tList",tList);
		// 图标对应的商品:
		List<Product> iList = productService.findIcon();
		ActionContext.getContext().getValueStack().set("iList",iList);
		return "index";
	}

}
