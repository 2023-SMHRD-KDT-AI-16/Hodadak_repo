package com.Laform.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.Laform.entity.tb_deep;

@Mapper
public interface DeepMapper {
	
	//긍정 단어 갯수
	public int getDeepP(String deep_source);
	
	//부정 단어 갯수
	public int getDeepN(String deep_source);
	
	//긍정 단어 top1
	public tb_deep getBest(String deep_source);
	
	//부정 단어 top1
	public tb_deep getWorst(String deep_source);
	
	//분석에 사용된 데이터 량
	public int getDataSize(String deep_source);
}
