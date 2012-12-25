package com.hola.controller.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.hola.common.MD5;
import com.hola.controller.BaseController;
import com.hola.exception.BizException;
import com.hola.pojo.impl.Master;
import com.hola.service.impl.MasterService;

/**
 * 登录
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("master")
public class MasterController extends BaseController {

	@Autowired
	private MasterService masterService;

	@RequestMapping
	public String index(Model model) {

		DetachedCriteria criteria = DetachedCriteria.forClass(Master.class);
		try {
			//
			List<Master> masterList = masterService.findListByCriteria(
					criteria, 0, 30);
			model.addAttribute("masterList", masterList);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "master/master_index";
	}

	/*
	 * 添加管理员
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Master.class);
		criteria.addOrder(Order.desc("id"));
		try {
			Master master = masterService.findListByCriteria(criteria, 0, 1)
					.get(0);
			model.addAttribute("master", new Master(master.getId() + 1, 3));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "master/master_add";
	}

	/*
	 * 添加管理员
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Master master) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Master.class);
			criteria.add(Restrictions.eq("account", master.getAccount()));
			// 不经存在
			if (masterService.findByCriteria(criteria) == null) {
				// 个人已弃用本方式
				// master.setTime(new Timestamp(System.currentTimeMillis()));
				master.setTime(new Date());
				master.setPassword(MD5.md5(master.getPassword()));
				masterService.save(master);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/master";
	}

	/*
	 * 检查是否存在
	 */
	@ResponseBody
	@RequestMapping(value = "checkExists", method = RequestMethod.POST)
	public JSONObject checkExists(String account) {
		JSONObject json = new JSONObject();
		json.put("result", 0);

		DetachedCriteria criteria = DetachedCriteria.forClass(Master.class);
		criteria.add(Restrictions.eq("account", account));
		try {
			Master master = masterService.findByCriteria(criteria);
			if (master != null) {
				json.put("result", 1);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return json;
	}

	/*
	 * 修改
	 */
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String edit(Model model, int id) {
		try {
			Master master = masterService.findByID(id);
			model.addAttribute("master", master);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "master/master_edit";
	}

	/*
	 * 修改管理员信息
	 */
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(HttpServletRequest request, Master master) {
		Master loginUser = (Master) WebUtils.getSessionAttribute(request,
				"LOGIN_USER");
		try {
			Master _master = masterService.findByID(master.getId());

			// 判断密码是否修改
			String newPwd = master.getPassword();
			if (StringUtils.isNotBlank(newPwd)) {
				newPwd = MD5.md5(newPwd);
				if (!newPwd.equals(_master.getPassword())) {
					_master.setPassword(newPwd);
				}
			}

			// 判断权限是否修改
			int authority = master.getAuthority();
			if (authority != _master.getAuthority()) {
				_master.setAuthority(authority);
			}
			masterService.update(_master);

			// 如果非系统管理员权限，即为修改自身密码
			if (loginUser.getAuthority() != 1) {
				// 修改自身密码后，需退出系统，重新登录
				return "redirect:/logout";
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/master";
	}

	/*
	 * 删除管理员
	 */
	@RequestMapping(value = "del")
	public String del(int id) {
		try {
			masterService.deleteByID(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/master";
	}

}