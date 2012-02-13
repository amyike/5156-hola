package com.nianmi.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.XqTableDao;
import com.nianmi.master.pojo.TsXqtable;
import com.nianmi.master.service.BaseService;

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
