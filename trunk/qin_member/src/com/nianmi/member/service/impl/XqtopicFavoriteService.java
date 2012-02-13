package com.nianmi.member.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.XqtopicFavoriteDao;
import com.nianmi.member.pojo.TsXqtopicFavorite;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class XqtopicFavoriteService extends BaseService<TsXqtopicFavorite> {

	@Autowired
	private XqtopicFavoriteDao xqtopicFavoriteDao;

	public Set<Integer> findFavoriteTopicIdsByUid(int uid) {
		return xqtopicFavoriteDao.findFavoriteTopicIdsByUid(uid);
	}

	public int delete(int uid, int tid) {
		return xqtopicFavoriteDao.delete(uid, tid);
	}

	@Override
	public IBaseDao<TsXqtopicFavorite> getDao() {
		return this.xqtopicFavoriteDao;
	}

}
