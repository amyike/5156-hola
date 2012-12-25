package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.JobDao;
import com.hola.pojo.impl.Job;
import com.hola.service.BaseService;

/**
 * 
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class JobService extends BaseService<Job> {

	@Autowired
	private JobDao jobDao;

	@Override
	public IBaseDao<Job> getDao() {
		return jobDao;
	}

}
