package com.nianmi.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.FeedbackDao;
import com.nianmi.master.pojo.TsFeedback;
import com.nianmi.master.service.BaseService;

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
