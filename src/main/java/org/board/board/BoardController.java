package org.board.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import util.PageMaker;

@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@GetMapping("/board/list.do")
	public String list(BoardVO vo, Model model) {
		model.addAttribute("data", service.list(vo));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(service.listCount(vo));
		model.addAttribute("pageMaker",pageMaker);
		return "board/list";
	}
	
	@GetMapping("/board/write.do")
	public String write() {
		return "board/write";
	}
	
	@PostMapping("/board/write.do")
	public String write(BoardVO vo, Model model) {
		if(service.insert(vo)>0) {
			model.addAttribute("msg", "글작성 성공!");
			model.addAttribute("url", "list.do");
			
			return "common/alert";
		} else {
			model.addAttribute("msg", "글작성 실패ㅠ");
			
			return "common/alert";
		}
	}
	
	@GetMapping("/board/view.do")
	public String view(BoardVO vo, Model model) {
		BoardVO data = service.view(vo.getBoard_no());
		model.addAttribute("data", data);
		return "board/view";
	}
	
	@GetMapping("/board/modify.do")
	public String modify(BoardVO vo, Model model) {
		BoardVO data = service.view(vo.getBoard_no());
		model.addAttribute("data",data);
		return "board/modify";
	}
	
	@PostMapping("/board/update.do")
	public String update(BoardVO vo, Model model) {
		if (service.update(vo) > 0) {
			String url = "view.do?board_no="+vo.getBoard_no();
			model.addAttribute("msg", "글 수정완료!");
			model.addAttribute("url", url);
			return "common/alert";
		} else {
			model.addAttribute("msg", "글 수정실패ㅠ");
			return "common/alert";
		}
	}
	
	@GetMapping("/board/del.do")
	public String del(BoardVO vo, Model model) {
		if (service.del(vo) > 0) {
			model.addAttribute("msg", "글 삭제완료!");
			model.addAttribute("url", "list.do");
			return "common/alert";
		} else {
			model.addAttribute("msg", "글 삭제실패ㅠ");
			return "common/alert";
		}
	}
}
