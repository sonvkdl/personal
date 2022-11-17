package org.board.board;

import java.util.Map;

public interface BoardService {

	// 글쓰기
	int insert(BoardVO vo);
	
	// list
	Map list(BoardVO vo);
	
	// 글 총 갯수
	int listCount(BoardVO vo);
	
	// 글 상세보기 
	BoardVO view(int no);
	
	// 글 수정하기
	int update(BoardVO vo);
	
	// 글 삭제하기
	int del(BoardVO vo);
	
	// 조회수
	int viewcount(BoardVO vo);
}
