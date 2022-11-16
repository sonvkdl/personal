package org.board.guest;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GuestMapper{

	// 방명록
	// 작성
	int insert(GuestVO vo);
	// 불러오기
	List<GuestVO> gb_list(GuestVO vo);
	// 글 총 갯수
	int gb_listCount(GuestVO vo);
	
}
