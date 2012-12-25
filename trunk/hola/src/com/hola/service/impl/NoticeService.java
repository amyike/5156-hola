package com.hola.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hola.dao.IBaseDao;
import com.hola.dao.impl.NoticeDao;
import com.hola.pojo.impl.Notice;
import com.hola.service.BaseService;

/**
 * 
 * 
 * @author yike
 * 
 */
@Service
@Transactional
public class NoticeService extends BaseService<Notice> {

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public IBaseDao<Notice> getDao() {
		return noticeDao;
	}

}
