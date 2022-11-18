<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title%></title>      
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<body>
<div id="boardWrap" class="bbs">
			<div class="main">
				<div class="wid48 fl_l">
					<div class="box notice">
						<h2>게시글</h2> <!--  main화면 -->
						<ul>
							<c:forEach items="${bdata.list }" var="vo" varStatus="status">
								<li>
								<c:if test="${loginInfo.member_no == 1 || vo.isprivate == 0}">
								<a href="javascript:;" onclick="parent.clickMenu('portfolio1', '게시글', '/board/view.do?board_no=${vo.board_no}', false);"> ${vo.title } <span>${vo.name }</span></a>
								</c:if>
								<c:if test="${loginInfo.member_no != 1 && vo.isprivate == 1}">
	                             비밀글입니다.
	                            </c:if>
								</li>
							</c:forEach>
							<c:if test="${empty bdata.list }">
								<li style="text-align:center;">등록된 게시글이 없습니다.</li>
							</c:if>
						</ul>
					</div>
					<div class="box notice">
						<h2>방명록</h2>
						<ul>
							<c:forEach items="${gdata.list }" var="vo">
							<li>
							<a href="javascript:;" onclick="parent.clickMenu('portfolio3', '방명록', '/guest/guestbook.do', false);"> ${vo.content } <span>${vo.name }</span></a>
							</li>
							</c:forEach>
							<c:if test="${empty gdata.list }">
							<li style="text-align:center;">등록된 방명록이 없습니다.</li>
							</c:if>
						</ul>
					</div>
					<div class="linkBox">
						<ul>
							<li class="link01"><a href="javascript:;" onclick="parent.clickMenu('myinfo1', '프로필', '/myinfo/index.do', false)">Profile</a></li>
						</ul>
					</div>
				</div>
				
				<div class="wid48 fl_r">
					<div class="box bl">
						<h2>여긴 무얼 쓸까요?(고민중)</h2>
						<!-- 
						<table>
							<thead>
								<tr>
									<th>ID</th>
									<th>이름</th>
									<th>연락처</th>
									<th>가입일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td><a href=""></a></td>
									<td></td>
									<td>$</td>
								</tr>
							</tbody>
						</table>
						 -->
					</div>
					<!-- 	
					<div class="box bl">
						<h2>최근 게시글</h2>
						<div class="blTab">
							<ul>
								<li id="curbl_notice" class="on" onclick="changeTab('notice');">공지</li>
								<li id="curbl_qna" onclick="changeTab('qna');">Q&A</li>
							</ul>
						</div>
						<table id="notice_tab">
							<thead>
								<tr>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="">공지사항입니다.</a></td>
									<td>홍길동</td>
									<td>2020-01-01</td>
								</tr>
								
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
			-->
</div>
<!--//contentsWrap-->
</body>
</html>
