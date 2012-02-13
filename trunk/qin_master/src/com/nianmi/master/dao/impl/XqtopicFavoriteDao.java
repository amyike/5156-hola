package com.nianmi.master.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsXqtopicFavorite;

@Repository
public class XqtopicFavoriteDao extends BaseDao<TsXqtopicFavorite> {

	public XqtopicFavoriteDao() {
		super(TsXqtopicFavorite.class);
	}

	public Set<Integer> findFavoriteTopicIdsByUid(int uid) {
		String hql = "select xqtopicid from TsXqtopicFavorite where uid = "
				+ uid;
		List<Integer> list = getHibernateTemplate().find(hql);
		if (list.isEmpty())
			return null;
		return new HashSet<Integer>(list);
	}

	public int delete(int uid, int tid) {
		String hql = "delete from TsXqtopicFavorite where uid = " + uid
				+ " and xqtopicid = " + tid;
		return super.executeUpdate(hql);
	}

}
