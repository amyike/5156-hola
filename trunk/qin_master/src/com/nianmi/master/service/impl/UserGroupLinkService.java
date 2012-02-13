package com.nianmi.master.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.UserGroupLinkDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsUserGroupLink;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class UserGroupLinkService extends BaseService<TsUserGroupLink> {

	@Autowired
	private UserGroupLinkDao userGroupLinkDao;

	public List<TsUserGroupLink> findByUid(final Serializable uid)
			throws BizException {
		return userGroupLinkDao.findByUid(uid);
	}

	public boolean userIsGroup(int uid, int ugid) throws BizException {
		return userGroupLinkDao.userIsGroup(uid, ugid);
	}

	@Override
	public IBaseDao<TsUserGroupLink> getDao() {
		return this.userGroupLinkDao;
	}
}
