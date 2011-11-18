package com.hola.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hola.service.UserService;

@Controller
@RequestMapping("user")
public class UserController extends BaseController {

	private UserService userService;

	@RequestMapping(value = "/{id}")
	public void index() {
		try {
			// userService.find(new Integer(0));
			// userService.delete(new Long(0));
			// userService.update(new UserPojo());
			// userService.create(new UserPojo());
			System.out.println("hello world !!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
