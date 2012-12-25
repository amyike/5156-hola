package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.MasterDao;
import com.hola.pojo.impl.Master;
import com.hola.service.BaseService;

/**
 * 
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MasterService extends BaseService<Master> {

	@Autowired
	private MasterDao masterDao;

	@Override
	public IBaseDao<Master> getDao() {
		return masterDao;
	}

}
