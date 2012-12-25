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
import com.hola.pojo.impl.Master;
import com.hola.pojo.impl.Notice;
import com.hola.service.impl.NoticeService;

/**
 * 公告
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("notice")
public class NoticeController extends BaseController {

	@Autowired
	private NoticeService noticeService;

	/*
	 * 公告 - 首页
	 */
	@RequestMapping
	public String index(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		DetachedCriteria criteria = DetachedCriteria.forClass(Notice.class);
		try {

			int total = noticeService.count(criteria);
			Page<Notice> page = new Page<Notice>(pageIndex, 15, total,
					"/notice", 5, null);

			// 公告列表 - 15
			List<Notice> notices = noticeService.findListByCriteria(criteria,
					0, 15);
			model.addAttribute("page", page.setElements(notices));

		} catch (BizException e) {
			e.printStackTrace();
		}
		return "notice/notice_index";
	}

	/*
	 * 公告 - 详细
	 */
	@RequestMapping("{id}")
	public String detail(Model model, @PathVariable String id) {
		try {
			if (StringUtils.isNumeric(id)) {
				int _id = Integer.parseInt(id);
				Notice notice = noticeService.findByID(_id);
				model.addAttribute("notice", notice);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "notice/notice_detail";
	}

	/*
	 * 公告管理 - 列表
	 */
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1") int pageIndex) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(Notice.class);
		// 分页参数
		final Map<String, Object> params = new HashMap<String, Object>();
		try {
			int total = noticeService.count(criteria);
			Page<Notice> page = new Page<Notice>(pageIndex, 30, total,
					"/messageGuest", 5, params);
			List<Notice> notices = noticeService.findListByCriteria(criteria,
					0, 30);
			model.addAttribute("page", page.setElements(notices));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "notice/notice_list";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add() {
		return "notice/notice_add";
	}

	/*
	 * 公告管理 - 添加
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(HttpServletRequest request, Notice notice) {
		try {
			Master master = (Master) WebUtils.getSessionAttribute(request,
					"LOGIN_USER");
			notice.setMasterId(master.getId());
			notice.setTime(Calendar.getInstance().getTime());
			noticeService.save(notice);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/notice/list";
	}

	/*
	 * 公告管理 - 删除
	 */
	@RequestMapping("del")
	public String del(@RequestParam(required = false) Integer id) {
		try {
			if (id != null) {
				noticeService.deleteByID(id);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/notice/list";
	}
}