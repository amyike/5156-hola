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
import com.hola.pojo.impl.MessageGuest;
import com.hola.service.impl.MessageGuestService;

/**
 * 嘉宾留言
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("messageGuest")
public class MessageGuestController extends BaseController {

	@Autowired
	private MessageGuestService messageGuestService;

	/*
	 * 留言页面
	 */
	@RequestMapping
	public String index() {
		return "messageGuest/messageGuest_index";
	}

	/*
	 * 提交留言
	 */
	@RequestMapping(value = "submit", method = RequestMethod.POST)
	public String submit(MessageGuest messageGuest) {
		try {
			messageGuest.setTime(Calendar.getInstance().getTime());
			messageGuestService.save(messageGuest);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return String.format("redirect:/messageGuest");
	}

	/*
	 * 留言管理 - 列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex,
			@RequestParam(required = false) String tel,
			@RequestParam(required = false) String qq) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(MessageGuest.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		if (StringUtils.isNotBlank(tel)) {
			criteria.add(Restrictions.eq("tel", tel));
			params.put("tel", tel);
		}
		if (StringUtils.isNotBlank(qq)) {
			criteria.add(Restrictions.eq("qq", qq));
			params.put("qq", qq);
		}
		try {
			int total = messageGuestService.count(criteria);
			Page<MessageGuest> page = new Page<MessageGuest>(pageIndex, 30,
					total, "/messageGuest", 5, params);
			List<MessageGuest> messageGuests = messageGuestService
					.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(messageGuests));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "messageGuest/messageGuest_list";
	}

	/*
	 * 留言管理 - 删除
	 */
	@RequestMapping("del")
	public String del(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				messageGuestService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/messageGuest/list";
	}

}