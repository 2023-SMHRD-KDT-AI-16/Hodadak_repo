package com.Laform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Laform.entity.tb_product;
import com.Laform.mapper.ProductMapper;

@Controller
public class ProductController {
	
	@Autowired
	private ProductMapper productMapper;

	@RequestMapping("productAnalysis.do")
	public String productAnalysis(Model model) {
		List<tb_product> prodList = productMapper.productList();
		//지금은 체크오 데이터만 있어서 파라미터 없이 모든 제품 받아옴. 추후 기업키 파라미터로 받기 
		//System.out.println(prodList.toString());
		model.addAttribute("prodList",prodList);
		return "productAnalysis";
	}
	
	@GetMapping("getProductDetail.do")
	@ResponseBody
	public tb_product getProductDetail (int prod_idx) {
		tb_product vo = productMapper.getProductDetail(prod_idx);
		return vo;
		}
}
