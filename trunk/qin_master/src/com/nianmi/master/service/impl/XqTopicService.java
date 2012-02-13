package com.nianmi.master.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.XqTopicDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsXqTopic;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class XqTopicService extends BaseService<TsXqTopic> {

	@Autowired
	private XqTopicDao xqTopicDao;

	public List<TsXqTopic> find(final int uid, final int xqid,
			final Set<Integer> tids, final Set<Integer> uids,
			final int pageFirst, final int pageSize) throws BizException {
		return xqTopicDao.find(uid, xqid, tids, uids, pageFirst, pageSize);
	}

	public Set<Integer> findTids(final int uid, final int xqid)
			throws BizException {
		return xqTopicDao.findTids(uid, xqid);
	}

	public int countNews(final int uid, final int xqid, final int maxId)
			throws BizException {
		return xqTopicDao.countNews(uid, xqid, maxId);
	}

	public int maxId() throws BizException {
		return xqTopicDao.maxId();
	}

	public int count(final int uid, final int xqid,
			final Set<Integer> topicIds, final Set<Integer> followUids)
			throws BizException {
		return xqTopicDao.count(uid, xqid, topicIds, followUids);
	}

	@Override
	public IBaseDao<TsXqTopic> getDao() {
		return this.xqTopicDao;
	}

}
