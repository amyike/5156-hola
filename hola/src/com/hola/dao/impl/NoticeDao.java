package com.hola.dao.impl;

import org.springframework.stereotype.Repository;

import com.hola.dao.BaseDao;
import com.hola.pojo.impl.Notice;

/**
 * 
 * @author yike
 * 
 */
@Repository
public class NoticeDao extends BaseDao<Notice> {

	public NoticeDao() {
		super(Notice.class);
	}

}
