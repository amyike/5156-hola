package com.nianmi.master.dao.impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.nianmi.master.dao.BaseDao;
import com.nianmi.master.pojo.TsCitytopicFavorite;

@Repository
public class CityTopicFavoriteDao extends BaseDao<TsCitytopicFavorite> {

	public CityTopicFavoriteDao() {
		super(TsCitytopicFavorite.class);
	}

	public Set<Integer> findfavoriteTopicIdsByUid(int uid) {
		String hql = "select citytopicid from TsCitytopicFavorite where uid = "
				+ uid;
		return new HashSet(getHibernateTemplate().find(hql));
	}

	public int delete(int uid, int tid) {
		String hql = "delete from TsCitytopicFavorite where uid = " + uid
				+ " and citytopicid = " + tid;
		return getSession().createQuery(hql).executeUpdate();
	}

}
