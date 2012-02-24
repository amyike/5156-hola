package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsInviteCause;

@Repository
public class InviteCauseDao extends BaseDao<TsInviteCause> {

	public InviteCauseDao() {
		super("ts_invite_cause", TsInviteCause.class);
	}

	@Override
	public void save(TsInviteCause pojo) throws BizException {

		getSqlSession().insert("addInviteCause", pojo);
	}
}
