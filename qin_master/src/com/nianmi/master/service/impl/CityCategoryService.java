package com.nianmi.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.CityCategoryDao;
import com.nianmi.master.pojo.TsCityCategory;
import com.nianmi.master.service.BaseService;

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
