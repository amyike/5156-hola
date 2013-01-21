package com.kaliry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaliry.dao.BaseDao;
import com.kaliry.dao.impl.RedeemRecordDao;
import com.kaliry.pojo.impl.RedeemRecord;
import com.kaliry.service.BaseService;

/**
 * 积分兑换记录管理 - Service
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class RedeemRecordService extends BaseService<Integer, RedeemRecord> {

	@Autowired
	private RedeemRecordDao recordDao;

	@Override
	public BaseDao<Integer, RedeemRecord> getDao() {
		return recordDao;
	}

}
