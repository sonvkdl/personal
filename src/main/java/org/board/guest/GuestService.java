package org.board.guest;

import java.util.Map;

public interface GuestService {

	// 방명록
	// 작성
	int gb_insert(GuestVO vo);
	// 불러오기
	Map gb_list(GuestVO vo);
	// 글 총 갯수
	int gb_listCount(GuestVO vo);
	// 수정
	int gb_modify(GuestVO vo);
	// 삭제
	int gb_del(GuestVO vo);
}
