package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.InviteCause;

@Repository
public class InviteCauseDao extends BaseDao<InviteCause> {

	public InviteCauseDao() {
		super("ts_invite_cause", InviteCause.class);
	}

	@Override
	public void save(InviteCause pojo) throws BizException {
		getSqlSession().insert("insert", pojo);
	}

	@Override
	public InviteCause find(long id) throws BizException {
		return getSqlSession().selectOne("select", id);
	}

	@Override
	public void update(InviteCause pojo) throws BizException {
		getSqlSession().update("update", pojo);
	}

	@Override
	public void delete(long id) throws BizException {
		getSqlSession().delete("delete", id);
	}
}
