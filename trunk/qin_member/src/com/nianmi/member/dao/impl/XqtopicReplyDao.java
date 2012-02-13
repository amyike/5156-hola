package com.nianmi.member.dao.impl;

import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsXqtopicReply;

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

	public Set<Integer> findUnreadTids(final int uid) {
		if (uid <= 0)
			return null;
		String hql = "select distinct(xqTopic.id) from TsXqtopicReply where isRead = 0 and xqTopic.id in (select id from TsXqTopic where user.uid = "
				+ uid + ")";
		return super.findIds(hql);
	}
}
