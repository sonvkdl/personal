function goGbSave(){
	if($("#member_no").val().trim() == ''){
		alert("로그인 후 작성해주세요");
		$("#content").val('');
		return
	}
	
	if($("#content").val().trim() == ''){
		alert("내용을 작성해주세요.");
		$("#content").focus();
		return
	}
	
	$("#gbook").submit();
}