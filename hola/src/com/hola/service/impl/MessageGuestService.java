package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.MessageGuestDao;
import com.hola.pojo.impl.MessageGuest;
import com.hola.service.BaseService;

/**
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MessageGuestService extends BaseService<MessageGuest> {

	@Autowired
	private MessageGuestDao messageGuestDao;

	@Override
	public IBaseDao<MessageGuest> getDao() {
		return messageGuestDao;
	}

}
