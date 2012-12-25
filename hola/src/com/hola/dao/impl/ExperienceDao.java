package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.Experience;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class ExperienceDao extends BaseDao<Experience> {

	public ExperienceDao() {
		super(Experience.class);
	}

}
