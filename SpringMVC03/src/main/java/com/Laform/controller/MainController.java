package com.Laform.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Laform.entity.tb_corperation;
import com.Laform.mapper.CorperationMapper;


@Controller
public class MainController {
	@Autowired
	private CorperationMapper corpMapper;
	
	@RequestMapping("/") //메인 화면 
	public String index(Model model) {
		List<tb_corperation> list = corpMapper.corpList();
		model.addAttribute("list",list);
		return "Main";
	}
	
	@PostMapping("/login.do") //로그인 
	public String login(String corp_key, RedirectAttributes rttr, HttpSession session) {
		
		//System.out.println("기업 로그인 키 : "+corp_key);
		
		//관리자일때 , 관리자 페이지로 이동
		if(corp_key.equals("admin")) {
			return "Manager";
		}
		
		tb_corperation login_corp =corpMapper.login(corp_key);

		
		if(login_corp == null) {
			// 로그인 실패
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "아이디와 비밀번호를 다시 입력해주세요.");
			return "redirect:/";
	}else {
		session.setAttribute("corp", login_corp);
		return "Dashboard";
	}
	
}
	


}

