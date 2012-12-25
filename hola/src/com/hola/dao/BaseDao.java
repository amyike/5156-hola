package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class BaseDao<T> extends HibernateDaoSupport implements
		IBaseDao<T> {

	private Class<T> clasz;

	public BaseDao(Class<T> clasz) {
		this.clasz = clasz;
	}

	@Override
	public T findByID(final Serializable id) {
		return getHibernateTemplate().get(clasz, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findByCriteria(final DetachedCriteria criteria) {
		return (T) criteria.getExecutableCriteria(getSession()).uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findListByCriteria(final DetachedCriteria criteria,
			final int firstResult, final int maxResults) {
		return getHibernateTemplate().findByCriteria(criteria, firstResult,
				maxResults);
	}

	@Override
	public int count(final DetachedCriteria criteria) {
		criteria.setProjection(Projections.rowCount());
		Object count = criteria.getExecutableCriteria(getSession())
				.uniqueResult();
		criteria.setProjection(null);// 先放这里，后续将出现异常再修改(会缓存，影响后面的查询条件)
		return Integer.valueOf(count.toString());
	}

	@Override
	public int save(final T pojo) {
		return (Integer) getHibernateTemplate().save(pojo);
	}

	@Override
	public void update(final T pojo) {
		getHibernateTemplate().update(pojo);
	}

	@Override
	public void deleteByID(final Serializable id) {
		getHibernateTemplate().delete(findByID(id));
	}

	@Override
	public void deleteByCriteria(final DetachedCriteria criteria) {
		getHibernateTemplate().deleteAll(findListByCriteria(criteria, 0, 0));
	}
}
