package com.nianmi.master.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.XqtopicReplyDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsXqtopicReply;
import com.nianmi.master.service.BaseService;

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

	public Set<Integer> findUnreadTids(final Set<Integer> tids)
			throws BizException {
		return xqtopicReplyDao.findUnreadTids(tids);
	}
}
