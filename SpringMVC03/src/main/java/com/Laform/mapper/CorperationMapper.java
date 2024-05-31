package com.Laform.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.Laform.entity.Criteria;
import com.Laform.entity.tb_corperation;



@Mapper
public interface CorperationMapper {

	
	public tb_corperation login(String corp_key); //기업코드로 로그인
	
	public List<tb_corperation> corpList(); //기업 목록 출력

	public tb_corperation corpDetail(String corp_key); //기업 정보 

	public void corpInsert(tb_corperation vo); //기업 추가 

	public void corpDelete(String corp_key); // 기업 삭제 

	public void corpUpdate(tb_corperation vo); //기업 정보 수정 

	public List<tb_corperation> getCorpListWithPaging(@Param("pageNum") int pageNum, @Param("amount") int amount);// 페이징을 포함한 기업 목록 출력
	
}
