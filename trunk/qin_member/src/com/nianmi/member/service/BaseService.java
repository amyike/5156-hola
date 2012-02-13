package com.nianmi.member.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nianmi.member.exception.BizException;

@Service
public abstract class BaseService<T> implements IBaseService<T> {

	@Override
	public T find(final Serializable id) throws BizException {
		return getDao().find(id);
	}

	@Override
	public List<T> find(final int pageFirst, final int pageSize)
			throws BizException {
		return getDao().find(pageFirst, pageSize);
	}

	@Override
	public int count() throws BizException {
		return getDao().count();
	}

	@Override
	public void save(final T pojo) throws BizException {
		getDao().save(pojo);
	}

	@Override
	public void update(final T pojo) throws BizException {
		getDao().update(pojo);
	}

	@Override
	public void delete(final Serializable id) throws BizException {
		getDao().delete(id);
	}
}
