package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.Job;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class JobDao extends BaseDao<Job> {

	public JobDao() {
		super(Job.class);
	}

}
