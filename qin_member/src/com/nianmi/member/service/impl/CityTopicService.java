package com.nianmi.member.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.CityTopicDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsCityTopic;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class CityTopicService extends BaseService<TsCityTopic> {

	@Autowired
	private CityTopicDao cityTopicDao;

	public Set<Integer> findTids(final int uid) throws BizException {
		return cityTopicDao.findTids(uid);
	}

	public int count(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int cityid, final int cateId,
			String keyword) throws BizException {
		return cityTopicDao.count(uid, tids, uids, cityid, cateId, keyword);
	}

	public int maxId() throws BizException {
		return cityTopicDao.maxId();
	}

	public int countNews(final int uid, final int areaId, final int maxId)
			throws BizException {
		return cityTopicDao.countNews(uid, areaId, maxId);
	}

	public List<TsCityTopic> find(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int cityid, final int cateId,
			String keyword, final int pageFirst, final int pageSize)
			throws BizException {
		return cityTopicDao.find(uid, tids, uids, cityid, cateId, keyword,
				pageFirst, pageSize);
	}

	public List<TsCityTopic> findByTopicIds(final Set<Integer> topicIds,
			final int pageFirst, final int pageSize) throws BizException {
		return cityTopicDao.findByTopicIds(topicIds, pageFirst, pageSize);
	}

	public List<TsCityTopic> findByUids(final Set<Integer> uids) {
		return cityTopicDao.findByUids(uids);
	}

	public List<TsCityTopic> findByType(int type, int cateId,
			final int pageFirst, final int pageSize) throws BizException {
		return cityTopicDao.findByType(type, cateId, pageFirst, pageSize);
	}

	@Override
	public IBaseDao<TsCityTopic> getDao() {
		return cityTopicDao;
	}
}