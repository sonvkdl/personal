package org.board.todo;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import util.Criteria;

@Getter
@Setter
public class TodoVO extends Criteria{

	private int todo_no;
	private String content;
	private int ischeck;
	private Timestamp regdate;
	private Timestamp checkdate;
	private int isdelete;
	
	// 완료, 미완료 구분
	private int chk;
	
	public TodoVO() {
		this.chk = 0;
	}
}
