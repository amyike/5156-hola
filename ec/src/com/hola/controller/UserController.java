package com.hola.controller;

import javax.persistence.EntityManager;

import com.hola.Exception.BizException;
import com.hola.pojo.User;
import com.hola.service.UserService;

public class UserController {

	private UserService userService;

	public void index() {
		try {
			userService.find(new Integer(0));
			userService.delete(new Long(0));
			userService.update(new User());
			userService.create(new User());

			EntityManager entityManager;

		} catch (BizException e) {
			e.printStackTrace();
		}
	}
}
