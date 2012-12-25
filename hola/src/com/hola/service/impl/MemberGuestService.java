package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.MemberGuestDao;
import com.hola.pojo.impl.MemberGuest;
import com.hola.service.BaseService;

/**
 * 嘉宾
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MemberGuestService extends BaseService<MemberGuest> {

	@Autowired
	private MemberGuestDao memberGuestDao;

	@Override
	public IBaseDao<MemberGuest> getDao() {
		return memberGuestDao;
	}

}
