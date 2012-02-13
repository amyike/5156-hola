package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsCitytopicReply;

@Repository
public class TsCitytopicReplyDao extends BaseDao<TsCitytopicReply> {

	public TsCitytopicReplyDao() {
		super(TsCitytopicReply.class);
	}

}
