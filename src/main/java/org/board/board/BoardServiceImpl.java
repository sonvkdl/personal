package org.board.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper mapper;
	
	@Override
	public int insert(BoardVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public Map list(BoardVO vo) {
		Map map = new HashMap<>();
		int totalCount = mapper.listCount(vo);
		List<BoardVO> list = mapper.list(vo);
		map.put("list", list);
		map.put("page", vo.getPage());
		return map;
	}

	@Override
	public int listCount(BoardVO vo) {
		return mapper.listCount(vo);
	}

	@Override
	public BoardVO view(int no) {
		return mapper.view(no);
	}

	@Override
	public int update(BoardVO vo) {
		return mapper.update(vo);
	}

	@Override
	public int del(BoardVO vo) {
		return mapper.del(vo);
	}

	@Override
	public int viewcount(BoardVO vo) {
		return mapper.viewcount(vo);
	}
}
