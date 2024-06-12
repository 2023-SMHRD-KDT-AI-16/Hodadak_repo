package com.Laform.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Laform.entity.tb_product;
import com.Laform.entity.tb_product_keyword;

@Mapper
public interface productKeywordMapper {
	
	public List<tb_product_keyword> getProductKeyword(int prod_idx);
	
	
}
