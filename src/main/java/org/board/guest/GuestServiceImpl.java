package org.board.guest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GuestServiceImpl implements GuestService{

	@Autowired
	GuestMapper mapper;
	
	@Override
	public int gb_insert(GuestVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public Map gb_list(GuestVO vo) {
		Map map = new HashMap<>();
		int totalCount = mapper.gb_listCount(vo);
		List<GuestVO> list = mapper.gb_list(vo);
		map.put("list", list);
		map.put("page", vo.getPage());
		
		return map;
	}

	@Override
	public int gb_listCount(GuestVO vo) {
		return mapper.gb_listCount(vo);
	}

	@Override
	public int gb_modify(GuestVO vo) {
		return mapper.gb_modify(vo);
	}

	@Override
	public int gb_del(GuestVO vo) {
		return mapper.gb_del(vo);
	}

}
