package com.nianmi.master.dao.impl;

import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsCitytopicReply;

@Repository
public class CitytopicReplyDao extends BaseDao<TsCitytopicReply> {

	public CitytopicReplyDao() {
		super(TsCitytopicReply.class);
	}

	public int countUnread(final Set<Integer> tids) {
		String hql = "select count(*) from TsCitytopicReply where isRead = 0";
		if (tids != null)
			hql += " and cityTopic.id in " + tids;
		return super.count(hql);
	}

	public Set<Integer> findUnreadTids(final Set<Integer> tids) {
		String hql = "select id from TsCitytopicReply where isRead = 0";
		if (tids != null) {
			String idsStr = tids.toString().replaceAll("\\[|\\]", "");
			hql += " and cityTopic.id in ("
					+ (idsStr.isEmpty() ? "''" : idsStr) + ")";
		}
		return super.findIds(hql);
	}
}
