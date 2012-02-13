package com.nianmi.master.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.WeiboCommentDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsWeiboComment;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class WeiboCommentService extends BaseService<TsWeiboComment> {

	@Autowired
	private WeiboCommentDao weiboCommentDao;

	public List<TsWeiboComment> find(final int weiboId, final int type,
			final int pageFirst, final int pageSize) throws BizException {
		return weiboCommentDao.find(weiboId, type, pageFirst, pageSize);
	}

	@Override
	public IBaseDao<TsWeiboComment> getDao() {
		return this.weiboCommentDao;
	}

}
