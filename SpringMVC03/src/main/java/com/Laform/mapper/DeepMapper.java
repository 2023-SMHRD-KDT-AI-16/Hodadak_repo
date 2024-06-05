package com.Laform.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeepMapper {
	
	public int getDeepP(String deep_source);
	public int getDeepN(String deep_source);
}
