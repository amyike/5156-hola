package com.nianmi.master.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.WeiboFollowDao;
import com.nianmi.master.pojo.TsWeiboFollow;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class WeiboFollowService extends BaseService<TsWeiboFollow> {

	@Autowired
	private WeiboFollowDao weiboFollowDao;

	public Set<Integer> findFoolowUidsByUid(int uid) {
		return weiboFollowDao.findFoolowUidsByUid(uid);
	}

	public int delete(int uid, int fid) {
		return weiboFollowDao.delete(uid, fid);
	}

	@Override
	public IBaseDao<TsWeiboFollow> getDao() {
		return this.weiboFollowDao;
	}
}
