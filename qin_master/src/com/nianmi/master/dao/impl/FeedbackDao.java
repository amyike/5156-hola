package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsFeedback;

@Repository
public class FeedbackDao extends BaseDao<TsFeedback> {

	public FeedbackDao() {
		super(TsFeedback.class);
	}

}
