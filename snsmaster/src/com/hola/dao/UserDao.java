package com.hola.dao;

import java.util.List;

import org.hibernate.Criteria;

import com.hola.pojo.User;

public class UserDao extends BaseDao<Long, User> {

	@Override
	public User find(final Long key) {
		return getHibernateTemplate().get(User.class, key);
	}

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
	public void create(final User pojo) {
		getHibernateTemplate().save(pojo);
	}

	@Override
	public void update(final User pojo) {
		getHibernateTemplate().update(pojo);
	}

	@Override
	public void delete(final Long key) {
		getHibernateTemplate().delete(find(key));
	}

}
