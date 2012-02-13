package com.nianmi.master.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsCityTopic;

@Repository
public class CityTopicDao extends BaseDao<TsCityTopic> {

	public CityTopicDao() {
		super(TsCityTopic.class);
	}

	public int count(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int areaId, final int cateId,
			String keyword) {
		String hql = "select count(*) from TsCityTopic where 1 = 1";
		if (uid > 0)
			hql += " and user.uid = " + uid;
		if (areaId > 0)
			hql += " and area.areaId = " + areaId;
		if (cateId > 0)
			hql += " and cityCategory.id = " + cateId;
		if (keyword != null && !keyword.isEmpty()) {
			hql += " and title like '%" + keyword + "%'";
		}
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

	public Set<Integer> findTids(final int uid) {
		String hql = "select id from TsCityTopic where 1 = 1";
		if (uid > 0)
			hql += " and user.uid = " + uid;
		return super.findIds(hql);
	}

	public List<TsCityTopic> find(final int uid, final Set<Integer> tids,
			final Set<Integer> uids, final int areaId, final int cateId,
			String keyword, final int pageFirst, final int pageSize) {
		Criteria criteria = super.getCriteria(pageFirst, pageSize);
		if (uid > 0)
			criteria.add(Restrictions.eq("user.uid", uid));
		if (areaId > 0)
			criteria.add(Restrictions.eq("area.areaId", areaId));
		if (cateId > 0)
			criteria.add(Restrictions.eq("cityCategory.id", cateId));
		if (keyword != null && !"".equals(keyword)) {
			criteria.add(Restrictions
					.like("title", keyword, MatchMode.ANYWHERE));
		}
		if (tids != null && !tids.isEmpty()) {
			criteria.add(Restrictions.in("id", tids));
		}
		if (uids != null && !uids.isEmpty()) {
			criteria.add(Restrictions.in("user.uid", uids));
		}
		criteria.addOrder(Order.desc("id"));
		return criteria.list();
	}

	public List<TsCityTopic> findByUids(final Set<Integer> uids) {
		Criteria criteria = getSession().createCriteria(TsCityTopic.class);
		if (uids == null || uids.isEmpty())
			return null;
		criteria.add(Restrictions.in("user.uid", uids));
		return criteria.list();
	}

	public List<TsCityTopic> findByTopicIds(final Set<Integer> topicIds,
			final int pageFirst, final int pageSize) {
		Criteria criteria = getSession().createCriteria(TsCityTopic.class);
		if (topicIds == null || topicIds.isEmpty())
			return null;
		criteria.add(Restrictions.in("id", topicIds));
		return criteria.list();
	}

}
