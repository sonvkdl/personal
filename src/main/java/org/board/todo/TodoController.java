package org.board.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import util.PageMaker;

@Controller
public class TodoController {

	@Autowired
	TodoService service;
	
	@GetMapping("/todo/todolist.do")
	public String todolist() {
		
		return "todo/todolist";
	}

	@RequestMapping("/todo/list.do")
	public String list(TodoVO vo, Model model) {
		model.addAttribute("data", service.list(vo));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(service.listCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		return "todo/list";
	}
	
	@PostMapping("/todo/save.do")
	public String save(TodoVO vo) {
		service.insert(vo);
		return "todo/todolist";
	}
	
	@PostMapping("/todo/check.do")
	public String check(TodoVO vo) {
		service.check(vo);
		return "todo/todolist";
	}
	
	@PostMapping("/todo/modify.do")
	public String modify(TodoVO vo, Model model) {
		model.addAttribute("result", service.modify(vo));
		return "common/result";
	}
	
	@PostMapping("/todo/recheck.do")
	public String recheck(TodoVO vo) {
		service.recheck(vo);
		return "todo/todolist";
	}
	
	@PostMapping("/todo/delete.do")
	public String delete(TodoVO vo, Model model) {
		model.addAttribute("result", service.delete(vo));
		return "common/result";
	}
	
}
