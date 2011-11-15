package com.hola.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class BaseDao<T> extends HibernateDaoSupport implements
		IBaseDao<T> {
}
