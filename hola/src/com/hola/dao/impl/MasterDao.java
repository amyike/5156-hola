package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.Master;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class MasterDao extends BaseDao<Master> {

	public MasterDao() {
		super(Master.class);
	}

}
