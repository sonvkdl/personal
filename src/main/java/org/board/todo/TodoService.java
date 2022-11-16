package org.board.todo;

import java.util.Map;

public interface TodoService {

	int insert(TodoVO vo);
	
	int check(TodoVO vo);
	
	Map list(TodoVO vo);
	
	int listCount(TodoVO vo);
	
	int modify(TodoVO vo);
	int recheck(TodoVO vo);
	
	int delete(TodoVO vo);
}
