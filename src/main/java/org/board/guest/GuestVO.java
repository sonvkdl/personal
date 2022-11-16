package org.board.guest;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import util.Criteria;

@Getter
@Setter
public class GuestVO extends Criteria{

	private int guest_no;
	private String content;
	private Timestamp regdate;
	private int member_no;
	private String type;
	private Timestamp isdelete;
	
	private String name;
	
}
