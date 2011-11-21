package com.hola.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hola.dao.CommunityDao;
import com.hola.exception.BizException;
import com.hola.pojo.TsXqtable;

@Service
public class CommunityService extends BaseService<TsXqtable> {

	@Autowired
	private CommunityDao communityDao;

	@Override
	public TsXqtable find(Serializable id) throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TsXqtable> find(int pageIndex, int pageSize)
			throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() throws BizException {
		return communityDao.count();
	}

	@Override
	public void create(TsXqtable pojo) throws BizException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(TsXqtable pojo) throws BizException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Serializable id) throws BizException {
		// TODO Auto-generated method stub

	}

}
