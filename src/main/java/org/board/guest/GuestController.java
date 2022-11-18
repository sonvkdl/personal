package org.board.guest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.PageMaker;

@Controller
public class GuestController {

	@Autowired
	GuestService service;
	
	@RequestMapping("/guest/guestbook.do")
	public String guestbook(GuestVO vo, Model model) {
		model.addAttribute("data", service.gb_list(vo));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(service.gb_listCount(vo));
		model.addAttribute("pageMaker",pageMaker);
		return "guest/guestbook";
	}
	
	@RequestMapping("/guest/gbinsert.do")
	public String gbinsert(GuestVO vo, Model model) {
		vo.setType("guestbook");
		if(service.gb_insert(vo)>0) {
			model.addAttribute("msg","방명록 작성 완료!");
			model.addAttribute("url","guestbook.do");
			
			return "common/alert";
		} else {
			model.addAttribute("msg", "방명록 작성 실패ㅠㅠ");	
			return "common/alert";
		}
		
	}
	
	@RequestMapping("/guest/gbmodify.do")
	public String gbmodify(GuestVO vo, Model model) {
		if(service.gb_modify(vo)>0) {
			model.addAttribute("msg","수정 완료!");
			model.addAttribute("url","guestbook.do");
			
			return "common/alert";
		} else {
			model.addAttribute("msg","수정 실패ㅠㅠ");
			return "common/alert";
		}
	}
	
	@RequestMapping("/guest/gbdel.do")
	public String gbdel(GuestVO vo, Model model) {
		if(service.gb_del(vo)>0) {
			model.addAttribute("msg","삭제 완료!");
			model.addAttribute("url","guestbook.do");
			
			return "common/alert";
		} else {
			model.addAttribute("msg","삭제 실패ㅠㅠ");
			return "common/alert";
		}
	}
	
}
