package org.board.todo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TodoMapper {

	// 작성
	int insert(TodoVO vo);
	
	// 확인
	int check(TodoVO vo);
	
	// list 호출
	List<TodoVO> list(TodoVO vo);
	
	// 총 갯수
	int listCount(TodoVO vo);
	
	// 수정
	int modify(TodoVO vo);
	int recheck(TodoVO vo);
	
	// 삭제
	int delete(TodoVO vo);
	
}
