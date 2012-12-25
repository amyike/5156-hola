package com.hola.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.exception.BizException;

@Service
@Transactional
public abstract class BaseService<T> implements IBaseService<T> {

	@Override
	public T findByID(Serializable id) throws BizException {
		return getDao().findByID(id);
	}

	@Override
	public T findByCriteria(final DetachedCriteria criteria)
			throws BizException {
		return getDao().findByCriteria(criteria);
	}

	public List<T> findListByCriteria(final DetachedCriteria criteria,
			int firstResult, int maxResults) throws BizException {
		return getDao().findListByCriteria(criteria, firstResult, maxResults);
	}

	@Override
	public int count(final DetachedCriteria criteria) throws BizException {
		return getDao().count(criteria);
	}

	@Override
	public int save(final T pojo) throws BizException {
		return getDao().save(pojo);
	}

	@Override
	public void update(final T pojo) throws BizException {
		getDao().update(pojo);
	}

	@Override
	public void deleteByID(final Serializable id) throws BizException {
		getDao().deleteByID(id);
	}

	@Override
	public void deleteByCriteria(final DetachedCriteria criteria)
			throws BizException {
		getDao().deleteByCriteria(criteria);
	}
}
