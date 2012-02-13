package com.nianmi.master.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nianmi.master.dao.IBaseDao;
import com.nianmi.master.dao.impl.UserDao;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsUser;
import com.nianmi.master.service.BaseService;

@Service
@Transactional
public class UserService extends BaseService<TsUser> {

	@Autowired
	private UserDao userDao;

	public List<TsUser> findByXqid(final int xqid, final int pageFirst,
			final int pageSize) throws BizException {
		return userDao.findByXqid(xqid, pageFirst, pageSize);
	}

	public int countByXqid(final int xqid) throws BizException {
		return userDao.countByXqid(xqid);
	}

	public TsUser login(String email, String pwd) throws BizException {
		return userDao.login(email, pwd);
	}

	@Override
	public IBaseDao<TsUser> getDao() {
		return userDao;
	}
}
