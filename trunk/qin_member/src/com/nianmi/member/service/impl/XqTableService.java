package com.nianmi.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.XqTableDao;
import com.nianmi.member.pojo.TsXqtable;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class XqTableService extends BaseService<TsXqtable> {

	@Autowired
	private XqTableDao xqTableDao;

	@Override
	public IBaseDao<TsXqtable> getDao() {
		return this.xqTableDao;
	}
}
