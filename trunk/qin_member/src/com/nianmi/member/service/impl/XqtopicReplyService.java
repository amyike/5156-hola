package com.nianmi.member.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.XqtopicReplyDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsXqtopicReply;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class XqtopicReplyService extends BaseService<TsXqtopicReply> {

	@Autowired
	private XqtopicReplyDao xqtopicReplyDao;

	@Override
	public IBaseDao<TsXqtopicReply> getDao() {
		return this.xqtopicReplyDao;
	}

	public int countUnread(final Set<Integer> tids) throws BizException {
		return xqtopicReplyDao.countUnread(tids);
	}

	public Set<Integer> findUnreadTids(final int uid) throws BizException {
		return xqtopicReplyDao.findUnreadTids(uid);
	}
}
