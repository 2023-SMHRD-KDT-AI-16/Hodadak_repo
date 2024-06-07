package com.Laform.mapper;

import java.util.List;

import com.Laform.entity.tb_review;

public interface ReviewMapper {
	
	public List<tb_review> getReviewP(int prod_idx);
	public List<tb_review> getReviewN(int prod_idx);

}
