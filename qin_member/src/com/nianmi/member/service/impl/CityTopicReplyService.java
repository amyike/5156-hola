package com.nianmi.member.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.CitytopicReplyDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsCitytopicReply;
import com.nianmi.member.service.BaseService;

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

	public Set<Integer> findUnreadTids(final int uid) throws BizException {
		return citytopicReplyDao.findUnreadTids(uid);
	}
}
