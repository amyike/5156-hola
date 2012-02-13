package com.nianmi.master.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.CityTopicFavoriteDao;
import com.nianmi.master.pojo.TsCitytopicFavorite;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class CityTopicFavoriteService extends BaseService<TsCitytopicFavorite> {

	@Autowired
	private CityTopicFavoriteDao cityTopicFavoriteDao;

	public Set<Integer> findfavoriteTopicIdsByUid(int uid) {
		return cityTopicFavoriteDao.findfavoriteTopicIdsByUid(uid);
	}

	public int delete(int uid, int tid) {
		return cityTopicFavoriteDao.delete(uid, tid);
	}

	@Override
	public IBaseDao<TsCitytopicFavorite> getDao() {
		return cityTopicFavoriteDao;
	}
}
