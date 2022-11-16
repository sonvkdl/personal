package org.board.todo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TodoServiceImpl implements TodoService{

	@Autowired
	TodoMapper mapper;
	
	@Override
	public int insert(TodoVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public int check(TodoVO vo) {
		return mapper.check(vo);
	}

	@Override
	public Map list(TodoVO vo) {
		Map map = new HashMap();
		int totalCount = mapper.listCount(vo);
		List<TodoVO> list = mapper.list(vo);

		map.put("list", list);
		map.put("page", vo.getPage());
		map.put("chk", vo.getChk());
		return map;
	}

	@Override
	public int listCount(TodoVO vo) {
		return mapper.listCount(vo);
	}

	@Override
	public int modify(TodoVO vo) {
		return mapper.modify(vo);
	}

	@Override
	public int recheck(TodoVO vo) {
		return mapper.recheck(vo);
	}

	@Override
	public int delete(TodoVO vo) {
		return mapper.delete(vo);
	}
	
}
