package com.kaliry.controller.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kaliry.common.Page;
import com.kaliry.controller.BaseController;
import com.kaliry.exception.BizException;
import com.kaliry.pojo.impl.Member;
import com.kaliry.pojo.impl.TradeRecord;
import com.kaliry.service.impl.MemberService;
import com.kaliry.service.impl.TradeRecordService;

/**
 * 购买信息管理
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("tradeRecord")
public class TradeRecordController extends BaseController {

	@Autowired
	private TradeRecordService tradeRecordService;
	@Autowired
	private MemberService memberService;

	@RequestMapping
	public String index(Model model,
			@RequestParam(defaultValue = "0") int memberId,
			@RequestParam(defaultValue = "0") int type,
			@RequestParam(defaultValue = "1") int pageIndex) {

		// 分页参数
		Map<String, Object> params = new HashMap<String, Object>();

		DetachedCriteria criteria = DetachedCriteria
				.forClass(TradeRecord.class);
		try {
			if (memberId > 0) {
				params.put("memberId", memberId);

				criteria.add(Restrictions.eq("member.id", memberId));
				// 查询会员信息
				Member member = memberService.findByID(memberId);
				model.addAttribute("member", member);

				// 类型
				if (type > 0) {
					criteria.add(Restrictions.eq("type", type));
				}

				int total = tradeRecordService.count(criteria);
				Page<TradeRecord> page = new Page<TradeRecord>(pageIndex, 30,
						total, "/tradeRecord", 5, params);
				List<TradeRecord> tradeRecordList = tradeRecordService
						.findListByCriteria(criteria, page.getFirst(), 30);
				model.addAttribute("page", page.setElements(tradeRecordList));

				// 统计总计金额
				int totalMoney = 0;
				for (TradeRecord tradeRecord : tradeRecordList) {
					// 1购买记录;2退货记录
					if (tradeRecord.getType() == 1) {
						totalMoney = totalMoney
								+ tradeRecord.getMoney().intValue();
					}
				}
				model.addAttribute("totalMoney", totalMoney);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "tradeRecord/tradeRecord_index";
	}

	/*
	 * 添加 GET
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model,
			@RequestParam(defaultValue = "0") int memberId,
			@RequestParam(defaultValue = "1") int type) {
		model.addAttribute("type", type);
		try {
			Member member = memberService.findByID(memberId);
			model.addAttribute("member", member);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "tradeRecord/tradeRecord_add";
	}

	/*
	 * 添加 POST
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Model model, TradeRecord tradeRecord, String _time) {
		try {
			// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			// Date date = sdf.parse(_time);
			tradeRecord.setTime(new Date());
			// 购物记录添加成功
			if (tradeRecordService.save(tradeRecord) > 0) {
				// 修改会员积分
				Member member = memberService.findByID(tradeRecord.getMember()
						.getId());

				// 累加积分
				member.setCredits(member.getCredits()
						+ tradeRecord.getMoney().intValue());

				memberService.update(member);
			}

		} catch (BizException e) {
			e.printStackTrace();
		}
		return String.format("redirect:/tradeRecord?memberId=%d", tradeRecord
				.getMember().getId());
	}

	/*
	 * 删除
	 */
	@RequestMapping(value = "del")
	public String del(Model model, int id, int memberId) {
		try {
			tradeRecordService.deleteByID(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return String.format("redirect:/tradeRecord?memberId=%d", memberId);
	}

	/*
	 * 修改类型
	 */
	@RequestMapping(value = "updType")
	public String updType(int id, int type, int memberId) {
		try {
			TradeRecord tradeRecord = tradeRecordService.findByID(id);
			// 修改类型为退货
			tradeRecord.setType(type);
			// 修改时间 为退货时间
			tradeRecord.setTime(new Date());
			// 修改为退货记录
			tradeRecordService.update(tradeRecord);
			if (type == 2) {// 退货
				// 修改会员积分
				Member member = memberService.findByID(memberId);

				int credits = member.getCredits();
				int money = tradeRecord.getMoney().intValue();
				member.setCredits(credits > money ? credits - money : 0);

				memberService.update(member);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		// 查看退货记录
		return String.format("redirect:/tradeRecord?type=1&memberId=%d",
				memberId);
	}

	/*
	 * 检查是否购有买记录
	 */
	// @ResponseBody
	// @RequestMapping(value = "checkTradeRecord", method = RequestMethod.POST)
	// public JSONObject checkIdcard(String idcard, Integer memberId) {
	// JSONObject json = new JSONObject();
	// json.put("result", 0);
	// if (idcard == null) {
	// return json;
	// }
	// try {
	// DetachedCriteria criteria = DetachedCriteria.forClass(Member.class);
	// criteria.add(Restrictions.eq("idcard", idcard));
	// if (memberId != null) {
	// criteria.add(Restrictions.not(Restrictions.eq("id", memberId)));
	// }
	// Member member = memberService.findByCriteria(criteria);
	// if (member != null) {
	// json.put("result", 1);
	// }
	// } catch (BizException e) {
	// e.printStackTrace();
	// }
	// return json;
	// }
}