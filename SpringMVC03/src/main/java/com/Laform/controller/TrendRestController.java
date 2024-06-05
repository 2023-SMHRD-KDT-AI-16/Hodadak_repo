package com.Laform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_trend;
import com.Laform.mapper.TrendMapper;

@RestController
public class TrendRestController {

	@Autowired
	private TrendMapper trendMapper;
	
	@GetMapping("trendList")
	@ResponseBody
	public List<tb_trend> trendList(){
		List<tb_trend> list = trendMapper.trendList();
		System.out.println(list.get(0));
		return list;
	}
	
}
