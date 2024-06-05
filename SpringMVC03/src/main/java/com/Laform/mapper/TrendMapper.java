package com.Laform.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Laform.entity.tb_trend;

@Mapper
public interface TrendMapper {
	
	public List<tb_trend> trendList();
	
}
