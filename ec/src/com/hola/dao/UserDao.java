package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;

import com.hola.Exception.BizException;
import com.hola.pojo.User;

public class UserDao extends BaseDao<User> {

	@Override
	public List<User> find(final int pageIndex, final int pageSize) {
		Criteria criteria = getSession().createCriteria(User.class);
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
	public void create(final User user) {
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(final User user) {
		getHibernateTemplate().update(user);
	}

	@Override
	public User find(Serializable id) throws BizException {
		return getHibernateTemplate().get(User.class, id);
	}

	@Override
	public void delete(Serializable id) throws BizException {
		getHibernateTemplate().delete(find(id));
	}

}
