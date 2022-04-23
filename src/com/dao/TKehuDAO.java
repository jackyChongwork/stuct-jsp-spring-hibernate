package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TKehu;

/**
 * Data access object (DAO) for domain model class TKehu.
 * 
 * @see com.model.TKehu
 * @author MyEclipse Persistence Tools
 */

public class TKehuDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TKehuDAO.class);

	// property constants
	public static final String YUANGONG_NAME = "kehuName";

	public static final String YUANGONG_SEX = "kehuSex";

	public static final String YUANGONG_AGE = "kehuAge";

	public static final String YUANGONG_XUELI = "kehuXueli";

	public static final String YUANGONG_ZHIWEI = "kehuZhiwei";

	public static final String YUANGONG_ADDRESS = "kehuAddress";

	public static final String YUANGONG_TEL = "kehuTel";

	public static final String YUANGONG_EMAIL = "kehuEmail";

	public static final String YUANGONG_QQ = "kehuQq";

	public static final String YUANGONG_LOGIN_NAME = "kehuLoginName";

	public static final String YUANGONG_LOGIN_PW = "kehuLoginPw";

	public static final String YUANGONG_ORG_ID = "kehuOrgId";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TKehu transientInstance)
	{
		log.debug("saving TKehu instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TKehu persistentInstance)
	{
		log.debug("deleting TKehu instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TKehu findById(java.lang.Integer id)
	{
		log.debug("getting TKehu instance with id: " + id);
		try
		{
			TKehu instance = (TKehu) getHibernateTemplate().get(
					"com.model.TKehu", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TKehu instance)
	{
		log.debug("finding TKehu instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TKehu instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TKehu as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByKehuName(Object kehuName)
	{
		return findByProperty(YUANGONG_NAME, kehuName);
	}

	public List findByKehuSex(Object kehuSex)
	{
		return findByProperty(YUANGONG_SEX, kehuSex);
	}

	public List findByKehuAge(Object kehuAge)
	{
		return findByProperty(YUANGONG_AGE, kehuAge);
	}

	public List findByKehuXueli(Object kehuXueli)
	{
		return findByProperty(YUANGONG_XUELI, kehuXueli);
	}

	public List findByKehuZhiwei(Object kehuZhiwei)
	{
		return findByProperty(YUANGONG_ZHIWEI, kehuZhiwei);
	}

	public List findByKehuAddress(Object kehuAddress)
	{
		return findByProperty(YUANGONG_ADDRESS, kehuAddress);
	}

	public List findByKehuTel(Object kehuTel)
	{
		return findByProperty(YUANGONG_TEL, kehuTel);
	}

	public List findByKehuEmail(Object kehuEmail)
	{
		return findByProperty(YUANGONG_EMAIL, kehuEmail);
	}

	public List findByKehuQq(Object kehuQq)
	{
		return findByProperty(YUANGONG_QQ, kehuQq);
	}

	public List findByKehuLoginName(Object kehuLoginName)
	{
		return findByProperty(YUANGONG_LOGIN_NAME, kehuLoginName);
	}

	public List findByKehuLoginPw(Object kehuLoginPw)
	{
		return findByProperty(YUANGONG_LOGIN_PW, kehuLoginPw);
	}

	public List findByKehuOrgId(Object kehuOrgId)
	{
		return findByProperty(YUANGONG_ORG_ID, kehuOrgId);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TKehu instances");
		try
		{
			String queryString = "from TKehu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TKehu merge(TKehu detachedInstance)
	{
		log.debug("merging TKehu instance");
		try
		{
			TKehu result = (TKehu) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TKehu instance)
	{
		log.debug("attaching dirty TKehu instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TKehu instance)
	{
		log.debug("attaching clean TKehu instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TKehuDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TKehuDAO) ctx.getBean("TKehuDAO");
	}
}