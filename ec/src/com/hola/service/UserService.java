package com.hola.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hola.dao.UserDao;
import com.hola.pojo.User;

public class UserService implements IBaseService<Long, User> {
	@Autowired
	private UserDao userDao;

	@Override
	public User find(Long key) {
		return userDao.find(key);
	}

	@Override
	public List<User> find(int pageIndex, int pageSize) {
		return userDao.find(pageIndex, pageSize);
	}

	@Override
	public int count() {
		return userDao.count();
	}

	@Override
	public void create(User pojo) {
		userDao.create(pojo);
	}

	@Override
	public void update(User pojo) {
		userDao.update(pojo);
	}

	@Override
	public void delete(Long key) {
		userDao.delete(key);
	}

}
