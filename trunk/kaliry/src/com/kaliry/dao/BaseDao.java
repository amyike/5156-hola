package com.kaliry.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.kaliry.pojo.BasePojo;

public abstract class BaseDao<PK extends Serializable, T extends BasePojo>
		extends HibernateDaoSupport implements IBaseDao<PK, T> {

	private Class<T> entityClass;

	@SuppressWarnings("unchecked")
	public BaseDao() {
		entityClass = (Class<T>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[1];
	}

	// protected abstract Class<T> getClasz();

	@Override
	public T findByID(final PK id) {
		return getHibernateTemplate().get(entityClass, id);
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
		if (maxResults > 0) {
			return getHibernateTemplate().findByCriteria(criteria, firstResult,
					maxResults);
		}
		return getHibernateTemplate().findByCriteria(criteria);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findListByCriteria(final DetachedCriteria criteria) {
		return getHibernateTemplate().findByCriteria(criteria);
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
	public void delete(T pojo) {
		getHibernateTemplate().delete(pojo);
	}

	@Override
	public T deleteByID(final PK id) {
		T t = findByID(id);
		if (t != null)
			delete(t);
		return t;
	}

	@Override
	public void deleteByCriteria(final DetachedCriteria criteria) {
		getHibernateTemplate().deleteAll(findListByCriteria(criteria, 0, 0));
	}
}
