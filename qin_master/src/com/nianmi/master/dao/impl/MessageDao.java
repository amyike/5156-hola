package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsMessage;

@Repository
public class MessageDao extends BaseDao<TsMessage> {

	public MessageDao() {
		super(TsMessage.class);
	}

}
