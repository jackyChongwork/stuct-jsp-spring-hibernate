package com.service;

import java.util.Arrays;
import java.util.List;

import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.TAdminDAO;
import com.util.MD5;

public class DBConnectTest {
	public static void main(String[] args) {
		System.out.println(MD5.md5s("123456"));
		test();
	}

	/**
	 * com.mysql.jdbc.exceptions.MySQLNonTransientConnectionException:
	 *Client does not support authentication protocol requested by server; consider upgrading MySQL client
	 **/
	public static void test() {
//		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory =new ClassPathXmlApplicationContext("applicationContext.xml");
		TAdminDAO admin = (TAdminDAO) factory.getBean("TAdminDAO");
		//String queryString = "select count(*) from bean.User u where u.name=:myName and u.password=:myPassword";    

//		String[] paramName= new String[]{"myName", "myPassword"}; 
//		String[] value= new String[]{"xiyue", "123"};  

		SessionFactory sessionFactory = admin.getHibernateTemplate().getSessionFactory();//findByNamedParam(queryString, paramName, value);
		//返回用户名为xiyue密码为123的
		
		String sql="from TAdmin where userName=? and userPw=?";
	//	String sql="from TAdmin";
		String userName = "admin";
		String userPw = "123456";
//		String userPw = "0cc175b9c0f1b6a831c399e269772661";
//		String sql="from TAdmin where userName=? and userPw=?";
		Object[] parameters={userName, MD5.md5s(userPw)};
		List adminList=admin.getHibernateTemplate().find(sql,parameters);

	
//		Object[] con={userName,md5.md5s(userPw)};
		
//		List adminList=admin.getHibernateTemplate().find(sql,con);
		System.out.println(adminList.get(0).toString());
		System.out.println(adminList.size());

//		tran.commit();
//		session.close();
		//factory.close();
		
	}
}
