package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsXqtable;

@Repository
public class XqTableDao extends BaseDao<TsXqtable> {

	public XqTableDao() {
		super(TsXqtable.class);
	}
}
