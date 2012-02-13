package com.nianmi.master.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsCityCategory;

@Repository
public class CityCategoryDao extends BaseDao<TsCityCategory> {

	public CityCategoryDao() {
		super(TsCityCategory.class);
	}

}
