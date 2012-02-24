package com.nianmi.member.service;

import org.springframework.stereotype.Service;

import com.nianmi.member.exception.BizException;

@Service
public abstract class BaseService<T> implements IBaseService<T> {
	@Override
	public int count() throws BizException {
		return getDao().count();
	}
}
