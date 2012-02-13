package com.nianmi.member.dao.impl;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsCityCategory;

@Repository
public class CityCategoryDao extends BaseDao<TsCityCategory> {

	public CityCategoryDao() {
		super(TsCityCategory.class);
	}

}
