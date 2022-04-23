package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.dao.TAdminDAO;
import com.dao.TKehuDAO;
import com.model.TAdmin;
import com.model.TKehu;
import com.util.MD5;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class loginService
{
	private TAdminDAO adminDAO;
	private TKehuDAO kehuDAO;


	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}
	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}
	public TKehuDAO getKehuDAO()
	{
		return kehuDAO;
	}
	public void setKehuDAO(TKehuDAO kehuDAO)
	{
		this.kehuDAO = kehuDAO;
	}
	
	
	
	public String login(String userName,String userPw,int userType)
	{

		System.out.println("userType"+userType);
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String result="no";
		
		if(userType==0)//ϵͳ����Ա��½
		{
			BeanFactory factory =new ClassPathXmlApplicationContext("applicationContext.xml");
			adminDAO  =(TAdminDAO) factory.getBean("TAdminDAO");
			String sql="from TAdmin where userName=? and userPw=?";
			Object[] con={userName, MD5.md5s(userPw)};

			List adminList=adminDAO.getHibernateTemplate().find(sql,con);


			if(adminList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TAdmin admin=(TAdmin)adminList.get(0);
				 session.setAttribute("userType", 0);
	             session.setAttribute("admin", admin);
	             session.setAttribute("mm", userPw);
	             result="yes";
			}
		}
		if(userType==1)// 
		{
			String sql="from TKehu where kehuLoginName=? and kehuLoginPw=?";
			Object[] con={userName, MD5.md5s(userPw)};
			List kehuList=kehuDAO.getHibernateTemplate().find(sql,con);
			if(kehuList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TKehu kehu=(TKehu)kehuList.get(0);
				 session.setAttribute("userType", 1);
	             session.setAttribute("kehu", kehu);
	             
	             session.setAttribute("kehuName", kehu.getKehuName());
	             session.setAttribute("kehuId", kehu.getKehuId().toString());
	             session.setAttribute("sfz", kehu.getKehuQq().toString());
	             session.setAttribute("zw", kehu.getKehuZhiwei().toString());
	             session.setAttribute("mm", userPw);
	             result="yes";
			}
		}
		
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		admin.setUserPw(MD5.md5s(userPwNew));
		
		adminDAO.getHibernateTemplate().update(admin);
		session.setAttribute("admin", admin);
		
		return "yes";
    }
    
    
    public String kehuPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TKehu kehu=(TKehu)session.getAttribute("kehu");
		kehu.setKehuLoginPw(MD5.md5s(userPwNew));
		
		kehuDAO.getHibernateTemplate().update(kehu);
		session.setAttribute("kehu", kehu);
		
		return "yes";
    }

    
    public List kehuSelect()
    {
    	try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String sql="from TKehu where type='kehu' and del='no'";
		List kehuList=kehuDAO.getHibernateTemplate().find(sql);
		return kehuList;
    }
}
