package com.nianmi.master.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsUserGroupLink;

@Repository
public class UserGroupLinkDao extends BaseDao<TsUserGroupLink> {

	public UserGroupLinkDao() {
		super(TsUserGroupLink.class);
	}

	public List<TsUserGroupLink> findByUid(final Serializable uid) {
		Criteria criteria = getSession().createCriteria(TsUserGroupLink.class);
		if (uid != null)
			criteria.add(Restrictions.eq("user.uid", uid));
		return criteria.list();
	}

	public boolean userIsGroup(int uid, int ugid) {
		String hql = "select userGorupLinkId from TsUserGroupLink where user.uid = "
				+ uid + " and userGroup.userGroupId = " + ugid;
		return !getHibernateTemplate().find(hql).isEmpty();
	}

}
