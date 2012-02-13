package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsCitytopicReply;

@Repository
public class TsCitytopicReplyDao extends BaseDao<TsCitytopicReply> {

	public TsCitytopicReplyDao() {
		super(TsCitytopicReply.class);
	}

}
