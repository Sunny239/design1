package com.page.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.util.SystemPropertyUtils;

import com.product.dao.Product;
import com.product.service.ProductService;

@Repository
public class PageDao {
		
	@Resource
	private SessionFactory sessionfactory;
	
	
	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}
	
	/**
	 * 统计全部个数
	 * @return
	 */
	public int fingCountByPage(){
		Session session = sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Product");
		List<Product> querylist = query.list();
		tran.commit();
		return querylist.size();
	}
	/**
	 * 全部分页技术
	 */
	public List<Product> findByPage(int pageNum,int pageSize){
		Session session = sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="from Product";
		Query query = session.createQuery(hql);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List<Product> list = query.list();
		tran.commit();
		return list;	
	}
	
	/**
	 * 按类型分页
	 */
	/*public List<Product> findBytypePage(int pageNum,int pageSize,int typeid){
		ProductService ps = new ProductService();
		List<Product> list1 = ps.gettype(typeid);
		List<Product> list = new ArrayList<Product>();
		
		for (int i = (pageNum-1)*pageSize; i < (pageNum-1)*pageSize+pageSize; i++) {
			if(i<list1.size()){
				list.add(list.get(i));
			}
		}
		return list;	
	}*/
	
}


