package com.nianmi.member.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsWeiboComment;

@Repository
public class WeiboCommentDao extends BaseDao<TsWeiboComment> {

	public WeiboCommentDao() {
		super(TsWeiboComment.class);
	}

	public List<TsWeiboComment> find(final int weiboId, final int type,
			final int pageFirst, final int pageSize) {
		Criteria criteria = getSession().createCriteria(TsWeiboComment.class);
		if (pageFirst > -1)
			criteria.setFirstResult(pageFirst);
		if (pageSize > -1)
			criteria.setMaxResults(pageSize);
		if (weiboId > 0)
			criteria.add(Restrictions.eq("weiboId", weiboId));
		if (type > -1)
			criteria.add(Restrictions.eq("type", type));
		return criteria.list();
	}

}
