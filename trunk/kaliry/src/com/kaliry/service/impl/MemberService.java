package com.kaliry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaliry.dao.IBaseDao;
import com.kaliry.dao.impl.MemberDao;
import com.kaliry.pojo.impl.Member;
import com.kaliry.service.BaseService;

/**
 * 管理员信息管理 - Service
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MemberService extends BaseService<Member> {

	@Autowired
	private MemberDao memberDao;

	@Override
	public IBaseDao<Member> getDao() {
		return memberDao;
	}

}
