package com.Laform.controller;

import java.util.ArrayList;

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
	
}
