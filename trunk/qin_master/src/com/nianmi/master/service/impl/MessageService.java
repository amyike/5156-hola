package com.nianmi.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.MessageDao;
import com.nianmi.master.pojo.TsMessage;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class MessageService extends BaseService<TsMessage> {

	@Autowired
	private MessageDao messageDao;

	@Override
	public IBaseDao<TsMessage> getDao() {
		return this.messageDao;
	}

}
