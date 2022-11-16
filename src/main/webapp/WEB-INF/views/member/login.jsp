<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %> 로그인</title>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<body>
    
	<form action="login.do" method="post" id="loginFrm" name="loginFrm" onsubmit="return loginCheck();">
	    <div class="sub">
	        <div class="size">
	            <h3 class="sub_title">로그인</h3>
	            
	            <div class="member">
	                <div class="box">
	                    <fieldset class="login_form">
	                        <ul>
	                            <li><input type="text" id="id" name="id" placeholder="아이디"></li>
	                            <li><input type="password" id="pass" name="pass" placeholder="비밀번호"></li>
	                        </ul>
	                        <div class="login_btn"><input type="submit" style="background: #708ebd;" value="로그인" alt="로그인" /></div>
	                    </fieldset>
	                    <div class="btnSet clear">
	                        <div>
	                            <input type="button" class="o_btn" value="회원가입">
								<!-- <input type="button" class="o_btn" value="아이디/비밀번호 찾기"> 나중에 추가하기-->
	                        </div>
	                    </div>
	                </div>
	            </div>
	
	        </div>
	    </div>
	</form>
        
</body>
</html>