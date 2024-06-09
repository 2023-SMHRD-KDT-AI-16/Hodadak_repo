package com.Laform.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Laform.entity.tb_review;
@Mapper
public interface ReviewMapper {
	
	public List<tb_review> getReviewP(int prod_idx);
	public List<tb_review> getReviewN(int prod_idx);
	public List<tb_review> getReview(int prod_idx);
}
