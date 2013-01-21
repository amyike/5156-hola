package com.kaliry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaliry.dao.IBaseDao;
import com.kaliry.dao.impl.MasterDao;
import com.kaliry.pojo.impl.Master;
import com.kaliry.service.BaseService;

/**
 * 管理员信息管理 - Service
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MasterService extends BaseService<Integer, Master> {

	@Autowired
	private MasterDao masterDao;

	@Override
	public IBaseDao<Integer, Master> getDao() {
		return masterDao;
	}

}
