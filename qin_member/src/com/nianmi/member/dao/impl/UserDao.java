package com.nianmi.member.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.pojo.TsXqTopic;

@Repository
public class UserDao extends BaseDao<TsUser> {

	public UserDao() {
		super(TsUser.class);
	}

	public List<TsUser> findByXqid(final int xqid, final int pageFirst,
			final int pageSize) {
		Criteria criteria = getSession().createCriteria(TsXqTopic.class);
		if (pageFirst > -1)
			criteria.setFirstResult(pageFirst);
		if (pageSize > -1)
			criteria.setMaxResults(pageSize);
		if (xqid > 0)
			criteria.add(Restrictions.eq("", xqid));
		return criteria.list();
	}

	public int countByXqid(final int xqid) {
		String hql = "select count(*) from TsUser where xqtable.xqId = ?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0, xqid);
		List list = query.list();
		return list == null ? null : ((Long) list.get(0)).intValue();
	}

	public TsUser login(String email, String pwd) {
		String hql = "from TsUser where email = ? and password = ?";
		Query query = getSession().createQuery(hql);
		query.setString(0, email);
		query.setString(1, pwd);
		List<TsUser> users = query.list();
		return users.isEmpty() ? null : users.get(0);
	}

}
