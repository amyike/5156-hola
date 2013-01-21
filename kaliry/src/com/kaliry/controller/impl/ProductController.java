package com.kaliry.controller.impl;

import net.sf.json.JSONObject;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kaliry.controller.BaseController;
import com.kaliry.exception.BizException;
import com.kaliry.pojo.impl.Product;
import com.kaliry.service.impl.ProductService;

/**
 * 产品
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("product")
public class ProductController extends BaseController {

	@Autowired
	private ProductService productService;

	@ResponseBody
	@RequestMapping("getProductById")
	public JSONObject getProductById(
			@RequestParam(required = false) Integer itemNo) {
		JSONObject json = new JSONObject();
		json.put("status", 0);
		try {

			if (itemNo != null) {
				final DetachedCriteria criteria = DetachedCriteria
						.forClass(Product.class);
				criteria.add(Restrictions.eq("number", itemNo));
				Product product = productService.findByCriteria(criteria);
				json.put("status", 1);
				json.put("data", product);
			}

		} catch (BizException e) {
			e.printStackTrace();
		}
		return json;
	}
}