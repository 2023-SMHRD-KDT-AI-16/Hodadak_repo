package com.Laform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_review;
import com.Laform.mapper.ReviewMapper;

@RestController
public class ReviewRestController {
	//기업 데이터의 리뷰
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@GetMapping("getReviewP.do")
	public List<tb_review> getReviewP(int prod_idx){
		List<tb_review> list = reviewMapper.getReviewP(prod_idx);
		return list;
		
	}
	
	@GetMapping("getReviewN.do")
	public List<tb_review> getReviewN(int prod_idx){
		List<tb_review> list = reviewMapper.getReviewN(prod_idx);
		return list;
		
	}
	
	@GetMapping("getReview.do")
	public List<tb_review> getReview(int prod_idx){
		List<tb_review> list = reviewMapper.getReview(prod_idx);
		return list;
		
	}
	
}
