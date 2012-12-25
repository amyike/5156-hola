package com.hola.controller.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hola.controller.BaseController;
import com.hola.exception.BizException;
import com.hola.pojo.impl.Experience;
import com.hola.pojo.impl.Job;
import com.hola.pojo.impl.Notice;
import com.hola.service.impl.ExperienceService;
import com.hola.service.impl.JobService;
import com.hola.service.impl.NoticeService;

/**
 * 首页
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("index")
public class IndexController extends BaseController {

	@Autowired
	private NoticeService noticeService;
	@Autowired
	private JobService jobService;
	@Autowired
	private ExperienceService experienceService;

	@RequestMapping
	public String index(Model model) {

		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Notice.class);
			// 本站公告 - 8
			List<Notice> notices = noticeService.findListByCriteria(criteria,
					0, 8);
			model.addAttribute("notices", notices);

			criteria = DetachedCriteria.forClass(Job.class);
			// 招聘信息 - 8
			List<Job> jobs = jobService.findListByCriteria(criteria, 0, 8);
			model.addAttribute("jobs", jobs);

			// 经验交流 - 8
			criteria = DetachedCriteria.forClass(Experience.class);
			List<Experience> experiences = experienceService
					.findListByCriteria(criteria, 0, 8);
			model.addAttribute("experiences", experiences);

		} catch (BizException e) {
			e.printStackTrace();
		}

		return "index/index";
	}

}