package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.MessageDirector;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class MessageDirectorDao extends BaseDao<MessageDirector> {

	public MessageDirectorDao() {
		super(MessageDirector.class);
	}

}
