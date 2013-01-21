package com.kaliry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaliry.dao.IBaseDao;
import com.kaliry.dao.impl.ProductDao;
import com.kaliry.pojo.impl.Product;
import com.kaliry.service.BaseService;

/**
 * 管理员信息管理 - Service
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class ProductService extends BaseService<Integer, Product> {

	@Autowired
	private ProductDao productDao;

	@Override
	public IBaseDao<Integer, Product> getDao() {
		return productDao;
	}

}
