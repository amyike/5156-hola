package com.nianmi.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.XqNoticeDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsXqNotice;
import com.nianmi.member.service.BaseService;

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
