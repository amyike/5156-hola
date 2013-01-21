package com.kaliry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaliry.dao.IBaseDao;
import com.kaliry.dao.impl.TradeRecordDao;
import com.kaliry.pojo.impl.TradeRecord;
import com.kaliry.service.BaseService;

/**
 * 交易记录管理 - Service
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class TradeRecordService extends BaseService<Integer, TradeRecord> {

	@Autowired
	private TradeRecordDao tradeRecordDao;

	@Override
	public IBaseDao<Integer, TradeRecord> getDao() {
		return tradeRecordDao;
	}

}
