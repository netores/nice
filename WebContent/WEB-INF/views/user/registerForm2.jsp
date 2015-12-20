<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	margin-top:100px;
	margin-left:200px;
	width:1000px;
	height:800px;	
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">

	var id_flag;
	var pw_flag;
	
	$(document).ready(function(){
		$("#id").on('keyup', ckId);
		$("#pw2").on('keyup', ckPw);
	});
	
	function ckId(){
		$.ajax({
			url : "<c:url value='/ckId.do'/>",
			type : "get",
			data : {
			id : $('#id').val()
			},
			success : function(data) {
				$('#id_span').html(data);
				console.log(data);
			}

		});
	} 
	
 	function ckPw(){
		if($("#pw1").val() == $("#pw2").val()){
			$("#pw_span").html("<h4>비밀번호 일치</h4>");
			pw_flag = true;
		}
		else{
			$("#pw_span").html("<h4>비밀번호 불일치</h4>");
			pw_flag = false;
		}
	} 
	
    function openDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('address').value = data.zonecode+" "+fullAddr;

            }
        }).open();
    }
	
	function regMember(){
		
		if($("#id").val() == ""){
			alert("ID를 입력해주세요");
			return;
		}
		
/* 		if($("#id").val().length < 4 || $("id").val().length > 15){
			alert("ID는 4자 이상 15자 이하입니다.");
			return;
		}else{
			return true;
		} */
		
		if($("#pw1").val() == ""){
			alert("비밀번호를 입력해주세요");
			return;
		}
		
		if($("#pw2").val() == ""){
			alert("비밀번호를 입력해주세요");
			return;
		}
		
		if(pw_flag == false){
			alert("pw가 다릅니다.");
			$("#pw1").val("");
			$("#pw2").val("");
			return;
		}
		
		if($("#name").val() == ""){
			alert("이름을 입력해주세요");
			return;
		}
		
 		if($("#phone1").val() == ""){
			alert("통신사를 입력해주세요");
			return;
		} 
 		
 		if($("#phone2").val() == ""){
			alert("전화번호1을 입력해주세요");
			return;
		} 
 		
 		if($("#phone3").val() == ""){
			alert("전화번호2를 입력해주세요");
			return;
		} 
		
		if($("#address").val() == ""){
			alert("주소를 입력해주세요");
			return;
		}
		
		if($("#birthdate").val() == ""){
			alert("생일을 입력해주세요");
			return;
		}
		
		if($("#email").val() == ""){
			alert("E-mail을 입력해주세요");
			return;
		}
		
		//전화번호 3자리 합해서 넣는다.
		document.getElementById('phone').value = 
			document.getElementById('phone1').value + "-" + 
			document.getElementById('phone2').value + "-" +
			document.getElementById('phone3').value;
		
		document.frm.action = "registerOk.do";
		document.frm.method = "get";
		document.frm.submit();
	} 
	
	function cancelMem(){
		document.frm.action = "registerPage.do";
		document.frm.method = "post";
		document.frm.submit();
	}
	
	
	</script>
</head>
<body>
	<div id="registerform_container">
	<h1 align="center">회원가입</h1>
		<form action="" name="frm">
		<div id="registerform_inputform">
			아이디 : <input type="text" name="id" id="id" size="8" maxlength="14"/>
			<span id="id_span"></span><br />
			비밀번호 : <input type="password" name="pw" id="pw1" size="10" maxlength="14"/><br />
			비밀번호 확인 : <input type="password" name="pwck" id="pw2" size="10" maxlength="14"/><span id="pw_span"></span>
			<br />
			이름 : ${name } <br />
			E-mail : ${email } <br />
			<input type="hidden" name="name" id="name" value="${name }" />
			연락처 : <input type="text" id="phone1" size="2" maxlength="3"/>-
			<input type="text" id="phone2" size="2" maxlength="4"/>-
			<input type="text" id="phone3" size="2" maxlength="4"/><br />
			<input type="hidden" name="phone" id="phone" />
			주소 : <input type="text" name="address" size="50" id="address" placeholder="주소입력" />
			<input type="button" value="주소찾기" onclick="openDaumPostcode()" /><br/>
			생일 : <input type="date" name="birthdate" id="birthdate" /><br />
			<input type="hidden" name="email" id="email" value="${email }" />
		</div>
		
		<div id="registerform_button">
			<input type="button" value="회원가입" id="regbtn" onclick="regMember()" />
			<input type="button" value="취소"  onclick="cancelMem()" />
		</div>
		</form>
	</div>
	
</body>	
</html>