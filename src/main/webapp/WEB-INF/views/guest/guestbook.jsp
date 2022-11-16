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
	        	<img src="<%=util.Property.contextPath%>/img/guest_img1.png" style="width:60px">
	        	방명록을 남겨죠르디
	        	<img src="<%=util.Property.contextPath%>/img/guest_img1.png" style="width:60px">
	        </h3>
	
	        <div class="bbs">   
	            <table class="list">
	            <p><span><strong>총 ${pageMaker.totalCount } 개</strong>  |  ${ data.page }/${ pageMaker.totalPage }페이지</span></p>
	                <caption>게시판 목록</caption>
	                <colgroup>
	                    <col width="80px" />
	                    <col width="*" />
	                    <col width="100px" />
	                    <col width="150px" />
	                </colgroup>
	                <thead>
	                    <tr>
	                        <th>번호</th>
	                        <th>내용</th>
	                        <th>작성자</th>
	                        <th>작성일</th>
	                    </tr>
	                </thead>
	                <tbody>
	                <tr>
                        <td class="first" colspan="8">*아직 수정/삭제 기능은 없습니다 참고해주세요*</td>
                    </tr>
					<c:if test="${empty data.list }">
	                    <tr>
	                        <td class="first" colspan="8">등록된 방명록이 없습니다.</td>
	                    </tr>
					</c:if>
	                <c:if test="${!empty data.list }">     
	                	<c:forEach items="${data.list }" var="list" varStatus="st">
	                	<tr>
	                        <td>${pageMaker.totalCount - (boardVO.page - 1)*boardVO.pageRow -st.index}</td>
	                        <td class="txt_l" >
	                            ${ list.content }
	                        </td>
	                        <td class="writer">
	                            ${list.name }
	                        </td>
	                        <td class="date">
	                        	<fmt:formatDate value="${list.regdate }" pattern="yyyy-MM-dd"/>
	                        </td>
	                    </tr>
	                	</c:forEach>
	                </c:if>
	                </tbody>
	            </table>
	        	<!-- 방명록 작성 -->
	            <div>
		            <form method="get" name="gbook" id="gbook" action="gbinsert.do" enctype="multipart/form-data" >
	                <input type="hidden" name="member_no" id="member_no" value="${loginInfo.member_no }">
	                <table class="board_write">
	                    <colgroup>
	                        <col width="100px" />
	                        <col width="*" />
	                        <col width="100px" />
	                    </colgroup>
	                    <tbody>
	                    <tr>
	                    	<td> 방명록 작성 </td>
	                        <td>
	                            <textarea name="content" id="content" style="height:50px;"></textarea>
	                        </td>
	                        <td>
	                            <div class="btnSet"  style="text-align:right;">
	                                <a class="btn" href="javascript:goGbSave();">작성하기</a>
	                            </div>
	                        </td>
	                    </tr>
	                    </tbody>
	                </table>
	                </form>
	            </div>
	            <!-- 페이지처리 -->
	            <c:if test="${!empty data.list }">
	            <div class="pagenate clear">
	                <ul class='paging'>
					    <c:if test="${data.prev == true }">
					        <li><a href="guestbook.do?page=${data.startPage -1 }&stype=${param.stype}&sword=${param.sword}"><</a>
					    </c:if>
					    <c:forEach var="p" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					        <li><a href='guestbook.do?page=${p}&stype=${param.stype}&sword=${param.sword}' <c:if test="${boardVO.page == p}"> class='current'</c:if>>${p }</a></li>
					    </c:forEach>
					    <c:if test="${data.next == true }">
					        <li><a href="guestbook.do?page=${data.endPage +1 }&stype=${param.stype}&sword=${param.sword}">></a>
					    </c:if>
				    </ul> 
	            </div>
	        	</c:if>
	            
	        	<!-- 검색 
	            <div class="bbsSearch">
	                <form method="get" name="searchForm" id="searchForm" action="">
	                    <span class="srchSelect">
	                        <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
	                            <option value="all">전체</option>
	                        </select>
	                    </span>
	                    <span class="searchWord">
	                        <input type="text" id="sval" name="sval" value=""  title="검색어 입력">
	                        <input type="button" id="" value="검색" title="검색">
	                    </span>
	                </form>
	            </div>
	            -->
	        </div>
	    </div>
	</div>
        
</body>
</html>