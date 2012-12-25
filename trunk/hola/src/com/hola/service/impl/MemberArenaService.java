package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.MemberArenaDao;
import com.hola.pojo.impl.MemberArena;
import com.hola.service.BaseService;

/**
 * 表演嘉宾
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class MemberArenaService extends BaseService<MemberArena> {

	@Autowired
	private MemberArenaDao memberArenaDao;

	@Override
	public IBaseDao<MemberArena> getDao() {
		return memberArenaDao;
	}

}
