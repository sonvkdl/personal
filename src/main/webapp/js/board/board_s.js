function goWrite(){
	if($("#title").val().trim()==''){
		alert("제목을 입력해주세요");
		$("#title").focus();
		return;
	}
	if($("#content").val().trim()==''){
		alert("내용을 입력해주세요");
		$("#content").focus();
		return;
	}
	$("#writeFrm").submit();
}
