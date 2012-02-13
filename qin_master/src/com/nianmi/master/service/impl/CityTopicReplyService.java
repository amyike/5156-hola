package com.nianmi.master.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.CitytopicReplyDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsCitytopicReply;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class CityTopicReplyService extends BaseService<TsCitytopicReply> {

	@Autowired
	private CitytopicReplyDao citytopicReplyDao;

	@Override
	public IBaseDao<TsCitytopicReply> getDao() {
		return citytopicReplyDao;
	}

	public int countUnread(final Set<Integer> tids) throws BizException {
		return citytopicReplyDao.countUnread(tids);
	}

	public Set<Integer> findUnreadTids(final Set<Integer> tids)
			throws BizException {
		return citytopicReplyDao.findUnreadTids(tids);
	}
}
