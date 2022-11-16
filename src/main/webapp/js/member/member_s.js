// 회원가입
function goJoin(){
	if ($("#id").val().trim() == ''){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return;
	}
	if($("#idid").text().trim()==''){
		alert("아이디 중복확인을 해주세요.");
		$("#id").focus();
		return;
	}
	if ($("#email").val().trim() == ''){
		alert("이메일을 입력해주세요.");
		$("#email").focus();
		return;
	}
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    if(!reg_email.test($("#email").val())) {
		alert("이메일 형식이 올바르지 않습니다");
		return;
	}
	if($("#emailemail").text().trim()==''){
		alert("이메일 중복확인을 해주세요.");
		$("#email").focus();
		return;
	}
	if ($("#pass").val().trim() == ''){
		alert("비밀번호를 입력해주세요.");
		$("#pass").focus();
		return;
	}
	var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	if(!reg.test($("#pass").val())){
		alert("비밀번호는 대/소문자, 숫자, 특수문자 조합으로 8자 이상 입력하세요.");
		return;
	}
	if ($("#pass_check").val().trim() != $("#pass").val().trim()){
		alert("비밀번호를 확인해주세요.");
		$("#pass_check").focus();
		return;
	}
	if ($("#name").val().trim() == ''){
		alert("이름을 입력해주세요.");
		$("#name").focus();
		return;
	}
	if ($("#birthday").val().trim() != ''){
		var reg = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
		if(!reg.test($("#birthday").val())){
		alert("생년월일 8자리를 입력해주세요. ex) 20221021");
		return;
	}
	}
	$("#frm").submit();
}
// 중복체크
$(function(){
	// 아이디 중복체크
	$("#idCheck").click(function(){
		if($("#id").val().trim() == ''){
			alert("아이디를 입력해 주세요");
			$("#id").focus();
		} else {
			$.ajax({
				url : "/personal/member/idDupCheck.do",
				data : {id : $("#id").val()},
				success : function(res){
					if (res == 'true'){
						alert('이미 존재하는 아이디입니다.');
						$("#id").val('');    
					} else {
						$("#idid").html('사용 가능한 아이디입니다.');
					}
				}
			})
		}
	})
	$("#id").focus(function(){
		$("#idid").html('');
	})
	
	// 이메일 중복체크
	$("#emailCheck").click(function(){
		if($("#email").val().trim() == ''){
			alert("이메일을 입력해 주세요");
			$("#email").focus();
		} else {
			$.ajax({
				url : "/personal/member/emailDupCheck.do",
				data : {email : $("#email").val()},
				success : function(res){
					if (res == 'true'){
						alert('이미 존재하는 이메일입니다.');
						$("#email").val('');    
					} else {
						$("#emailemail").html('사용 가능한 이메일입니다.');
					}
				}
			})
		}
	})
	$("#email").focus(function(){
		$("#emailemail").html('');
	})
	
})

function loginCheck(){
	if ($("#id").val().trim() == ''){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return false;
	}
	if ($("#pass").val().trim() == ''){
		alert("비밀번호를 입력해주세요.");
		$("#pass").focus();
		return false;
	}
	console.log("로그인 성공");
}