package com.nianmi.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.member.dao.IBaseDao;
import com.nianmi.member.dao.impl.WeiboCommentDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsWeiboComment;
import com.nianmi.member.service.BaseService;

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
