package com.nianmi.member.dao.impl;

import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsCitytopicReply;

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

	public Set<Integer> findUnreadTids(final int uid) {
		if (uid <= 0)
			return null;
		String hql = "select distinct(cityTopic.id) from TsCitytopicReply where isRead = 0 and cityTopic.id in (select id from TsCityTopic where user.uid = "
				+ uid + ")";
		return super.findIds(hql);
	}
}
