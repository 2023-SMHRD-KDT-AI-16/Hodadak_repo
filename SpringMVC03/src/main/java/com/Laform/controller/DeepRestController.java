package com.Laform.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_deep;
import com.Laform.mapper.DeepMapper;

@RestController()
public class DeepRestController {

	@Autowired
	private DeepMapper deepMapper;
	
	//카테고리별 긍정부정 
	@GetMapping("getDeepPN")
	public ArrayList<Integer> getDeepPN(String deep_source) {
		//System.out.println("긍정부정");
		int DeepP=deepMapper.getDeepP(deep_source); 
		int DeepN=deepMapper.getDeepN(deep_source); 
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(DeepP);
		list.add(DeepN);
		return list;
	}
	
	
	@GetMapping("getBest")
	public tb_deep getBest(String deep_source) {
		tb_deep vo = deepMapper.getBest(deep_source);
		System.out.println("vo:"+vo);
		return vo;
	}
	
	@GetMapping("getWorst")
	public tb_deep getWorst(String deep_source) {
		tb_deep vo = deepMapper.getWorst(deep_source);
		return vo;
	}
	
	@GetMapping("getDataSize")
	public int getDataSize(String deep_source) {
		int dataSize=deepMapper.getDataSize(deep_source);
		return dataSize;
	}
	
}
