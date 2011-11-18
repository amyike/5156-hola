package com.hola.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hola.Exception.BizException;
import com.hola.dao.UserDao;
import com.hola.pojo.UserPojo;

public class UserService extends BaseService<UserPojo> {
	@Autowired
	private UserDao userDao;

	@Override
	public List<UserPojo> find(int pageIndex, int pageSize) {
		return userDao.find(pageIndex, pageSize);
	}

	@Override
	public int count() {
		return userDao.count();
	}

	@Override
	public void create(UserPojo user) {
		userDao.create(user);
	}

	@Override
	public void update(UserPojo user) {
		userDao.update(user);
	}

	@Override
	public UserPojo find(Serializable id) throws BizException {
		return userDao.find(id);
	}

	@Override
	public void delete(Serializable id) throws BizException {
		userDao.delete(id);
	}

}
