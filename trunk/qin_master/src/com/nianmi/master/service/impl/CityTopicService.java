package com.nianmi.master.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.CityTopicDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsCityTopic;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class CityTopicService extends BaseService<TsCityTopic> {

	@Autowired
	private CityTopicDao cityTopicDao;

	public Set<Integer> findTids(final int uid) throws BizException {
		return cityTopicDao.findTids(uid);
	}

	public int count(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int areaId, final int cateId,
			String keyword) throws BizException {
		return cityTopicDao.count(uid, tids, uids, areaId, cateId, keyword);
	}

	public List<TsCityTopic> find(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int areaId, final int cateId,
			String keyword, final int pageFirst, final int pageSize)
			throws BizException {
		return cityTopicDao.find(uid, tids, uids, areaId, cateId, keyword,
				pageFirst, pageSize);
	}

	public List<TsCityTopic> findByTopicIds(final Set<Integer> topicIds,
			final int pageFirst, final int pageSize) throws BizException {
		return cityTopicDao.findByTopicIds(topicIds, pageFirst, pageSize);
	}

	public List<TsCityTopic> findByUids(final Set<Integer> uids) {
		return cityTopicDao.findByUids(uids);
	}

	@Override
	public IBaseDao<TsCityTopic> getDao() {
		return cityTopicDao;
	}
}
