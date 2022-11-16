// 체크리스트 작성 추가
function plusTodo(){
	var html = 	"<tr class='plus_tr'>";
	html += 	"	<td><input type='checkbox'></td>";
	html += 	"	<td colspan='2' class='txt_l' >";
	html += 	"		<input type='text' name='content' style='width:800px'>";
	html += 	"	</td>";
	html += 	"	<td>"
	html += 	"		<input type='button' value='저장' class='btn join' onclick='saveTodo();'>";
	html +=		"	</td>";
	html += 	"	<td>";
	html += 	"		<input type='button' value='취소' class='btn del' onclick='cancelTodo();'>";	
	html += 	"	</td>";
	html += 	"</tr>";
	
	var trCnt = $("#tbody .plus_tr").length;
	// 한번에 하나씩만 추가하도록
	if (trCnt < 1) {
		$("#first_tr").remove();
		$("#tbody").prepend(html);
	} else {
		alert("하나씩 추가하세요.");
	}
	
}
// 체크리스트 추가 취소
function cancelTodo(){
	$(".plus_tr").remove();
}
// 체크리스트 추가 저장 후 리스트 ajax로 다시 호출
function saveTodo(){
	var contentVar = $(".plus_tr").find("input[name='content']").val();
	$.ajax({
		url : "/personal/todo/save.do",
		data : {content : contentVar},
		type : "post",
		success: function(){
			showlist();
		}
	})
	
}	
// ajax로 todo-list 호출
function showlist(page, chk){
	$.ajax({
		url : "/personal/todo/list.do",
		dataType : 'text',
		data : {
			page : page,
			chk : chk			
		},
		success : function(res){
			$("#hi").html(res);
		}
	})
}

// 체크박스 체크시 ischeck = 1, checkdate = now()로 업데이트 후 리스트 호출
function checkTodo(todo_noVar){
	
	$.ajax({
		url : "/personal/todo/check.do",
		data : {todo_no : todo_noVar},
		type : "post",
		success: function(){
			showlist();
		}
	})
}
function recheckTodo(todo_noVar){
	$.ajax({
		url : "/personal/todo/recheck.do",
		data : {todo_no : todo_noVar},
		type : "post",
		success: function(){
			showlist();
		}
	})
}
$(function(){
	// 체크박스 체크시 checkTodo() 함수 호출
	$("input:checkbox").on('change',function(){
		var todo_noVar = $(this).val()
        if($(this).is(":checked") == true){
            checkTodo(todo_noVar);
        } else {
			recheckTodo(todo_noVar);
		}
    });
})

// 수정버튼 클릭시
$(".modi").click(function(){
	var trc = $.find(".plus_tr").length;

	if(trc < 1){
		var txt = "";
		var todo_no = $(this).parent().parent().children().eq(0).children().val();
		var temp = $(this).parent().parent().children().eq(1);
		txt = temp.text().trim();
		var temp2 = $(this).parent().parent();
		var html = 	"	<tr class='plus_tr'><td><img src='/personal/img/todo_arrow1.png' style='width:41px;'></td>";
		html += 	"	<td colspan='2' class='txt_l' >";
		html += 	"		<input type='text' name='content' style='width:800px' value='"+txt +"'>";
		html += 	"	</td>";
		html += 	"	<td>"
		html += 	"		<input type='button' value='수정' class='btn join' onclick='modifyTodo("+ todo_no+");'>";
		html +=		"	</td>";
		html += 	"	<td>";
		html += 	"		<input type='button' value='취소' class='btn del' onclick='cancelTodo();'>";	
		html += 	"	</td></tr>";
	
		temp2.after(html);
	}

})
// 수정 후 리스트 ajax로 다시 호출 + 체크 해제
function modifyTodo(todo_no){
	var contentVar = $("input[name='content']").val();
	$.ajax({
		url : "/personal/todo/modify.do",
		data : {
			content : contentVar,
			todo_no : todo_no	
		},
		type : "post",
		success: function(res){
			if(res.trim() == 1){
				alert("수정 성공!");
				recheckTodo(todo_no);
			}
		}
	})
}	

// 체크리스트에서 삭제
function deleteTodo(todo_no){
	$.ajax({
		url : "/personal/todo/delete.do",
		data : { todo_no : todo_no},
		type : "POST",
		success : function(res){
			if(res.trim() == 1){
				alert("삭제 성공!");
				showlist();
			}
		}
	})
}