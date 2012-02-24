package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsInviteCause;

@Repository
public class InviteCauseDao extends BaseDao<TsInviteCause> {

	public InviteCauseDao() {
		super(TsInviteCause.class);
	}

}
