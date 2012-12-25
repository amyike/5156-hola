package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.ExperienceDao;
import com.hola.pojo.impl.Experience;
import com.hola.service.BaseService;

/**
 * 
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class ExperienceService extends BaseService<Experience> {

	@Autowired
	private ExperienceDao experienceDao;

	@Override
	public IBaseDao<Experience> getDao() {
		return experienceDao;
	}

}
