package com.nianmi.member.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nianmi.member.exception.BizException;

@Service
public abstract class BaseService<T> implements IBaseService<T> {
	@Override
	public int count() throws BizException {
		return getDao().count();
	}

	@Override
	public T find(final long id) throws BizException {
		return getDao().find(id);
	}

	@Override
	public void save(final T pojo) throws BizException {
		getDao().save(pojo);
	}

	@Override
	public List<T> find(final int pageFirst, final int pageSize)
			throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(final T pojo) throws BizException {
		getDao().update(pojo);
	}

	@Override
	public void delete(final long id) throws BizException {
		getDao().delete(id);
	}
}
