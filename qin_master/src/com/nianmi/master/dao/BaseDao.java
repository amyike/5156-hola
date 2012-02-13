package com.nianmi.master.dao;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class BaseDao<T> extends HibernateDaoSupport implements
		IBaseDao<T> {

	private Class<T> clasz;

	public BaseDao(Class<T> clasz) {
		super();
		this.clasz = clasz;
	}

	protected Criteria getCriteria() {
		return getSession().createCriteria(clasz);
	}

	protected Criteria getCriteria(final int pageFirst, final int pageSize) {
		Criteria criteria = getSession().createCriteria(clasz);
		if (pageFirst > -1)
			criteria.setFirstResult(pageFirst);
		if (pageSize > -1)
			criteria.setMaxResults(pageSize);
		return criteria;
	}

	protected int findtId(String hql) {
		List<Integer> list = getHibernateTemplate().find(hql);
		return list.isEmpty() ? 0 : new Integer(list.get(0).toString());
	}

	protected Set<Integer> findIds(String hql) {
		List<Integer> list = getHibernateTemplate().find(hql);
		if (list.isEmpty())
			return null;
		return new HashSet<Integer>(list);
	}

	@Override
	public int count() {
		String hql = "select count(*) from " + clasz.getSimpleName();
		return count(hql);
	}

	protected int count(String hql) {
		if (hql == null || hql.isEmpty())
			return 0;
		List<T> list = getHibernateTemplate().find(hql);
		return list.isEmpty() ? 0 : new Integer(list.get(0).toString());
	}

	@Override
	public void save(final T pojo) {
		getHibernateTemplate().save(pojo);
	}

	@Override
	public void delete(final Serializable id) {
		getHibernateTemplate().delete(find(id));
	}

	@Override
	public void update(final T pojo) {
		getHibernateTemplate().update(pojo);
	}

	@Override
	public T find(final Serializable id) {
		return getHibernateTemplate().get(clasz, id);
	}

	public List<T> find(final int pageFirst, final int pageSize) {
		Criteria criteria = getCriteria();
		if (pageFirst > -1)
			criteria.setFirstResult(pageFirst);
		if (pageSize > -1)
			criteria.setMaxResults(pageSize);
		return criteria.list();
	}

	public int executeUpdate(String hql) {
		return getSession().createQuery(hql).executeUpdate();
	}
}
