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
import com.hola.pojo.impl.MessageDirector;
import com.hola.service.impl.MessageDirectorService;

/**
 * 总监留言
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("messageDirector")
public class MessageDirectorController extends BaseController {

	@Autowired
	private MessageDirectorService messageDirectorService;

	/*
	 * 总监留言首页
	 */
	@RequestMapping
	public String index() {
		return "messageDirector/messageDirector_index";
	}

	/*
	 * 提交留言
	 */
	@RequestMapping(value = "submit", method = RequestMethod.POST)
	public String submit(MessageDirector messageDirector) {
		try {
			messageDirector.setTime(Calendar.getInstance().getTime());
			messageDirectorService.save(messageDirector);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/messageDirector";
	}

	/*
	 * 管理 - 列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex,
			@RequestParam(required = false) String tel,
			@RequestParam(required = false) String qq) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(MessageDirector.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		if (StringUtils.isNotBlank(tel)) {
			criteria.add(Restrictions.eq("tel", tel));
			params.put("tel", "tel");
		}
		if (StringUtils.isNotBlank(qq)) {
			params.put("qq", "qq");
			criteria.add(Restrictions.eq("qq", qq));
		}
		try {
			int total = messageDirectorService.count(criteria);
			Page<MessageDirector> page = new Page<MessageDirector>(pageIndex,
					30, total, "/messageDirector", 5, params);
			List<MessageDirector> messageDirectors = messageDirectorService
					.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(messageDirectors));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "messageDirector/messageDirector_list";
	}

	/*
	 * 管理 - 删除
	 */
	@RequestMapping("del")
	public String list(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				messageDirectorService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/messageDirector/list";
	}

}