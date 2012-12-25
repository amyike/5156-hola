package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.MemberArena;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class MemberArenaDao extends BaseDao<MemberArena> {

	public MemberArenaDao() {
		super(MemberArena.class);
	}

}
