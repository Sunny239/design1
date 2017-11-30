package com.page.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.page.entity.Page;
import com.page.service.PageService;
import com.product.dao.Product;
import com.product.service.ProductService;

@Controller
@RequestMapping("/page")
public class PageController {
	
	@Resource
	private PageService pageservice;
	@Resource
	private ProductService productservice;

	public PageService getPageservice() {
		return pageservice;
	}

	public void setPageservice(PageService pageservice) {
		this.pageservice = pageservice;
	}
	
	
	public ProductService getProductservice() {
		return productservice;
	}

	public void setProductservice(ProductService productservice) {
		this.productservice = productservice;
	}
	/**
	 * 全部商品
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/get",method=RequestMethod.GET)
	public String getpage(HttpServletRequest request,
			HttpSession session){
		
		String pageNum = request.getParameter("pageNum");
		
		int num=0;
		if(pageNum==null||pageNum.equals("")){
			num=1;
		}else{
			num=new Integer(pageNum);
		}
		int count=pageservice.getCountByPage();
		List<Product> list = pageservice.getByPage(num, 4);
		Page p =new Page(num,4);
		p.setList(list);
		p.setTotalCount(count);
		session.setAttribute("page", p);
		return "product";
	}
	/**
	 * 按类型
	 */
	@RequestMapping(value="/gettype",method=RequestMethod.GET)
	public String gettype(HttpServletRequest request,
				HttpSession session,@RequestParam("typeId") String typeid
			){
		String pageNum = request.getParameter("pageNum");
		
		int num=0;
		if(pageNum==null||pageNum.equals("")){
			num=1;
		}else{
			num=new Integer(pageNum);
		}
		int count = productservice.gettype(new Integer(typeid)).size();
		/*System.out.println("count="+count);
		List<Product> list1 = productservice.gettype(1);
		System.out.println("name"+list1.get(0).toString());*/
		
		List<Product> list = productservice.gettype(new Integer(typeid));
		List<Product> list1 = new ArrayList<Product>();
		
		for (int i = (num-1)*4; i < (num-1)*4+4; i++) {
			if(i<count){
				list1.add(list.get(i));
			}
		}
		//System.out.println("name="+list.get(0).getName());
		Page p =new Page(num,4);
		p.setList(list1);
		p.setTotalCount(count);
		session.setAttribute("page",p);
		//System.out.println(list.size());
		return "product";
			
	}
	

	
	
	
}
