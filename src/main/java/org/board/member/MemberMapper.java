package org.board.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

//	회원가입
	int insert(MemberVO vo);
	
//	중복체크
	int idDupCheck(String id);
	int emailDupCheck(String email);
	
	// 로그인
	MemberVO login(MemberVO vo);
	
}
