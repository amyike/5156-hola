package com.nianmi.master.dao.impl;

import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsXqtopicReply;

@Repository
public class XqtopicReplyDao extends BaseDao<TsXqtopicReply> {

	public XqtopicReplyDao() {
		super(TsXqtopicReply.class);
	}

	public int countUnread(final Set<Integer> tids) {
		String hql = "select count(*) from TsXqtopicReply where isRead = 0";
		if (tids != null)
			hql += " and xqTopic.id in " + tids;
		return super.count(hql);
	}

	public Set<Integer> findUnreadTids(final Set<Integer> tids) {
		String hql = "select id from TsXqtopicReply where isRead = 0";
		if (tids == null || tids.isEmpty())
			return null;
		{
			String idsStr = tids.toString().replaceAll("\\[|\\]", "");
			hql += " and xqTopic.id in (" + (idsStr.isEmpty() ? "''" : idsStr)
					+ ")";
		}
		return super.findIds(hql);
	}
}
