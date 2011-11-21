package com.hola.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.hola.exception.BizException;
import com.hola.pojo.TsXqtable;

@Repository
public class CommunityDao extends HibernateDaoSupport implements
		IBaseDao<TsXqtable> {

	@Override
	public List<TsXqtable> find(final int pageIndex, final int pageSize) {
		Criteria criteria = getSession().createCriteria(TsXqtable.class);
		criteria.setFirstResult(pageIndex);
		criteria.setMaxResults(pageIndex);
		return criteria.list();
	}

	@Override
	public int count() {
		String hql = "select count(*) from UserInfo as user";
		return (Integer) getHibernateTemplate().find(hql).listIterator().next();
	}

	@Override
	public void create(final TsXqtable user) {
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(final TsXqtable user) {
		getHibernateTemplate().update(user);
	}

	@Override
	public TsXqtable find(Serializable id) throws BizException {
		return getHibernateTemplate().get(TsXqtable.class, id);
	}

	@Override
	public void delete(Serializable id) throws BizException {
		getHibernateTemplate().delete(find(id));
	}

}
