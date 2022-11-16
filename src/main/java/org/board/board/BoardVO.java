package org.board.board;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import util.Criteria;

@Getter
@Setter
public class BoardVO extends Criteria{

	private int board_no;
	private String title;
	private String content;
	private Timestamp regdate;
	private int member_no;
	private int isprivate;
	private int viewcount;
	private Timestamp isdelete;
	
	private String name;
	
}
