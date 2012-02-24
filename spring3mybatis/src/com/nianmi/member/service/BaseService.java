package com.nianmi.member.service;

import java.io.Serializable;
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
	public T findById(final long id) throws BizException {
		return getDao().findById(id);
	}

	@Override
	public void save(T pojo) throws BizException {
		getDao().save(pojo);
	}

	@Override
	public List<T> find(int pageFirst, int pageSize) throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(T pojo) throws BizException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Serializable id) throws BizException {

	}
}
