package com.Laform.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Laform.entity.tb_corperation;


@Mapper
public interface CorperationMapper {
	
	public List<tb_corperation> corpList(); //기업 목록 출력
	
	public tb_corperation login(String corp_key); //기업코드로 로그인
	
	
	
}
