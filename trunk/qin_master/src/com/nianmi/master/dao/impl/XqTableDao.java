package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsXqtable;

@Repository
public class XqTableDao extends BaseDao<TsXqtable> {

	public XqTableDao() {
		super(TsXqtable.class);
	}
}
