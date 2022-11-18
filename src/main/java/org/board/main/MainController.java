package org.board.main;

import org.board.board.BoardService;
import org.board.board.BoardVO;
import org.board.guest.GuestMapper;
import org.board.guest.GuestService;
import org.board.guest.GuestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.PageMaker;

@Controller
public class MainController {
		
	@Autowired
	BoardService bService;
	@Autowired
	GuestService gService;
	
	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/main/index.do")
	public String mainIndex(Model model, BoardVO bvo, GuestVO gvo) {
		bvo.setPageRow(5);
		gvo.setPageRow(5);
		model.addAttribute("bdata", bService.list(bvo));
		model.addAttribute("gdata", gService.gb_list(gvo));
		return "main/index";
	}
	
	@RequestMapping("/myinfo/index.do")
	public String myinfoIndex() {
		return "myinfo/index";
	}
	@RequestMapping("/myinfo/myinfo.do")
	public String myinfo() {
		return "myinfo/myinfo";
	}
	
}
