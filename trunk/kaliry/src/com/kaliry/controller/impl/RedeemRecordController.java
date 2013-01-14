package com.kaliry.controller.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.kaliry.pojo.impl.RedeemRecord;
import com.kaliry.service.impl.MemberService;
import com.kaliry.service.impl.RedeemRecordService;

/**
 * 兑换信息管理
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("redeemRecord")
public class RedeemRecordController extends BaseController {

	@Autowired
	private RedeemRecordService redeemRecordService;
	@Autowired
	private MemberService memberService;

	@RequestMapping
	public String index(Model model,
			@RequestParam(defaultValue = "0") int memberId,
			@RequestParam(defaultValue = "1") int pageIndex) {

		// 分页参数
		Map<String, Object> params = new HashMap<String, Object>();

		DetachedCriteria criteria = DetachedCriteria
				.forClass(RedeemRecord.class);
		try {
			if (memberId > 0) {
				params.put("memberId", memberId);

				criteria.add(Restrictions.eq("member.id", memberId));

				// 会员信息
				Member member = memberService.findByID(memberId);
				model.addAttribute("member", member);

				int total = redeemRecordService.count(criteria);
				Page<RedeemRecord> page = new Page<RedeemRecord>(pageIndex, 30,
						total, "/redeemRecord", 5, params);
				List<RedeemRecord> redeemRecordList = redeemRecordService
						.findListByCriteria(criteria, page.getFirst(), 30);
				model.addAttribute("page", page.setElements(redeemRecordList));
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redeemRecord/redeemRecord_index";
	}

	/*
	 * 添加 GET
	 */
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model, int memberId) {
		try {
			Member member = memberService.findByID(memberId);
			model.addAttribute("member", member);

			// 当前时间
			model.addAttribute("currentDate", new Date());
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redeemRecord/redeemRecord_add";
	}

	/*
	 * 添加 POST
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Model model, RedeemRecord redeemRecord, String _time) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdf.parse(_time);
			redeemRecord.setTime(date);

			if (redeemRecordService.save(redeemRecord) > 0) {
				// 兑换成功 减去会员积分 3000 * number
				Member member = memberService.findByID(redeemRecord.getMember()
						.getId());

				int curCredits = member.getCredits();
				int credits = 3000 * redeemRecord.getNumber();

				member.setCredits(curCredits > credits ? curCredits - credits
						: 0);
				memberService.update(member);
			}

		} catch (BizException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return String.format("redirect:/redeemRecord?memberId=%d", redeemRecord
				.getMember().getId());
	}

	/*
	 * 添加 GET
	 */
	@RequestMapping("del")
	public String del(int id, int memberId) {
		try {
			redeemRecordService.deleteByID(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return String.format("redirect:/redeemRecord?memberId=%d", memberId);
	}

}