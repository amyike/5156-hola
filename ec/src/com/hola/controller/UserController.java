package com.hola.controller;

import com.hola.Exception.BizException;
import com.hola.pojo.UserPojo;
import com.hola.service.UserService;

public class UserController extends BaseController {

	private UserService userService;

	public void index() {
		try {
			userService.find(new Integer(0));
			userService.delete(new Long(0));
			userService.update(new UserPojo());
			userService.create(new UserPojo());

		} catch (BizException e) {
			e.printStackTrace();
		}
	}
}
