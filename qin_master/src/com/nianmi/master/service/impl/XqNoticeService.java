package com.nianmi.master.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.XqNoticeDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsXqNotice;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class XqNoticeService extends BaseService<TsXqNotice> {

	@Autowired
	private XqNoticeDao xqNoticeDao;

	public List<TsXqNotice> find(final int xqid, final int pageFirst,
			final int pageSize) throws BizException {
		return xqNoticeDao.find(xqid, pageFirst, pageSize);
	}

	@Override
	public IBaseDao<TsXqNotice> getDao() {
		return this.xqNoticeDao;
	}

}
