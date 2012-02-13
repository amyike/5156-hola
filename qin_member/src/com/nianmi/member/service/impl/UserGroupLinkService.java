package com.nianmi.member.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.UserGroupLinkDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsUserGroupLink;
import com.nianmi.member.service.BaseService;

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
