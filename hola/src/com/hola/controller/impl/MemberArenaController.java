package com.hola.controller.impl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hola.common.Page;
import com.hola.controller.BaseController;
import com.hola.exception.BizException;
import com.hola.pojo.impl.MemberArena;
import com.hola.service.impl.MemberArenaService;

/**
 * 场所嘉宾
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("memberArena")
public class MemberArenaController extends BaseController {

	@Autowired
	private MemberArenaService memberArenaService;

	/*
	 * 注册页面
	 */
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "memberArena/memberArena_register";
	}

	/*
	 * 注册
	 */
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(MemberArena memberArena) {
		try {
			memberArena.setTime(Calendar.getInstance().getTime());
			memberArenaService.save(memberArena);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/memberArena/register";
	}

	/*
	 * 管理列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex,
			@RequestParam(required = false) String tel,
			@RequestParam(required = false) String qq) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(MemberArena.class);

		// 分页参数
		Map<String, Object> params = new HashMap<String, Object>();
		if (StringUtils.isNotBlank(tel)) {
			criteria.add(Restrictions.eq("tel", tel));
			params.put("tel", tel);
		}
		if (StringUtils.isNotBlank(qq)) {
			params.put("qq", qq);
			criteria.add(Restrictions.eq("qq", qq));
		}
		try {
			int total = memberArenaService.count(criteria);
			Page<MemberArena> page = new Page<MemberArena>(pageIndex, 30,
					total, "/memberArena/list", 5, params);
			List<MemberArena> memberArenas = memberArenaService
					.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(memberArenas));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "memberArena/memberArena_list";
	}

	/*
	 * 管理 - 删除
	 */
	@RequestMapping("del")
	public String list(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				memberArenaService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/memberArena/list";
	}

}