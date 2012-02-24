package com.nianmi.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.nianmi.member.exception.BizException;
import com.nianmi.member.mapper.SqlMapper;

public abstract class BaseDao<T> extends SqlSessionDaoSupport implements
		IBaseDao<T> {

	private Class<T> clasz;

	public BaseDao(Class<T> clasz) {
		this.clasz = clasz;
	}

	@Override
	public T findById(long id) throws BizException {
		SqlMapper<T> sqlMapper = getSqlSession().getMapper(SqlMapper.class);
		return sqlMapper.findById(id);
	}

	@Override
	public int count() throws BizException {
		SqlMapper<T> sqlMapper = getSqlSession().getMapper(SqlMapper.class);

		return sqlMapper.count();
	}
}
