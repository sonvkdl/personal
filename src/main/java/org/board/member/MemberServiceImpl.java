package org.board.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper mapper;

	@Override
	public int insert(MemberVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public int idDupCheck(String id) {
		return mapper.idDupCheck(id);
	}

	@Override
	public int emailDupCheck(String email) {
		return mapper.emailDupCheck(email);
	}

	@Override
	public boolean login(MemberVO vo, HttpSession sess) {
		boolean temp = false;
		MemberVO loginInfo = mapper.login(vo);
		if (loginInfo != null) {
			temp = true;
			sess.setAttribute("loginInfo", loginInfo);
		}
		return temp;
	}
	
}
