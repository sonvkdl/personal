<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %></title>
<%@ include file="/WEB-INF/views//include/headHtml.jsp" %>
</head>
<body>
<div id="boardWrap" class="bbs">
	<div class="pageTitle">
		<h2>프로필</h2>
	</div>
	<!--//pageTitle-->
	<div class="write">
		<table>
			<colgroup>
				<col style="width:150px"/>
				<col style="width:*"/>
				<col style="width:150px"/>
				<col style="width:*"/>
			</colgroup>
			<tbody>
				<tr>
					<th>이름</th>
					<td>손원주</td>
					<th>생년월일</th>
					<td>
						1996.10.07
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan="3">
					sonvkdl@naver.com
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">
						서울시 강북구 수유동
					</td>
				</tr>
				<tr>
					<th rowspan="2">학력</th>
					<td colspan="3">
						창문여자고등학교
					</td>
				</tr>
				<tr>
					<td colspan="3">
						한국산업기술대학교 생명화학공학과
					</td>
				</tr>
				<!-- <tr>
					<th rowspan="2">이력</th>
					<td colspan="3">
						00 회사 00 팀 (1년 6개월) - 00업무
					</td>
				</tr> -->
				<tr>
					<td colspan="3">
						비젠소프트 개발팀 (2022.12~) - 웹개발 및 솔루션
					</td>
				</tr>
				<tr>
					<th rowspan="3">자격증</th>
					<td colspan="3">
						SQLD
					</td>
				</tr>
				<tr>
					<td colspan="3">
						정보처리기사 (필기)
					</td>
				</tr>
				<tr>
					<td colspan="3">
						컴퓨터활용능력 2급
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!--//boardWrap-->
</body>
</html>