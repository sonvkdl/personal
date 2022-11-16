<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<body>
    
	<div class="sub">
	    <div class="size">
	        <h3 class="sub_title">
			<img src="<%=util.Property.contextPath%>/img/board_view1.jpg" style="width:60px">
        	${data.title }
        	<img src="<%=util.Property.contextPath%>/img/board_view1.jpg" style="width:60px">
			</h3>
	        <div class="bbs">
	            <div class="view">
	                <div class="title">
	                    <dl>
	                    	<dd>조회수 : ${data.viewcount }</dd><br/>
	                        <dd class="date" >작성일 : <fmt:formatDate value="${data.regdate }" pattern="yyyy-MM-dd"/></dd>
	                        &nbsp;|&nbsp;<dd >비밀글 : ${data.isprivate == 1? "O":"X" }</dd>
	                    </dl>
	                </div>
	                <div class="cont"><p>${data.content }</p> </div>
	                <div class="btnSet clear">
	                    <div ><a href="list.do" class="btn join">목록으로</a>
	                    <c:if test="${loginInfo.member_no == 1 }">
	                    <a href="modify.do?board_no=${data.board_no }" class="btn join">수정</a>
	                    <a href="del.do?board_no=${data.board_no }" class="btn del">삭제</a>
	                    </c:if>
	                    </div>
	                </div>
	        
	            </div>
	        </div>
	    </div>
	</div>
        
</body>
</html>