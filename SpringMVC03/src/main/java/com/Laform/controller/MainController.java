package com.Laform.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Laform.entity.tb_corperation;
import com.Laform.mapper.CorperationMapper;

@Controller
public class MainController {
	@Autowired
	private CorperationMapper corpMapper;

	@RequestMapping("/") // 메인 화면
	public String index() {
		return "redirect:/main.do";
	}
	
	@RequestMapping("main.do") // 메인 화면
	public String main() {
		return "Main";
	}

	@RequestMapping("nonMembers.do") //비회원
	public String nonMember() {
		return "nonMembers";
	}
	
	@PostMapping("/login.do") // 로그인
	public String login(String corp_key, RedirectAttributes rttr, HttpSession session,Model model) {

		// System.out.println("기업 로그인 키 : "+corp_key);

		// 관리자일때 , 관리자 페이지로 이동
		if (corp_key.equals("admin")) {
			List<tb_corperation> list = corpMapper.corpList();
			model.addAttribute("list",list);
			return "Manager";
		}

		tb_corperation login_corp = corpMapper.login(corp_key);

		if (login_corp == null) {
			// 로그인 실패
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "아이디와 비밀번호를 다시 입력해주세요.");
			return "redirect:/main.do";
		} else {
			session.setAttribute("corp", login_corp);
			return "Dashboard";
		}

	}

	@GetMapping("logout.do") // 로그아웃
	public String logout(HttpSession session, RedirectAttributes rttr) {

		// session.removeAttribute("mem");
		session.invalidate();
		//System.out.println("로그아웃");
		return "redirect:/";
	}

	
	
	//기업 등록하기
	@PostMapping("/corpInsert")
	public String corpInsert(tb_corperation corp, Model model) {
		System.out.println(corp.toString());
		corpMapper.corpInsert(corp);
		List<tb_corperation> list = corpMapper.corpList();
		model.addAttribute("list",list);
		return "Manager";
	}

	
	
	
	
}
