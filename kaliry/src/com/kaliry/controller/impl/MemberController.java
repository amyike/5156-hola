package com.kaliry.controller.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.kaliry.common.Page;
import com.kaliry.controller.BaseController;
import com.kaliry.exception.BizException;
import com.kaliry.pojo.impl.Master;
import com.kaliry.pojo.impl.Member;
import com.kaliry.pojo.impl.RedeemRecord;
import com.kaliry.pojo.impl.TradeRecord;
import com.kaliry.service.impl.MemberService;

/**
 * 会员信息管理
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("member")
public class MemberController extends BaseController {

	@Autowired
	private MemberService memberService;

	@RequestMapping
	public String index(Model model, HttpServletRequest request,
			@RequestParam(defaultValue = "-1") int state,
			@RequestParam(required = false) Long cardno,
			@RequestParam(required = false) String idcard,
			@RequestParam(required = false) String company,
			@RequestParam(defaultValue = "1") int pageIndex) {

		// 分页参数
		Map<String, Object> params = new HashMap<String, Object>();
		//
		DetachedCriteria criteria = DetachedCriteria.forClass(Member.class);
		try {
			if (state == 1) {// 已激活
				params.put("state", state);
				criteria.add(Restrictions.eq("state", 1));
			} else if (state == 2) {// 已弃用
				params.put("state", state);
				criteria.add(Restrictions.eq("state", 2));
			} else if (state == 0) {// 查看10天前未激活的会员
				params.put("state", state);
				criteria.add(Restrictions.eq("state", 0));
			}

			// 搜索不限制 地区
			if (cardno != null || StringUtils.isNotBlank(idcard)) {
				// 搜索功能 - 会员卡号
				if (cardno != null) {
					params.put("cardno", cardno);
					criteria.add(Restrictions.eq("cardno", cardno));
				}
				// 搜索功能 - 身份证
				if (StringUtils.isNotBlank(idcard)) {
					params.put("idcard", idcard);
					criteria.add(Restrictions.eq("idcard", idcard));
				}
			} else {

				Master master = (Master) WebUtils.getSessionAttribute(request,
						"LOGIN_USER");

				// if (master.getAuthority() == 2) {// 高级管理员
				// criteria.add(Restrictions.eq("province",
				// master.getProvince()));
				// criteria.add(Restrictions.eq("city", master.getCity()));
				// } else
				if (master.getAuthority() == 3) {// 普通管理员
					criteria.add(Restrictions.eq("province",
							master.getProvince()));
					criteria.add(Restrictions.eq("city", master.getCity()));
					criteria.add(Restrictions.eq("company", master.getCompany()));
				}
			}

			// 搜索功能 - 分公司
			if (StringUtils.isNotBlank(company)) {
				company = new String(company.getBytes("ISO-8859-1"), "UTF-8");
				params.put("company", company);
				criteria.add(Restrictions.eq("company", company));
			}

			int total = memberService.count(criteria);
			Page<Member> page = new Page<Member>(pageIndex, 30, total,
					"/member", 5, params);

			List<Member> memberList = memberService.findListByCriteria(
					criteria, page.getFirst(), 30);
			model.addAttribute("page", page.setElements(memberList));
		} catch (BizException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "member/member_index";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		// 当前时间
		model.addAttribute("currentDate", new Date());
		// 生成编号
		model.addAttribute("serialNo", System.currentTimeMillis());

		return "member/member_add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Member member, String _applyTime, String _signTime,
			String _activateTime) {

		try {
			// Timestamp time = new Timestamp(System.currentTimeMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			Date time = new Date();
			member.setApplyTime(time);// 申请日期 - 默认当前
			member.setEntryTime(time);// 录入日期 - 默认当前

			// 填写了 申请日期
			if (StringUtils.isNotBlank(_applyTime)) {
				member.setApplyTime(sdf.parse(_applyTime));
			}

			// 填写了 签收日期
			if (StringUtils.isNotBlank(_signTime)) { // 填写了申请日期
				member.setSignTime(sdf.parse(_signTime));// 签收日期
			}

			// 填写了 激活生效时间
			if (StringUtils.isNotBlank(_activateTime)) { // 填写了激活生效时间
				member.setActivateTime(sdf.parse(_activateTime));// 激活生效时间
			}

			memberService.save(member);
		} catch (BizException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "redirect:/member/add";
	}

	/*
	 * 编辑
	 */
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String detail(Model model, int id) {
		try {
			Member member = memberService.findByID(id);
			model.addAttribute("member", member);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "member/member_edit";
	}

	/*
	 * 
	 */
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(Member member, String _applyTime, String _signTime,
			String _activateTime) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Member _member = memberService.findByID(member.getId());

			// 积分不变
			String[] ignoreProperties = { "credits" };
			// 复制对象
			BeanUtils.copyProperties(member, _member, ignoreProperties);

			// 修改 申请日期
			if (StringUtils.isNotBlank(_applyTime)) { // 填写了 申请日期
				_member.setApplyTime(sdf.parse(_applyTime));
			}
			// 修改 签收日期
			if (StringUtils.isNotBlank(_signTime)) { // 填写了 签收日期
				_member.setSignTime(sdf.parse(_signTime));
			}
			// 修改 会员卡生效日期
			if (StringUtils.isNotBlank(_activateTime)) { // 填写了 签收日期
				_member.setActivateTime(sdf.parse(_activateTime));
			}

			memberService.update(_member);
		} catch (BizException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "redirect:/member";
	}

	/*
	 * 修改状态
	 */
	@RequestMapping("updState")
	public String updState(int id, int state) {
		try {
			Member member = memberService.findByID(id);
			// 状态:1激活;2弃用
			if (state == 1) {
				member.setActivateTime(new Date());
			}
			member.setState(state);//
			memberService.update(member);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/member";
	}

	/*
	 * 修改积分
	 */
	@ResponseBody
	@RequestMapping("updCredits")
	public JSONObject updCredits(int memberId, int credits) {
		JSONObject json = new JSONObject();
		json.put("result", 0);
		json.put("msg", "积分修改失败！");
		if (credits < 0) {
			return json;
		}
		try {
			Member member = memberService.findByID(memberId);
			member.setCredits(credits);
			memberService.update(member);

			json.put("result", 1);
			json.put("msg", "积分修改成功！");
			return json;
		} catch (BizException e) {
			e.printStackTrace();
		}
		return json;
	}

	/*
	 * 删除
	 */
	@RequestMapping("del")
	public String del(int id) {
		try {
			memberService.deleteByID(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/member";
	}

	/*
	 * 检查身份证
	 */
	@ResponseBody
	@RequestMapping(value = "checkIdcard", method = RequestMethod.POST)
	public JSONObject checkIdcard(String idcard, Integer memberId) {
		JSONObject json = new JSONObject();
		json.put("result", 0);
		if (idcard == null) {
			return json;
		}
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Member.class);
			criteria.add(Restrictions.eq("idcard", idcard));
			if (memberId != null) {
				criteria.add(Restrictions.not(Restrictions.eq("id", memberId)));
			}
			Member member = memberService.findByCriteria(criteria);
			if (member != null) {
				json.put("result", 1);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return json;
	}

	/*
	 * 检查会员卡号
	 */
	@ResponseBody
	@RequestMapping(value = "checkCardno", method = RequestMethod.POST)
	public JSONObject checkCardno(Long cardno, Integer memberId) {
		JSONObject json = new JSONObject();
		json.put("result", 0);
		if (cardno == null) {
			return json;
		}
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Member.class);
			criteria.add(Restrictions.eq("cardno", cardno));
			if (memberId != null) {
				criteria.add(Restrictions.not(Restrictions.eq("id", memberId)));
			}
			Member member = memberService.findByCriteria(criteria);
			if (member != null) {
				json.put("result", 1);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return json;
	}

	/*
	 * 导出会员信息数据
	 */
	@RequestMapping("exportData")
	public void exportData(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam(defaultValue = "member") String type) {

		final DetachedCriteria criteria = DetachedCriteria
				.forClass(Member.class);

		Master master = (Master) WebUtils.getSessionAttribute(request,
				"LOGIN_USER");

		if (master.getAuthority() == 3) {// 普通管理员
			criteria.add(Restrictions.eq("province", master.getProvince()));
			criteria.add(Restrictions.eq("city", master.getCity()));
			criteria.add(Restrictions.eq("company", master.getCompany()));
		}

		try {
			int count = memberService.count(criteria);
			List<Member> memberList = memberService.findListByCriteria(
					criteria, 0, count);

			response.reset();
			response.setContentType("application/octet-stream;charset=GB2312");
			PrintWriter out = null;

			if ("tradeRecord".equals(type)) {

				response.setHeader("Content-disposition",
						"attachment; filename=tradeRecord.csv");
				out = response.getWriter();
				out.println("地区,会员卡号,会员名称,物品编号,物品名,数量,单价,金额,日期,交易类型,备注");
				for (Member member : memberList) {
					Set<TradeRecord> tradeRecords = member.getTradeRecords();
					for (TradeRecord tradeRecord : tradeRecords) {
						out.println(tradeRecord.toString());
						out.flush();
					}
				}
			} else if ("redeemRecord".equals(type)) {

				response.setHeader("Content-disposition",
						"attachment; filename=redeemRecord.csv");
				out = response.getWriter();
				out.println("会员卡号,会员名称,物品名,数量,日期,备注");
				for (Member member : memberList) {
					Set<RedeemRecord> redeemRecords = member.getRedeemRecords();
					for (RedeemRecord redeemRecord : redeemRecords) {
						out.println(redeemRecord.toString());
						out.flush();
					}
				}
			} else {

				response.setHeader("Content-disposition",
						"attachment; filename=member.csv");
				out = response.getWriter();
				out.println("申请表编号,会员卡号,姓名,联系方式,地区,送货地址,身份证,服务专员编号,服务专员姓名,受理人,录入日期,激活日期,激活/弃用,当前积分");
				for (Member member : memberList) {
					out.println(member.toString());
					out.flush();
				}
			}

			// 关闭连接资源
			out.close();
			out = null;
		} catch (BizException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}