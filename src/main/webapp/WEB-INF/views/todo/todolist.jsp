<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<script>
$(function(){
	showlist();
})
</script>
<body>
    
	<div class="sub">
	    <div class="size">
	        <h3 class="sub_title">
	        	<img src="<%=util.Property.contextPath%>/img/board_list1.jpg" style="width:60px">
	        	TO-DO
	        	<img src="<%=util.Property.contextPath%>/img/board_list1.jpg" style="width:60px">
	        </h3>
	        <input type="button" class="s_btn all" value="전체" onclick="showlist(1, 0);">
	        <input type="button" class="s_btn incom" value="미완료" onclick="showlist(1, 1);">
	        <input type="button" class="s_btn com" value="완료" onclick="showlist(1, 2);">
	        <div class="bbs">   
	        <p id="hi"></p>
	        </div>
	    </div>
	</div>
	
        
</body>
</html>