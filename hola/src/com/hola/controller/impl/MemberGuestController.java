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
import com.hola.pojo.impl.MemberGuest;
import com.hola.service.impl.MemberGuestService;

/**
 * 嘉宾会员
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("memberGuest")
public class MemberGuestController extends BaseController {

	@Autowired
	private MemberGuestService memberGuestService;

	/*
	 * 注册页面
	 */
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "memberGuest/memberGuest_register";
	}

	/*
	 * 注册
	 */
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(MemberGuest memberGuest) {
		try {
			memberGuest.setTime(Calendar.getInstance().getTime());
			memberGuestService.save(memberGuest);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/memberGuest/register";
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
				.forClass(MemberGuest.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		if (StringUtils.isNotBlank(tel)) {
			criteria.add(Restrictions.eq("tel", tel));
			params.put("tel", tel);
		}
		if (StringUtils.isNotBlank(qq)) {
			params.put("qq", qq);
			criteria.add(Restrictions.eq("qq", qq));
		}
		try {
			int total = memberGuestService.count(criteria);
			Page<MemberGuest> page = new Page<MemberGuest>(pageIndex, 30,
					total, "/memberGuest/list", 5, params);
			List<MemberGuest> messageGuests = memberGuestService
					.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(messageGuests));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "memberGuest/memberGuest_list";
	}

	/*
	 * 管理 - 删除
	 */
	@RequestMapping("del")
	public String list(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				memberGuestService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/memberGuest/list";
	}
}