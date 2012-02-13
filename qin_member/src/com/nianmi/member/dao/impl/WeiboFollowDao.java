package com.nianmi.member.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.member.dao.BaseDao;
import com.nianmi.member.pojo.TsWeiboFollow;

@Repository
public class WeiboFollowDao extends BaseDao<TsWeiboFollow> {

	public WeiboFollowDao() {
		super(TsWeiboFollow.class);
	}

	public Set<Integer> findFoolowUidsByUid(int uid) {
		String hql = "select fid from TsWeiboFollow where uid = " + uid;
		List<Integer> list = getHibernateTemplate().find(hql);
		if (list.isEmpty())
			return null;
		return new HashSet<Integer>(list);
	}

	public int delete(int uid, int fid) {
		String hql = "delete from TsWeiboFollow where uid = " + uid
				+ " and fid = " + fid;
		return super.executeUpdate(hql);
	}

}
