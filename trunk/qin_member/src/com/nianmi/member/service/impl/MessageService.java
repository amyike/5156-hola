package com.nianmi.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.MessageDao;
import com.nianmi.member.pojo.TsMessage;
import com.nianmi.member.service.BaseService;

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
