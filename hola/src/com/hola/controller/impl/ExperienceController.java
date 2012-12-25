package com.hola.controller.impl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import com.hola.common.Page;
import com.hola.controller.BaseController;
import com.hola.exception.BizException;
import com.hola.pojo.impl.Experience;
import com.hola.pojo.impl.Master;
import com.hola.service.impl.ExperienceService;

/**
 * 经验交流
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("experience")
public class ExperienceController extends BaseController {

	@Autowired
	private ExperienceService experienceService;

	/*
	 * 经验交流 - 首页
	 */
	@RequestMapping
	public String index(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		DetachedCriteria criteria = DetachedCriteria.forClass(Experience.class);
		try {

			int total = experienceService.count(criteria);
			Page<Experience> page = new Page<Experience>(pageIndex, 15, total,
					"/experience", 5, null);

			// 公告列表 - 15
			List<Experience> experiences = experienceService
					.findListByCriteria(criteria, 0, 15);
			model.addAttribute("page", page.setElements(experiences));

		} catch (BizException e) {
			e.printStackTrace();
		}
		return "experience/experience_index";
	}

	/*
	 * 公告 - 详细
	 */
	@RequestMapping("{id}")
	public String detail(Model model, @PathVariable String id) {
		try {
			if (StringUtils.isNumeric(id)) {
				int _id = Integer.parseInt(id);
				Experience experience = experienceService.findByID(_id);
				model.addAttribute("experience", experience);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "experience/experience_detail";
	}

	/*
	 * 公告管理 - 列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(Experience.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		try {
			int total = experienceService.count(criteria);
			Page<Experience> page = new Page<Experience>(pageIndex, 30, total,
					"/messageGuest", 5, params);
			List<Experience> experiences = experienceService
					.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(experiences));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "experience/experience_list";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add() {
		return "experience/experience_add";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(HttpServletRequest request, Experience experience) {
		try {
			Master master = (Master) WebUtils.getSessionAttribute(request,
					"LOGIN_USER");
			experience.setMasterId(master.getId());
			experience.setTime(Calendar.getInstance().getTime());
			experienceService.save(experience);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/experience/list";
	}

	/*
	 * 公告管理 - 删除
	 */
	@RequestMapping("del")
	public String del(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				experienceService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/experience/list";
	}
}