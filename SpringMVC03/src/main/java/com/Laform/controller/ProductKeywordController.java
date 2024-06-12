package com.Laform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_product_keyword;
import com.Laform.mapper.productKeywordMapper;

@RestController
public class ProductKeywordController {
	@Autowired
	private productKeywordMapper pkMapper;
	
	
	@GetMapping("getProductKeyword.do")
	public List<tb_product_keyword> getProductKeyword (int prod_idx) {
		List<tb_product_keyword>list = pkMapper.getProductKeyword(prod_idx);
		return list;
		}
	
	
}
