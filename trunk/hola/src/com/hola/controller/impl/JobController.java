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
import com.hola.pojo.impl.Job;
import com.hola.pojo.impl.Master;
import com.hola.service.impl.JobService;

/**
 * 招聘信息
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("job")
public class JobController extends BaseController {

	@Autowired
	private JobService jobService;

	/*
	 * 招聘信息 - 首页
	 */
	@RequestMapping
	public String index(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		DetachedCriteria criteria = DetachedCriteria.forClass(Job.class);
		try {
			int total = jobService.count(criteria);
			Page<Job> page = new Page<Job>(pageIndex, 15, total, "/job", 5,
					null);

			// 公告列表 - 15
			List<Job> jobs = jobService.findListByCriteria(criteria, 0, 15);
			model.addAttribute("page", page.setElements(jobs));

		} catch (BizException e) {
			e.printStackTrace();
		}
		return "job/job_index";
	}

	/*
	 * 公告 - 详细
	 */
	@RequestMapping("{id}")
	public String detail(Model model, @PathVariable String id) {
		try {
			if (StringUtils.isNumeric(id)) {
				int _id = Integer.parseInt(id);
				Job job = jobService.findByID(_id);
				model.addAttribute("job", job);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "job/job_detail";
	}

	/*
	 * 公告管理 - 列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		final DetachedCriteria criteria = DetachedCriteria.forClass(Job.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		try {
			int total = jobService.count(criteria);
			Page<Job> page = new Page<Job>(pageIndex, 30, total,
					"/messageGuest", 5, params);
			List<Job> jobs = jobService.findListByCriteria(criteria, 0, 30);
			model.addAttribute("page", page.setElements(jobs));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "job/job_list";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add() {
		return "job/job_add";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(HttpServletRequest request, Job job) {
		try {
			Master master = (Master) WebUtils.getSessionAttribute(request,
					"LOGIN_USER");
			job.setMasterId(master.getId());
			job.setTime(Calendar.getInstance().getTime());
			jobService.save(job);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/job/list";
	}

	/*
	 * 公告管理 - 删除
	 */
	@RequestMapping("del")
	public String del(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				jobService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/job/list";
	}
}