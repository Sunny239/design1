package com.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.user.entity.Role;
import com.user.entity.User;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionfactory;

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}
	public boolean  saveuser(User u,String address){
		Session session = sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		Role role = session.get(Role.class, new Integer(1));
		User user = session.get(User.class, new String(address));
		if(user==null){
			role.getUserset().add(u);
			u.setRole(role);
			session.save(u);
			tran.commit();
			return true;
		}else{
			return false;
		}
		
	}
	
	public User checkuser(String address){
		Session session = sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		User u = session.get(User.class, new String(address));
		tran.commit();
		return u;
	}
	
	public int editactive(String address){
		Session session =sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql = "update User set active=1 where address=?";
		Query query =session.createQuery(hql);
		query.setParameter(0, address);
		int count = query.executeUpdate();
		tran.commit();
		return count;
	}
	public Boolean checkaddress(String address){
		Session session = sessionfactory.openSession();
		Transaction tran = session.beginTransaction();
		User user = session.get(User.class, new String(address));
		//System.out.println(user.getAddress());
		if(user==null){
			return true;
		}else{
			return false;
		}
	}
}
