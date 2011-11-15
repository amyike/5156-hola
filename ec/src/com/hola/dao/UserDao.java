package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;

import com.hola.Exception.BizException;
import com.hola.pojo.UserPojo;

public class UserDao extends BaseDao<UserPojo> {

	@Override
	public List<UserPojo> find(final int pageIndex, final int pageSize) {
		Criteria criteria = getSession().createCriteria(UserPojo.class);
		criteria.setFirstResult(pageIndex);
		criteria.setMaxResults(pageIndex);
		return criteria.list();
	}

	@Override
	public int count() {
		String hql = "select count(*) from UserInfo as user";
		return (Integer) getHibernateTemplate().find(hql).listIterator().next();
	}

	@Override
	public void create(final UserPojo user) {
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(final UserPojo user) {
		getHibernateTemplate().update(user);
	}

	@Override
	public UserPojo find(Serializable id) throws BizException {
		return getHibernateTemplate().get(UserPojo.class, id);
	}

	@Override
	public void delete(Serializable id) throws BizException {
		getHibernateTemplate().delete(find(id));
	}

}
