<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=divice-width,initial-scale=1" />
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>

@font-face {
	font-family: 'Na';
	src: url('/niceproject/font/NanumGothicExtraBold.ttf')
}

html, body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
}

div {
	display: block;
}
/* modal */
#myModal {
	overflow: hidden;
	margin-top: -335px;
}

.modal-backdrop {
    margin-top: -338px;
}

.modal-content {
	width: 828px;
 	margin-left: -15%;
     margin-top: 30%;

 }
/* header */
#main_header {
	position: fixed;
	top:0px;
	left:0px;
	height: 30px;
	width:100%;
	background: #000;
	color: #fff;
	font-family: arial;
	font-weight: bolder;
	z-index: 200;
}

#main_header_menu1 {
	padding-top: 6px;
	padding-left: 10px;
	width: 200px;
	display: block;
	float: left;
}

#main_header_menu2 {
	padding-top: 6px;
	margin-left: 80%;
	width: 20%;
	display: block;
	text-align: right;
}

#main_header_menu2 span {
	margin-right: 18px;
}
/*nav  */
#main_nav {
	position: fixed;
	top:30px;
	left:0px;
	width:100%;
	height: 50px;
	background: url(../niceproject/images/bg_gnb1.png) 0 0 repeat-x;
	z-index: 200;
	border-bottom: 1px solid #aaaaaa;
	}

#main_nav div {
	position: relative;
	float: left;
	width: 110px;
	padding-top: 14px;
	text-align: center;
	z-index: 200;
	border-left: 2px solid #eeeeee;
	border-right: 1px solid #cccccc;
	height: 50px;
	font-family: 'lucida grande';
	font-size: 14px;
	font-weight: bolder;
	color: black;
}

#main_nav div a {
	color: #444;
}

#main_nav div a:hover {
	text-decoration: none;
}

div#main_nav_menu1{
	color:#f70;
}

div#main_nav_menu5 {
	border-left: 0px;
	position: absolute;
	top: 0px;
	right: 200px;
	width: 400px;
	padding: 12px;
	position: absolute;
}

div#main_nav_menu6 {
	position: absolute;
	top: 0px;
	right: 100px;
	width: 100px;
}

div#main_nav_menu7 {
	position: absolute;
	top: 0px;
	right: 0px;
	width: 100px;
}

#main_nav div span {
	color: #ccc;
	font-size: 5px;
	margin-left: 5px;
}

#main_nav_menu5 input[type="text"] {
	position: absolute;
	top: 10px;
	right: 85px;
	box-shadow: inset 1px 2px 1px #000000;
	height: 28px;
	max-width: 250px;
	border-radius: 20px;
}

#main_nav_menu5 input[type="button"] {
	position: absolute;
	top: 10px;
	right: 10px;
	margin-left: 0px;
	height: 28px;
	border-radius: 20px;
	padding: 0px;
	width: 70px;
}

div#main_nav_login {
	position: absolute;
	z-index: 100;
	top: -210px;
	right: 0px;
	height: 282px;
	border-bottom: 1px solid #aaaaaa;
	box-shadow: 2px 2px 5px;
	width: 298px;
	padding-top: 28px;
	padding-left: 28px;
	padding-bottom: 28px;
	background: url(../niceproject/images/pattonunder.png) 0 0 repeat-x;
	font-family: "Na,맑은 고딕";
	font-size: 12px;
	transition: 0.4s ease;
}

div#main_nav_loginok {
	position: absolute;
	right: 0px;
	width: 150px;
	display: none;
}

div#main_nav_loginok span {
	font-size: 12px;
	font-family: 'Na';
	color: #f70;
}

.char {
	height: 282px;
	border-bottom: 1px solid #aaaaaa;
	box-shadow: 2px 2px 5px;
	background: url(../niceproject/images/pattonunder.png) 0 0 repeat-x;
	font-family: "Na,맑은 고딕";
	font-size: 12px;
	font-weight: bolder;
	transition: 0.4s ease;
}

.loginin {
	transform: translateY(285px);
}

div#main_nav_loginafter {
	display: none;
	position: absolute;
	top: 50px;
	right: 0px;
	width: 150px;
	height: 100px;
	font-size: 16px;
	font-weight: bolder;
	border: 0px;
}

#main_nav div div span {
	font-family: "Na,맑은 고딕";
	font-size: 14px;
	margin-left: 5px;
	font-weight: bolder;
	color: black;
}

#main_nav_login h4 {
	font-weight: bolder;
}

#main_nav_login input[type="text"], #main_nav_login input[type="password"]
	{
	margin-top: 20px;
	margin-right: 28px;
	margin-bottom: 10px;
	width: 248px;
	border-radius: 0px;
}

#main_nav_login input[type="button"] {
	margin-top: 20px;
	color: white;
	background: linear-gradient(to bottom, rgba(255, 119, 0, 0.8),
		rgba(255, 119, 0, 1));
	padding: 8px 20px;
	box-shadow: 2px 2px 5px black;
}

#main_nav_login #searchid {
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
}

#main_nav_hidden {
	position: relative;
	z-index: 100;
	margin-top: -255px;
	height: 250px;
	border-bottom: 1px solid #aaaaaa;
	box-shadow: 2px 2px 5px;
	transition: 0.4s ease;
}

#main_nav_hidden_title, #main_nav_hidden_title2, #main_nav_hidden_title3
	{
	position: absolute;
	top: 200px;
	margin-left: 28px;
	width: 100%;
	height: 250px;
	opacity: 0.2;
	filter: alpha(opacity = 20); /* for ie 8.0 under*/
	font-size: 120px;
	font-family: "Arial";
	font-weight: bolder;
	text-shadow: 1px 2px 10px black;
	color: white;
	margin-top: -90px;
	display: none;
}

#main_nav_hidden_background {
	background: black;
	opacity: 0.6;
	min-height: 100%;
	min-width: 100%;
}

#main_nav_menu_2_dropdownmenu, #main_nav_menu_3_dropdownmenu,
	#main_nav_menu_4_dropdownmenu {
	float: none;
	z-index: 50;
	width: 80%;
	margin-left: 10%;
	height: 100%;
	display: none;
	color: #999999;
	font-weight: bolder;
	text-shadow: 1px 1px white;
	font-family: 'Na';
	font-size: 28px;
}

#main_nav_hidden_dropdownmenu_2, #main_nav_hidden_dropdownmenu_3,
	#main_nav_hidden_dropdownmenu_4 {
	position: absolute;
	width: 100%;
	height: 250px;
	top: 0px;
}

#main_nav_menu_2_dropdownmenu td, #main_nav_hidden_dropdownmenu_3 td,
	#main_nav_hidden_dropdownmenu_4 td {
	padding-right: 20px;
	text-align: center;
}

#main_nav_menu_2_dropdownmenu img, #main_nav_hidden_dropdownmenu_3 img,
	#main_nav_hidden_dropdownmenu_4 img {
	width: 100px;
	transition: 0.3s ease;
}

#main_nav_menu_2_dropdownmenu a:hover img,
	#main_nav_hidden_dropdownmenu_3  a:hover img,
	#main_nav_hidden_dropdownmenu_4  a:hover img {
	width: 150px;
	transition: 0.3s ease;
}

#main_nav_menu_2_dropdownmenu a, #main_nav_menu_3_dropdownmenu a,
	#main_nav_menu_4_dropdownmenu a {
	color: #999999;
	text-shadow: 1px 1px white;
	text-decoration: none;
	text-size: 40px;
}

#main_nav_menu_2_dropdownmenu a:hover, #main_nav_menu_3_dropdownmenu a:hover,
	#main_nav_menu_4_dropdownmenu a:hover {
	color: white;
	text-decoration: none;
	text-shadow: 1px 1px black, 0 0 100px white, 0 0 5px white;
}

.in {
	transform: translateY(335px);
}

/* artice */
#main_article {
	width: 100%;
	min-height: 80px;
}

/* 회원가입 */
.container {
	width: 840px;
	height: 282px;
}

#navi {
	width: 800px;
}

#input_data {
	width: 410px;
	margin-top: 20px;
	padding-left: 20px; border-right : 1px solid #eee;
	float: left;
	border-right: 1px solid #eee;
}

div#law {
	margin: 20px;
	border-left: 1px solid #eee;
	width: 350px;
	height: 220px;
	float: left;
	padding: 20px;
	font-size: 12px;
	font-family: gulim;
	background-color: #eee;
}

.input-group {
	width: 525px;
	height: 50px;
}

#name_div, #email_div {
	width: 20%;
	float: left;
	margin: 6px auto;
	text-align: left;
}

#inpname_div, #inpemail_div {
	width: 50%;
	float: left;
}

#emailspan_div {
	width: 30%;
	float: none;
	margin: 6px auto;
	text-align: center;
	color: blue;
}

.btn-group {
	float: right;
	margin-right: 20px;
}

hr {
	width:90%;
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #eee;
	margin-right: 20px;
}
.modal-header span{
    font-weight: bolder;
    padding: 5px 10px 5px 10px;
    background-color: #eee;
    }	
    #modal_title {
        background-color: #fff;
        font-size: 18px;
    
    }
    #modal_span_1{
    position: absolute;
    top:10px;
    right:204px;
    }
    #modal_span_2{
    position: absolute;
    top:10px;
    right:127px; 
    background-color: #f70; 
    }
    #modal_span_3{
    position: absolute;
    top:10px;
    right:50px;
    }
    div#registerform_container {
    padding: 20px;
	}
	
	.info_insert{
	position: absolute;
	left:150px;
	}
	
	#phone2{
	position: absolute;
	left:200px;
	}
	#phone3{
	position: absolute;
	left:250px;
	}
	#registerform_button{
	text-align:center; 
	}
	[value="주소찾기"]{
	position: absolute;
	left: 533px;
	}
	#id_span, #pw_span{
	position: absolute;
	left: 350px;
	}
	
</style>



<script type="text/javascript">
	$(function() {

		$('#myModal').modal('show');
		if ($('#idcheck').val() != "") {
			$('#main_nav_menu6, #main_nav_login, #main_nav_menu7').css(
					"display", "none");
			$('#main_nav_menu5').css('right', '150px');
			$('#main_nav_loginok').show();
			$('#basketlist').html("<a href=basket.do?id="+$('#idcheck').val()+">장바구니</a>");
			if($('#lvcheck').val()=="1"){
				$('#adminmenu').html("<a href=stocklist.do>관리매뉴</a>");

			}
		}
		$('[value="로그인"]')
				.on(
						'click',
						function() {
							$
									.ajax({
										url : 'loginOk.do',
										type : 'post',
										data : $('#loginform').serialize(),
										success : function(data) {
											var datas = data.split(",");
											$("#idcheck").val(datas[0].trim());
											$("#lvcheck").val(datas[1].trim());
											$(
													'#main_nav_menu6, #main_nav_login, #main_nav_menu7')
													.css("display", "none");
											$('#main_nav_menu5').css('right',
													'150px');
											$('#main_nav_loginok').show();
											$('#getid').html($('#idcheck').val());
											$('#basketlist').html("<a href=basket.do?id="+$('#idcheck').val().trim()+">장바구니</a>");
											if($('#lvcheck').val()=="1"){
												$('#adminmenu').html("<a href=stocklist.do>관리매뉴</a>");

											}
										}
									});
						});

		$('#main_nav_menu2_link')
				.hover(
						function() {

							$('#main_nav_login').removeClass('loginin');
							$(
									'#main_nav_hidden_dropdownmenu_3,	#main_nav_hidden_dropdownmenu_4,#main_nav_menu_3_dropdownmenu,	#main_nav_menu_4_dropdownmenu, #main_nav_hidden_title3,#main_nav_hidden_title2')
									.hide();
							$('#main_nav_hidden_title').show();
							$('#main_nav_loginok').removeClass('char').css(
									'height', '50px');
							$('#main_nav_loginafter').hide();
							$('#main_nav_hidden').addClass('in');
							$('#main_nav_hidden_background').css(
									'background-color', 'black');
							$(
									'#main_nav_hidden_dropdownmenu_2, #main_nav_menu_2_dropdownmenu')
									.delay().fadeIn();
						});

		$('#main_nav_hidden')
				.mouseleave(
						function() {
							$('#main_nav_hidden').removeClass('in');
							$(
									'#main_nav_menu_2_dropdownmenu,#main_nav_menu_3_dropdownmenu,#main_nav_menu_4_dropdownmenu,#main_nav_hidden_dropdownmenu_2,#main_nav_hidden_title,#main_nav_hidden_title2,#main_nav_hidden_title3')
									.hide();
							$('#main_nav_loginok').removeClass('char').css(
									'height', '50px');
							$('#main_nav_loginafter').hide();
						});

		$('#loginafter')
				.hover(
						function() {
							$(
									'#main_nav_menu_2_dropdownmenu,#main_nav_menu_3_dropdownmenu,#main_nav_menu_4_dropdownmenu,#main_nav_hidden_dropdownmenu_2,#main_nav_hidden_title,#main_nav_hidden_title2,#main_nav_hidden_title3')
									.hide();
							$('#main_nav_loginok').addClass('char').css(
									'height', '150px');
							$('#main_nav_loginafter').show();
						});

		$('#main_nav_loginok').mouseleave(function() {
			$('#main_nav_loginok').removeClass('char').css('height', '50px');
			$('#main_nav_loginafter').hide();
		})
		$('#main_nav_menu3_link')
				.hover(
						function() {
							$('#main_nav_login').removeClass('loginin');
							$(
									'#main_nav_hidden_dropdownmenu_2,	#main_nav_hidden_dropdownmenu_4, #main_nav_menu_2_dropdownmenu,	#main_nav_menu_4_dropdownmenu, #main_nav_hidden_title,#main_nav_hidden_title3')
									.hide();

							$('#main_nav_hidden_dropdownmenu_2').hide();
							$('#main_nav_hidden_dropdownmenu_4').hide();
							$('main_nav_menu_2_dropdownmenu').hide();
							$('main_nav_menu_4_dropdownmenu').hide();
							$('#main_nav_hidden_title').hide();
							$('#main_nav_hidden_title2').show();
							$('#main_nav_hidden_title3').hide();
							$('#main_nav_hidden').addClass('in');
							$('#main_nav_hidden_dropdownmenu_3').delay()
									.fadeIn();
							$('#main_nav_menu_3_dropdownmenu').delay().fadeIn();
							$('#main_nav_hidden_dropdownmenu_2').delay().hide();
							$('#main_nav_hidden_dropdownmenu_4').delay().hide();
							$('main_nav_menu_2_dropdownmenu').delay().hide();
							$('main_nav_menu_4_dropdownmenu').delay().hide();
							$('#main_nav_loginok').removeClass('char').css(
									'height', '50px');
							$('#main_nav_loginafter').hide();

						});
		$('#main_nav_menu4_link').hover(function() {
			$('#main_nav_login').removeClass('loginin');
			$('#main_nav_hidden_dropdownmenu_2').hide();
			$('#main_nav_hidden_dropdownmenu_3').hide();
			$('main_nav_menu_2_dropdownmenu').hide();
			$('main_nav_menu_3_dropdownmenu').hide();
			$('#main_nav_hidden_title').hide();
			$('#main_nav_hidden_title2').hide();
			$('#main_nav_hidden_title3').show();
			$('#main_nav_hidden').addClass('in');
			$('#main_nav_hidden_dropdownmenu_4').delay().fadeIn();
			$('#main_nav_menu_4_dropdownmenu').delay().fadeIn();
			$('#main_nav_hidden_dropdownmenu_2').delay().hide();
			$('#main_nav_hidden_dropdownmenu_3').delay().hide();
			$('main_nav_menu_2_dropdownmenu').delay().hide();
			$('main_nav_menu_3_dropdownmenu').delay().hide();
			$('#main_nav_loginok').removeClass('char').css('height', '50px');
			$('#main_nav_loginafter').hide();
		});
		$('#main_nav_menu7_link').hover(function() {
			$('#main_nav_login').addClass('loginin');
			$('#main_nav_hidden').removeClass('in');
			$('#main_nav_menu_2_dropdownmenu').hide();
			$('#main_nav_hidden_title').hide();
		});
		$('#main_nav_login').mouseleave(function() {
			$('#main_nav_login').removeClass('loginin');
		});
		$('#main_nav_menu6_link').on('click', function() {
			$('#myModal').modal('toggle');
		});

	});
</script>
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
		document.frm.method = "post";
		document.frm.submit();
	} 
	
	function cancelMem(){
		document.frm.action = "main.do";
		document.frm.method = "post";
		document.frm.submit();
	}
	
	
	</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<!-- 모달 시작  -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<span id="modal_title">회원가입</span> <span id="modal_span_1">본인 인증</span> <span id="modal_span_2">정보입력</span> <span id="modal_span_3">가입완료</span>
					</div>

					<div id="registerform_container">
			<form action="" name="frm">
			<div id="registerform_inputform">
			아이디  <input class="info_insert" type="text" name="id" id="id" size="8" maxlength="14"/>
			<span id="id_span"></span><br /><br />
			비밀번호  <input class="info_insert" type="password" name="pw" id="pw1" size="10" maxlength="14"/><br /><br />
			비밀번호 확인  <input class="info_insert" type="password" name="pwck" id="pw2" size="10" maxlength="14"/><span id="pw_span"></span>
			<br /><br />
			이름  <input class="info_insert" type="text" value=${name }  readOnly="readOnly">  <br /><br />
			E-mail  <input class="info_insert" type="text" value=${email } readOnly="readOnly" > <br /><br />
			<input type="hidden" class="info_insert" name="name" id="name" value="${name }" />
			연락처  <input type="text" class="info_insert" id="phone1" size="2" maxlength="3"/>
			<input type="text" id="phone2" size="2" maxlength="4"/>
			<input type="text" id="phone3" size="2" maxlength="4"/><br /><br />
			<input type="hidden" name="phone" id="phone" />
			주소  <input type="text" class="info_insert" name="address" size="50" id="address" placeholder="주소입력" />
			<input type="button" value="주소찾기" onclick="openDaumPostcode()" /><br/><br />
			생년월일  <input type="date" class="info_insert" name="birthdate" id="birthdate" /><br /><br />
			<input type="hidden" name="email" id="email" value="${email }" />
		</div>
		
		<div id="registerform_button">
			<input type="button" value="회원가입" id="regbtn" onclick="regMember()" />
			<input type="button" value="취소"  onclick="cancelMem()" />
		</div>
		</form>
	</div>
				</div>
			</div>
		</div>
		<!-- 모달 종료  -->

		<div id="main_header">
			<div id="main_header_menu1">
				<span style="color: #f70">SHOP</span> | <span> NICE</span>
			</div>
			<div id="main_header_menu2">
				<span id="basketlist"></span> <span>고객센터</span><span id="adminmenu"></span>

			</div>
		</div>
	</header>
	<nav>
		<div id="main_nav">
			<div id="main_nav_menu1"><a href="main.do">나이스</a></div>
			<div id="main_nav_menu2">
				<a href="#" id="main_nav_menu2_link">남성<span>▼</span></a>
			</div>
			<div id="main_nav_menu3">
				<a href="#" id="main_nav_menu3_link">여성<span>▼</span></a>
			</div>
			<div id="main_nav_menu4">
				<a href="#" id="main_nav_menu4_link"> 키즈<span>▼</span></a>
			</div>
			<div id="main_nav_menu5">
				<input type="text" class="form-control" name="" id="" /> <input
					type="button" class="btn btn-default" value="검색">
			</div>
			<div id="main_nav_menu6">
				<a href="#" id="main_nav_menu6_link">회원가입</a>
			</div>
			<div id="main_nav_menu7">
				<a href="#" id="main_nav_menu7_link">로그인<span>▼</span>
				</a>
			</div>
			<div id="main_nav_loginok">
				<a href='#' id='loginafter'><span id="getid">${sessionScope.id }</span>님<br></a>
				<div id='main_nav_loginafter'>
					<a href='#'><span>회원정보수정</span></a><br> <a href='#'><span>구매내역</span></a><br>
					<a href='logout.do'><span>로그아웃</span></a>
				</div>
			</div>
			<input type="hidden" id="idcheck" value="${sessionScope.id }">
			<input type="hidden" id="lvcheck" value="${sessionScope.grade }">
		</div>

		<div id="main_nav_hidden">

			<div id="main_nav_hidden_background"></div>
			<div id="main_nav_hidden_title">Mans Shoes</div>
			<div id="main_nav_hidden_title2">Women Shoes</div>
			<div id="main_nav_hidden_title3">Kids Shoes</div>

			<div id="main_nav_hidden_dropdownmenu_4">
				<table id="main_nav_menu_4_dropdownmenu">
					<tr>


						<td><a href="list.do?category=키즈&gender=남성"><br />남아<br>
								<img src="../niceproject/images/mens2.png"></a></td>
						<td><a href="list.do?category=키즈&gender=여성"><br />여아<br>
								<img src="../niceproject/images/girl.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_3">
				<table id="main_nav_menu_3_dropdownmenu">
					<tr>
						<td><a href="list.do?category=러닝화& gender=여성"><br />러닝<br>
								<img src="../niceproject/images/mens2.png"></a></td>
						<td><a href="list.do?category=스포츠웨어& gender=여성"><br />스포츠웨어<br>
								<img src="../niceproject/images/mens3.png"></a></td>
						<td><a href="list.do?category=트레이닝& gender=여성"><br />트레이닝<br>
								<img src="../niceproject/images/menstr.png"></a></td>
						<td><a href="list.do?category=테니스& gender=여성"><br />테니스<br>
								<img src="../niceproject/images/mentenis.png"></a></td>
						<td><a href="list.do?category=골프& gender=여성"><br />골프<br>
								<img src="../niceproject/images/mens4.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_2">
				<table id="main_nav_menu_2_dropdownmenu">
					<tr>
						<td><a href="list.do?category=러닝화&gender=남성 "><br />러닝<br>
								<img src="../niceproject/images/mens2.png"></a></td>
						<td><a href="list.do?category=스포츠웨어&gender=남성"><br />스포츠웨어<br>
								<img src="../niceproject/images/mens3.png"></a></td>
						<td><a href="list.do?category=트레이닝&gender=남성"><br />트레이닝<br>
								<img src="../niceproject/images/menstr.png"></a></td>
						<td><a href="list.do?category=테니스&gender=남성"><br />테니스<br>
								<img src="../niceproject/images/mentenis.png"></a></td>
						<td><a href="list.do?category=골프&gender=남성"><br />골프<br>
								<img src="../niceproject/images/mens4.png"></a></td>
						<td><a href="list.do?category=농구&gender=남성"><br />농구<br>
								<img src="../niceproject/images/mens8.png"></a></td>
						<td><a href="list.do?category=조던&gender=남성"><br />조던<br>
								<img src="../niceproject/images/mens7.png"></a></td>
						<td><a href="list.do?category=축구&gender=남성"><br />축구<br>
								<img src="../niceproject/images/mens1.png"></a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="main_nav_login">
			<h4>나이스 닷컴 로그인</h4>
			<form id="loginform">
				<input type="text" name="id" placeholder="아이디를 입력하세요"
					class="form-control" /> <input type="password" name="pw"
					placeholder="암호를 입력하세요" class="form-control" /> <input
					type="checkbox">아이디 저장하기 <span id="searchid">&nbsp;아이디
					찾기 </span>&nbsp; 패스워드 찾기 <input type="button" value="로그인" class="btn">
			</form>
		</div>






	</nav>
	<article>
		<div id="main_article"></div>
	</article>

</body>
</html>