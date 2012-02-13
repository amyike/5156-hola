package com.nianmi.master.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nianmi.master.common.Page;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsXqNotice;
import com.nianmi.master.pojo.TsXqTopic;
import com.nianmi.master.service.impl.XqNoticeService;
import com.nianmi.master.service.impl.XqTopicService;

/**
 * 小区
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("/community")
public class CommunityController extends BaseController {

	@Autowired
	private XqNoticeService xqNoticeService;
	@Autowired
	private XqTopicService xqTopicService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(Page<TsXqTopic> page, Model model) {
		try {
			int total = xqTopicService.count();
			if (total > 0) {
				page.rebuild(total, "community.form", 10);
				page.setElements(xqTopicService.find(page.getFirst(),
						page.getPageSize()));
				model.addAttribute("page", page);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "community/community_list";
	}

	@RequestMapping(value = "/bulletin", method = RequestMethod.GET)
	public String bulletin(Page<TsXqNotice> page, Model model) {
		try {
			int total = xqNoticeService.count();
			if (total > 0) {
				page.rebuild(total, "city.form", 10);
				page.setElements(xqNoticeService.find(page.getFirst(),
						page.getPageSize()));
				model.addAttribute("page", page);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "community/community_bulletin_list";
	}

	@RequestMapping(value = "/updType", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> updType(
			@RequestParam(defaultValue = "") String ids,
			@RequestParam(defaultValue = "0") int type) {
		Map<String, Object> map = new HashMap<>();
		try {
			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				TsXqTopic xqTopic = xqTopicService.find(new Integer(_id));
				xqTopic.setType(type);
				xqTopicService.update(xqTopic);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> delete(
			@RequestParam(defaultValue = "") String ids) {
		Map<String, Object> map = new HashMap<>();
		try {
			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				xqTopicService.delete(new Integer(_id));
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/bulletin/delete", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> deleteBulletin(
			@RequestParam(defaultValue = "") String ids) {
		Map<String, Object> map = new HashMap<>();
		try {
			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				xqNoticeService.delete(new Integer(_id));
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/bulletin/updType", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> updTypeBulletin(
			@RequestParam(defaultValue = "") String ids,
			@RequestParam(defaultValue = "0") int type) {
		Map<String, Object> map = new HashMap<>();
		try {
			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				TsXqTopic xqTopic = xqTopicService.find(new Integer(_id));
				xqTopic.setType(type);
				xqTopicService.update(xqTopic);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}