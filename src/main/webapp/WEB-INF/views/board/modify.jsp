<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<script>
function goSave(){
	editor.getById['content'].exec('UPDATE_CONTENTS_FIELD',[]);
	goWrite();
}
$(function() {
	editor = setEditor('/personal/','content');
});	
</script>
<body>
    
	<div class="sub">
	    <div class="size">
	        <h3 class="sub_title">
			<img src="<%=util.Property.contextPath%>/img/board_write1.jpg" style="width:60px">
        	죠르디와 수정씨
        	<img src="<%=util.Property.contextPath%>/img/board_write1.jpg" style="width:60px">
			</h3>
	
	        <div class="bbs">
	        <form method="post" name="writeFrm" id="writeFrm" action="update.do">
	        <input type="hidden" name="board_no" value="${data.board_no }">
	            <table class="board_write">
	                <tbody>
	                <tr>
	                    <th>제목</th>
	                    <td>
	                        <input type="text" name="title" id="title" style="width:600px;" value="${data.title }"/>
	                    </td>
	                    <th>비밀글</th>
	                    <td>
	                    	<input type="radio" name="isprivate" id="isprivate1" value="0" ${data.isprivate == 0?"checked":""}>공개
	                    	<input type="radio" name="isprivate" id="isprivate2" value="1" ${data.isprivate == 1?"checked":""}>비공개
	                    </td>
	                </tr>
	                <tr>
	                    <th>내용</th>
	                    <td colspan="3">
	                        <textarea name="content" id="content" style="width: 90%">${data.content }</textarea>
	                    </td>
	                </tr>
	                </tbody>
	            </table>
	            <!-- 글쓴이 -->
	            <input type="hidden" name="member_no" id="member_no" value="1"><!-- 나중에 로그인 세션 확인할거임 아마?-->
	            <div class="btnSet" >
	                <a class="btn join" href="javascript:goSave();">수정</a>
	                <a class="btn del" href="javascript:history.back();">취소</a>
	            </div>
	            
            </form>
	        </div>
	    </div>
	</div>
	
</body>


</html>