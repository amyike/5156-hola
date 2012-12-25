package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.MessageGuest;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class MessageGuestDao extends BaseDao<MessageGuest> {

	public MessageGuestDao() {
		super(MessageGuest.class);
	}

}
