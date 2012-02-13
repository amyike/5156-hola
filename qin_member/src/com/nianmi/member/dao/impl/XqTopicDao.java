package com.nianmi.member.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsXqTopic;

@Repository
public class XqTopicDao extends BaseDao<TsXqTopic> {

	public XqTopicDao() {
		super(TsXqTopic.class);
	}

	public int maxId() {
		String hql = "select id from TsXqTopic order by id desc limit 1";
		return super.findtId(hql);
	}

	/**
	 * 根据 ID Set 查询
	 * 
	 * @param id
	 * @return
	 * @throws BizException
	 */
	public List<TsXqTopic> find(final Set<Integer> ids) throws BizException {
		return getCriteria().add(Restrictions.in("id", ids)).list();
	}

	public int countNews(final int uid, final int xqid, final int maxId) {
		String hql = "select count(*) from TsXqTopic where 1 = 1";
		if (uid > 0)
			hql += " and user.uid = " + uid;
		if (xqid > 0)
			hql += " and xqtable.xqId = " + xqid;
		if (maxId > 0)
			hql += " and id > " + maxId;
		return super.count(hql);
	}

	public int count(final int uid, final int xqid, final Set<Integer> tids,
			final Set<Integer> uids) {
		String hql = "select count(*) from TsXqTopic where 1 = 1";
		if (uid > 0)
			hql += " and user.uid = " + uid;
		if (xqid > 0)
			hql += " and xqtable.xqId = " + xqid;
		if (tids != null) {
			String idsStr = tids.toString().replaceAll("\\[|\\]", "");
			hql += " and id in (" + (idsStr.isEmpty() ? "''" : idsStr) + ")";
		}
		if (uids != null) {
			String idsStr = uids.toString().replaceAll("\\[|\\]", "");
			hql += " and user.uid in (" + (idsStr.isEmpty() ? "''" : idsStr)
					+ ")";
		}
		return super.count(hql);
	}

	public Set<Integer> findTids(final int uid, final int xqid) {
		String hql = "select id from TsXqTopic where 1 = 1";
		if (uid > 0)
			hql += " and user.uid = " + uid;
		if (xqid > 0)
			hql += " and xqtable.xqId = " + xqid;
		return super.findIds(hql);
	}

	public List<TsXqTopic> find(final int uid, final int xqid,
			final Set<Integer> topicIds, final Set<Integer> followUids,
			final int pageFirst, final int pageSize) {
		Criteria criteria = super.getCriteria(pageFirst, pageSize);
		criteria.addOrder(Order.desc("id"));
		if (uid > 0)
			criteria.add(Restrictions.eq("user.uid", uid));
		if (xqid > 0)
			criteria.add(Restrictions.eq("xqtable.xqId", xqid));
		if (topicIds != null)
			criteria.add(Restrictions.in("id", topicIds));
		if (followUids != null)
			criteria.add(Restrictions.in("user.uid", followUids));
		return criteria.list();
	}
}