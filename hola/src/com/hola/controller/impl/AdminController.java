package com.hola.controller.impl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hola.controller.BaseController;

/**
 * 系统管理
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("admin")
public class AdminController extends BaseController {

	@RequestMapping
	public String index() {
		return "admin/admin_index";
	}

	/*
	 * 左边操作菜单
	 */
	@RequestMapping("menu")
	public String menu() {
		return "admin/admin_menu";
	}
}