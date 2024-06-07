package com.Laform.mapper;

import java.util.List;

import com.Laform.entity.tb_product;

public interface ProductMapper {
	
	//전체 제품 정보
	public List<tb_product> productList();
	
	//제품 정보 상세 
	public tb_product getProductDetail(int prod_idx);
}
