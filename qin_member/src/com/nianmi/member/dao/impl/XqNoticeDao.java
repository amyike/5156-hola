package com.nianmi.member.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsXqNotice;

@Repository
public class XqNoticeDao extends BaseDao<TsXqNotice> {

	public XqNoticeDao() {
		super(TsXqNotice.class);
	}

	public List<TsXqNotice> find(final int xqid, final int pageFirst,
			final int pageSize) {
		Criteria criteria = super.getCriteria(pageFirst, pageSize);

		if (pageFirst > -1)
			criteria.setFirstResult(pageFirst);
		if (pageSize > -1)
			criteria.setMaxResults(pageSize);
		if (xqid > 0)
			criteria.add(Restrictions.eq("xqtable.xqId", xqid));

		return criteria.list();
	}

}
