package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsInviteCause;

@Repository
public class InviteCauseDao extends BaseDao<TsInviteCause> {

	public InviteCauseDao() {
		super(TsInviteCause.class);
	}
}
