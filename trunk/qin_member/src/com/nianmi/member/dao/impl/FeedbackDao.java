package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsFeedback;

@Repository
public class FeedbackDao extends BaseDao<TsFeedback> {

	public FeedbackDao() {
		super(TsFeedback.class);
	}

}
