package com.nianmi.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.InviteCauseDao;
import com.nianmi.master.pojo.TsInviteCause;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class InviteCauseService extends BaseService<TsInviteCause> {

	@Autowired
	private InviteCauseDao inviteCauseDao;

	@Override
	public IBaseDao<TsInviteCause> getDao() {
		return this.inviteCauseDao;
	}

}
