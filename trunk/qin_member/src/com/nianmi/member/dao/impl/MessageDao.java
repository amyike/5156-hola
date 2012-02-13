package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsMessage;

@Repository
public class MessageDao extends BaseDao<TsMessage> {

	public MessageDao() {
		super(TsMessage.class);
	}

}
