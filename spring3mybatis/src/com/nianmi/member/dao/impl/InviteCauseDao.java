package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsInviteCause2;

@Repository
public class InviteCauseDao extends BaseDao<TsInviteCause2> {

	public InviteCauseDao() {
		super("ts_invite_cause", TsInviteCause2.class);
	}

	@Override
	public void save(TsInviteCause2 pojo) throws BizException {

		getSqlSession().insert("addInviteCause", pojo);
	}
}
