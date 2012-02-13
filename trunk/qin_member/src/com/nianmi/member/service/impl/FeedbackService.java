package com.nianmi.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.FeedbackDao;
import com.nianmi.member.pojo.TsFeedback;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class FeedbackService extends BaseService<TsFeedback> {

	@Autowired
	private FeedbackDao feedbackDao;

	@Override
	public IBaseDao<TsFeedback> getDao() {
		return feedbackDao;
	}

}
