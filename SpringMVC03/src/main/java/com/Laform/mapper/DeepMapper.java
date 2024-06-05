package com.Laform.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeepMapper {
	
	public int getDeepP();
	public int getDeepN();
}
