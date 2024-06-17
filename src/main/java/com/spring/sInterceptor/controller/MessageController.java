package com.spring.sInterceptor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {

	@RequestMapping(value = "/message/{msgFlag}", method = RequestMethod.GET)
	public String getMessage(Model model,
			@PathVariable String msgFlag,
			@RequestParam(name="mid", defaultValue = "", required = false) String mid
			) {
		
		if(msgFlag.equals("loginOk")) {
			model.addAttribute("msg", mid + "님 로그인되었습니다.");
			model.addAttribute("url", "/member/memberMain");
		}
		else if(msgFlag.equals("loginNo")) {
			model.addAttribute("msg", "로그인 실패~~");
			model.addAttribute("url", "/member/login");
		}
		else if(msgFlag.equals("logout")) {
			model.addAttribute("msg", mid + "님 로그아웃 되었습니다.");
			model.addAttribute("url", "/member/login");
		}
		else if(msgFlag.equals("joinOk")) {
			model.addAttribute("msg", mid + "님 회원가입 되었습니다.");
			model.addAttribute("url", "/member/login");
		}
		else if(msgFlag.equals("memberUpdateOk")) {
			model.addAttribute("msg", mid + "님 회원정보가 변경되었습니다.");
			model.addAttribute("url", "/member/memberUpdate");
		}
		
		
		return "include/message";
	}
	
}
