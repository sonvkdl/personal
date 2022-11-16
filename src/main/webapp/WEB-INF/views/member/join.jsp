<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %> 회원가입</title>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<script>

</script>
<body>
    
	<div class="sub">
	    <div class="size">
	        <h3 class="sub_title">회원가입</h3>
	        <p style="float: right; color:red;">' * ' 는 필수 입력 항목입니다.</p>
	        <form name="frm" id="frm" action="join.do" method="post">
	        <table class="board_write">
	            <caption>회원가입</caption>
	            <colgroup>
	                <col width="20%" />
	                <col width="*" />
	            </colgroup>
	            <tbody>
	            	<tr>
	                    <th><span style="color:red;">* </span>아이디</th>
	                    <td>
	                        <input type="text" name="id" id="id" class="inNextBtn" style="float:left;">
	                        <span class="id_check"><a href="javascript:;" class="btn bgGray" style="float:left; width:auto; clear:none;" id="idCheck">중복확인</a></span>
	                        <span id="idid"></span>
	                    </td>
	                </tr>
	                <tr>
	                    <th><span style="color:red;">* </span>이메일</th>
	                    <td>
	                        <input type="text" name="email" id="email" class="inNextBtn" style="float:left;">
	                        <span class="email_check"><a href="javascript:;"  class="btn bgGray" style="float:left; width:auto; clear:none;" id="emailCheck">중복확인</a></span>
	                        <span id="emailemail"></span>
	                    </td>
	                </tr>
	                <tr>
	                    <th><span style="color:red;">* </span>비밀번호</th>
	                    <td><input type="password" name="pass" id="pass" style="float:left;"> <span class="ptxt">*비밀번호는 대/소문자, 숫자, 특수문자 조합으로 8자 이상 입력하세요.</span> </td>
	                </tr>
	                <tr>
	                    <th><span style="color:red;">* </span>비밀번호<span>확인</span></th>
	                    <td><input type="password" name="pass_check" id="pass_check" style="float:left;"></td>
	                </tr>
	                <tr>
	                    <th><span style="color:red;">* </span>이름</th>
	                    <td><input type="text" name="name" id="name" style="float:left;"> </td>
	                </tr>
	                <tr>
	                    <th>생년월일</th>
	                    <td><input type="text" name="birthday" id="birthday" style="float:left;" autocomplete="off"> <span class="ptxt">*생년월일 8자리를 입력해주세요. ex) 20221021</span></td>
	                </tr>
	            </tbody>
	        </table>
	                <input type="hidden" name="cmd" value="write.do"/>
	                <input type="hidden" name="checkEmail" id="checkEmail" value="0"/>
	        </form>
	        <!-- //write--->
	        <div class="btnSet clear">
	            <div><a href="javascript:;" class="btn join" onclick="goJoin();">가입</a> <a href="javascript:;" class="btn cancel" onclick="history.back();">취소</a></div>
	        </div>
	    </div>
	</div>
        
</body>
</html>