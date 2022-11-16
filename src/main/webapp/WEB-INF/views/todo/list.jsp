<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.*" %>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
<table class="list">
<p><span><strong>총 ${pageMaker.totalCount } 개</strong>  |  ${ data.page }/${ pageMaker.totalPage }페이지</span></p>
    <caption>게시판 목록</caption>
    <colgroup>
        <col width="80px" />
        <col width="*" />
        <col width="150px"/>
        <col width="150px" />
        <col width="150px" />
    </colgroup>
    <thead>
        <tr>
            <th>
            	<c:if test="${loginInfo.member_no == 1 }">
            	<input type="button" class="btn join" value="추가" onclick="javascript:plusTodo();">
            	</c:if>
            </th>
            <th>내용</th>
            <th>작성일</th>
            <th>완료일</th>
            <th>[ 수정 ] / [ 삭제 ]</th>
        </tr>
    </thead>
    <tbody id="tbody">
		<c:if test="${empty data.list }">
        <tr id="first_tr">
        	<td class="first" colspan="8">내용이 없습니다.</td>
        </tr>
		</c:if>	
        <c:if test="${!empty data.list }">     
    	<c:forEach items="${data.list }" var="list" varStatus="st">
    		<tr>
				<td>
				<c:if test="${loginInfo.member_no ==1 }">
				<input type="checkbox" name="todo_no" value="${list.todo_no }" <c:if test="${!empty list.checkdate }">checked</c:if>>
				</c:if>
				</td>
		        <td class="txt_l" <c:if test="${!empty list.checkdate }">style='text-decoration:line-through;'</c:if>>
		        	${list.content }
		        </td>
	            <td class="date"><fmt:formatDate value="${list.regdate }" pattern="yyyy-MM-dd"/></td>
	            <td class="date">
		           	<c:if test="${empty list.checkdate }">X</c:if>
		           	<c:if test="${!empty list.checkdate }">
		            	<fmt:formatDate value="${list.checkdate }" pattern="yyyy-MM-dd"/>
			        </c:if>
		        </td>
		        <td>
		        	<c:if test="${loginInfo.member_no == 1 }">
		        	<span style="cursor: pointer; color: #708ebd;" class="modi">[ 수정 ]</span>
		        	<span style="cursor: pointer; color: #C06074;" onclick="deleteTodo(${list.todo_no });">[ 삭제 ]</span>
		        	</c:if>
		        </td>
		    </tr>
		</c:forEach>
		</c:if>
	</tbody>
</table>

<c:if test="${!empty data.list }">
	<div class="pagenate clear">
    	<ul class='paging'>
	    	<c:if test="${data.prev == true }">
	        	<li><a href="javascript:showlist(${data.startPage -1 }, ${data.chk });"><</a>
	   		</c:if>
	    	<c:forEach var="p" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
	        	<li><a href='javascript:showlist(${p },${data.chk });' <c:if test="${todoVO.page == p}"> class='current'</c:if>>${p }</a></li>
	    	</c:forEach>
	    	<c:if test="${data.next == true }">
	        	<li><a href="javascript:showlist(${data.endPage +1 },${data.chk });">></a>
	    	</c:if>
    	</ul> 
	</div>
</c:if>

<!-- 페이지처리 -->
<div class="bbsSearch">
    <form method="get" name="searchForm" id="searchForm" action="">
        <span class="srchSelect">
            <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                <option value="all">전체</option>
                <option value="title">제목</option>
                <option value="contents">내용</option>
            </select>
        </span>
        <span class="searchWord">
            <input type="text" id="sval" name="sval" value=""  title="검색어 입력">
            <input type="button" id="" value="검색" title="검색">
        </span>
    </form>
    
</div>
