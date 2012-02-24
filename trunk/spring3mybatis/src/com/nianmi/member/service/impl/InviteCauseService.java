package com.nianmi.member.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.InviteCauseDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsInviteCause;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class InviteCauseService extends BaseService<TsInviteCause> {

	@Autowired
	private InviteCauseDao inviteCauseDao;

	@Override
	public IBaseDao<TsInviteCause> getDao() {
		return this.inviteCauseDao;
	}

	@Override
	public TsInviteCause find(Serializable id) throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TsInviteCause> find(int pageFirst, int pageSize)
			throws BizException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TsInviteCause pojo) throws BizException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(TsInviteCause pojo) throws BizException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Serializable id) throws BizException {
		// TODO Auto-generated method stub

	}

}
