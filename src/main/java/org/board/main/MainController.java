package org.board.main;

import org.board.board.BoardService;
import org.board.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.PageMaker;

@Controller
public class MainController {
		
	@Autowired
	BoardService bService;
	
	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/main/index.do")
	public String mainIndex(Model model, BoardVO vo) {
		vo.setPageRow(5);
		model.addAttribute("bdata", bService.list(vo));
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
