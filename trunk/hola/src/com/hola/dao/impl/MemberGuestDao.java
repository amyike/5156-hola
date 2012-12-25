package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.MemberGuest;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class MemberGuestDao extends BaseDao<MemberGuest> {

	public MemberGuestDao() {
		super(MemberGuest.class);
	}

}
