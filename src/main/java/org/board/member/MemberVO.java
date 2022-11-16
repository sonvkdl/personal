package org.board.member;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private int member_no;
	private String name;
	private String id;
	private String pass;
	private String email;
	private String birthday;
	private Timestamp regdate;
	private Timestamp leavedate;
	private int visitcount;
	private int admin;
	
}
