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
 
 .modal-backdrop.fade.in {
    z-index: -100;
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
	background: url(images/bg_gnb1.png) 0 0 repeat-x;
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
	background: url(images/pattonunder.png) 0 0 repeat-x;
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
	background: url(images/pattonunder.png) 0 0 repeat-x;
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
	min-height: 400px;
}

/* 회원가입 */
</style>

<style type="text/css">
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
    background-color: #f70; 
    }
    #modal_span_2{
    position: absolute;
    top:10px;
    right:127px;  
    }
    #modal_span_3{
    position: absolute;
    top:10px;
    right:50px;
    }
</style>



<script type="text/javascript">
	$(function() {

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
	$(document).ready(function() {
		$("#email").on('keyup', ckEmail);
	});

	function ckEmail() {
		$.ajax({
			url : "<c:url value='/ckEmail.do'/>",
			type : "get",
			data : {
				email : $('#email').val()
			},
			success : function(data) {
				$('#email_span').html(data);
				console.log(msg);
			}

		});
	}

	
	function next() {
		if ($("#name").val() == "") {
			alert("이름을 입력해주세요");
			return;
		}

		if ($("#email").val() == "") {
			alert("E-mail을 입력해주세요");
		}else if($('#email_span').html().trim()==("중복되는 Email입니다.")){
			alert("이메일이 중복됩니다!");
		}else{
			
			document.frm.action = "registerForm.do";
			document.frm.method = "get";
			document.frm.submit();
		}

		
	}

	function cancel() {
		document.frm.action = "main.do";
		document.frm.method = "get";
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

					<div class="container">


						<div id="input_data">
							<span> 본인인증</span> <br /> <br />
							<form action="" name="frm">
								<div class="input-group">
									<div id="name_div">이름</div>
									<div id="inpname_div">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="이름" aria-describedby="basic-addon1" />
									</div>
								</div>
								<div class="input-group">
									<div id="email_div">E-mail</div>
									<div id="inpemail_div">
										<input type="text" class="form-control" id="email"
											name="email" placeholder="E-mail address"
											aria-describedby="basic-addon1" />
									</div>
									<div id="emailspan_div">
										<span id="email_span"></span>
									</div>
								</div>
								<hr>
								<div class="btn-group">
									<button type="button" class="btn btn-warning"
										style="width: 100px; height: 50px;" onclick="cancel()">취소
									</button>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-warning"
										style="width: 100px; height: 50px;" onclick="next()">다음</button>
								</div>
							</form>
						</div>
						<div id="law">
							2012년 8월 18일부터 시행되는 『정보통신망 이용 촉진 및 정보보호등에 관한 법률(이하 정보통신망법)』 제23조의
							2”주민등록번호의 사용 제한”에 따라 나이키닷컴 내 모든 서비스에서 주민등록번호를 입력받지 않습니다. 이에 따라
							나이키닷컴의 회원으로 가입하실 때는 주민등록번호를 입력하는 실명인증 대신 이메일을 이용하여 본인인증 하셔야 합니다.
							<br>
							<br>입력하신 이메일로 가입승인 메일이 발송됩니다.<br> <b>회원가입요청 완료 후
								24시간 이내 본인인증 메일을 확인</b> 하시면 회원가입이 최종 완료됩니다.
						</div>
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
				<span id="basketlist"></span> <span><a href="customerService.do">고객센터</a></span><span id="adminmenu"></span>

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
					<a href='corrUserInfo.do'><span>회원정보수정</span></a><br> <a href='orderlist.do'><span>구매내역</span></a><br>
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
								<img src="images/mens2.png"></a></td>
						<td><a href="list.do?category=키즈&gender=여성"><br />여아<br>
								<img src="images/girl.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_3">
				<table id="main_nav_menu_3_dropdownmenu">
					<tr>
						<td><a href="list.do?category=러닝화&gender=여성"><br />러닝<br>
								<img src="images/mens2.png"></a></td>
						<td><a href="list.do?category=스포츠웨어&gender=여성"><br />스포츠웨어<br>
								<img src="images/mens3.png"></a></td>
						<td><a href="list.do?category=트레이닝&gender=여성"><br />트레이닝<br>
								<img src="images/menstr.png"></a></td>
						<td><a href="list.do?category=테니스&gender=여성"><br />테니스<br>
								<img src="images/mentenis.png"></a></td>
						<td><a href="list.do?category=골프&gender=여성"><br />골프<br>
								<img src="images/mens4.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_2">
				<table id="main_nav_menu_2_dropdownmenu">
					<tr>
						<td><a href="list.do?category=러닝화&gender=남성 "><br />러닝<br>
								<img src="images/mens2.png"></a></td>
						<td><a href="list.do?category=스포츠웨어&gender=남성"><br />스포츠웨어<br>
								<img src="images/mens3.png"></a></td>
						<td><a href="list.do?category=트레이닝&gender=남성"><br />트레이닝<br>
								<img src="images/menstr.png"></a></td>
						<td><a href="list.do?category=테니스&gender=남성"><br />테니스<br>
								<img src="images/mentenis.png"></a></td>
						<td><a href="list.do?category=골프&gender=남성"><br />골프<br>
								<img src="images/mens4.png"></a></td>
						<td><a href="list.do?category=농구&gender=남성"><br />농구<br>
								<img src="images/mens8.png"></a></td>
						<td><a href="list.do?category=조던&gender=남성"><br />조던<br>
								<img src="images/mens7.png"></a></td>
						<td><a href="list.do?category=축구&gender=남성"><br />축구<br>
								<img src="images/mens1.png"></a></td>
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