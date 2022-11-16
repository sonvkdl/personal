package org.board.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@GetMapping("/member/join.do")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("/member/join.do")
	public String join(MemberVO vo, Model model) {
		if (service.insert(vo) > 0) {
			model.addAttribute("msg", "회원가입되었습니다.");
			model.addAttribute("url", "login.do");
			return "common/alert";
		} else {
			model.addAttribute("msg", "회원가입에 실패했습니다.");
			return "common/alert";
		}
	}
	
	@GetMapping("/member/login.do")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/member/login.do")
	public String login(MemberVO vo, Model model, HttpSession sess) {
		if(service.login(vo, sess)) {
			model.addAttribute("msg", "로그인했습니다.");
			model.addAttribute("url","/personal/index.do");
			return "common/alert";
		} else {
			model.addAttribute("msg", "아이디/비번을 확인해주세요.");
			return "common/alert";
		}
	}
	
	@GetMapping("/member/idDupCheck.do")
	public void idDupCheck(@RequestParam String id, HttpServletResponse res) throws IOException {
		int count = service.idDupCheck(id);
		boolean r = false;
		if (count == 1) r = true;
		PrintWriter out = res.getWriter();
		out.print(r);
		out.flush();
	}
	@GetMapping("/member/emailDupCheck.do")
	public void emailDupCheck(@RequestParam String email, HttpServletResponse res) throws IOException {
		int count = service.emailDupCheck(email);
		boolean r = false;
		if (count == 1) r = true;
		PrintWriter out = res.getWriter();
		out.print(r);
		out.flush();
	}
	
	@GetMapping("/member/logout.do")
	public String logout(Model model, HttpSession sess) {
		if (sess.getAttribute("loginInfo") != null) {
			sess.removeAttribute("loginInfo");
		}
			model.addAttribute("msg", "로그아웃!");
			model.addAttribute("url", "/personal/index.do");
			return "common/alert";
	}
	
}
