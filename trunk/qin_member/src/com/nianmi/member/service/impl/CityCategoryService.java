package com.nianmi.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.CityCategoryDao;
import com.nianmi.member.pojo.TsCityCategory;
import com.nianmi.member.service.BaseService;

@Service
@Transactional
public class CityCategoryService extends BaseService<TsCityCategory> {

	@Autowired
	private CityCategoryDao cityCategoryDao;

	@Override
	public IBaseDao<TsCityCategory> getDao() {
		return this.cityCategoryDao;
	}

}
