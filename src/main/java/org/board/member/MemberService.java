package org.board.member;

import javax.servlet.http.HttpSession;

public interface MemberService {

	int insert(MemberVO vo);
	
	int idDupCheck(String id);
	int emailDupCheck(String email);

	boolean login(MemberVO vo, HttpSession sess);
}
