package com.Laform.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Laform.entity.tb_corperation;
import com.Laform.mapper.CorperationMapper;

@RestController
public class AdminRestController {

	@Autowired
	private CorperationMapper corpMapper;

	// 기업 전체보기
	@GetMapping("corpList.do")
    public ResponseEntity<Map<String, Object>> corpList(int pageNum) {
        List<tb_corperation> list = corpMapper.getCorpListWithPaging(pageNum);
        int total = corpMapper.corpList().size();

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("list", list);
        response.put("total", total);

        return ResponseEntity.ok(response); 
    }



	// 기업 상세보기
	@GetMapping("/{corp_key}") // board/{idx}
	public tb_corperation corpDetail(@PathVariable("corp_key") String corp_key) {
		tb_corperation corp = corpMapper.corpDetail(corp_key);
		return corp;
	}

	// 기업 삭제하기
	@DeleteMapping("/{corp_key}") // board/{idx}
	public void corpDelete(@PathVariable("corp_key") String corp_key) {
	//	System.out.println(corp_key);
		corpMapper.corpDelete(corp_key);
	}

	// 기업 수정하기
	@PutMapping("update")
	public void corpUpdate(@RequestBody tb_corperation corp) { // idx, title, content
		System.out.println(corp.toString());
		corpMapper.corpUpdate(corp);
	}
}
