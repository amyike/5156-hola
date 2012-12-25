package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.MessageDirectorDao;
import com.hola.pojo.impl.MessageDirector;
import com.hola.service.BaseService;

/**
 * 表演嘉宾
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MessageDirectorService extends BaseService<MessageDirector> {

	@Autowired
	private MessageDirectorDao messageDirectorDao;

	@Override
	public IBaseDao<MessageDirector> getDao() {
		return messageDirectorDao;
	}

}
