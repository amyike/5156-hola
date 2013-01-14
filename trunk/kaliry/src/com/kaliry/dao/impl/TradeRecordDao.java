package com.kaliry.dao.impl;

import org.springframework.stereotype.Repository;

import com.kaliry.dao.BaseDao;
import com.kaliry.pojo.impl.TradeRecord;

/**
 * 交易记录信息管理 - DAO
 * 
 * @author kaliry
 * 
 */
@Repository
public class TradeRecordDao extends BaseDao<TradeRecord> {

	public TradeRecordDao() {
		super(TradeRecord.class);
	}

}
