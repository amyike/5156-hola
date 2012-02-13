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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nianmi.master.common.Page;
import com.nianmi.master.exception.BizException;
import com.nianmi.master.pojo.TsCityTopic;
import com.nianmi.master.service.impl.CityCategoryService;
import com.nianmi.master.service.impl.CityTopicFavoriteService;
import com.nianmi.master.service.impl.CityTopicService;
import com.nianmi.master.service.impl.UserService;

/**
 * 同城
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/city")
public class CityController extends BaseController {

	@Autowired
	private UserService userService;
	@Autowired
	private CityTopicService cityTopicService;
	@Autowired
	private CityCategoryService cityCategoryService;
	@Autowired
	private CityTopicFavoriteService cityTopicFavoriteService;

	// 同城首页
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model, Page<TsCityTopic> page) {
		try {
			int total = cityTopicService.count();
			if (total > 0) {
				page.rebuild(total, "city.form", 10);
				page.setElements(cityTopicService.find(page.getFirst(),
						page.getPageSize()));
				model.addAttribute("page", page);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "city/cityinfo_list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> delete(
			@RequestParam(defaultValue = "") String ids) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (ids.isEmpty())
				return map;

			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				cityTopicService.delete(new Integer(_id));
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "updType", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> updType(
			@RequestParam(defaultValue = "") String ids,
			@RequestParam(defaultValue = "0") int type) {
		Map<String, Object> map = new HashMap<>();
		try {
			String[] _ids = ids.split(",");
			for (String _id : _ids) {
				TsCityTopic cityTopic = cityTopicService.find(new Integer(_id));
				cityTopic.setType(type);
				cityTopicService.update(cityTopic);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}