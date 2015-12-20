<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
%>
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
	top: -300px;
}

.modal-backdrop {
	top: -300px;
}

.modal-content {
	margin-top: 50%;
	width: 860px;
	margin-left: -15%;
	border-radius: 0px;
}
/* header */
#main_header {
	position: relative;
	height: 30px;
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
	position: relative;
	height: 50px;
	background: url(../niceproject/images/bg_gnb1.png) 0 0 repeat-x;
	z-index: 200;
	border-bottom: 1px solid #aaaaaa;
	box-shadow: 2px 2px 4px;
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
	display:none;
	position: absolute;
	top: 50px;
	right: 0px;
	width: 150px;
	height: 100px;
	font-size: 16px;
	font-weight: bolder;
	border:0px;
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

#main_nav_login input[type="text"] {
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
	margin-top: -250px;
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
	opacity: 0.4;
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
	transform: translateY(250px);
}

/* artice */
#main_article {
	width: 100%;
	min-height:400px;
}


</style>
<script type="text/javascript">
	$(function() {

		if ($('#idcheck').val() != "null") {
			$('#main_nav_menu7').html("");
			$('#main_nav_menu6, #main_nav_login').css("display", "none");
			$('#main_nav_menu7').css('width', '150px');
			$('#main_nav_menu7')
					.html(
							"<a href='#' id='loginafter'>"
									+ $('#idcheck').val()
									+ "님<br><div id='main_nav_loginafter'><a href='#'><span>회원정보수정</span><br></a><a href='#'><span>구매내역</span></a><br><a href='\logout.do'><span>로그아웃</span></a></div>");
			$('#main_nav_menu5').css('right', '150px');
		}
		$('[value="로그인"]').on('click', function() {
			$.ajax({
				url : 'loginOk.do',
				type : 'post',
				data : $('#loginform').serialize(),
				success : function(data) {
					$("#idcheck").val(data);
					$('#main_nav_menu7').html("");
					$('#main_nav_menu6, #main_nav_login').css("display", "none");
					$('#main_nav_menu7').css('width', '150px');
					$('#main_nav_menu5').css('right', '150px');
					$('#main_nav_menu7').html(
									"<a href='#' id='loginafter'>"
											+ $('#idcheck').val()
											+ "님<br><div id='main_nav_loginafter'><a href='#'><span>회원정보수정</span><br></a><a href='#'><span>구매내역</span></a><br><a href='\logout.do'><span>로그아웃</span></a></div>");
				}
			})
		});

		$('#loginafter').hover(function() {
			$('#main_nav_menu7').addClass('char').css('height', '150px');
			$('#main_nav_loginafter').show();
		});

		$('#main_nav_loginafter').mouseleave(function() {
			$('#main_nav_menu7').removeClass('char').css('height', '50px');
			$('#main_nav_loginafter').hide();
		})

		$('#main_nav_menu2_link')
				.hover(
						function() {

							$('#main_nav_login').removeClass('loginin');
							$(
									'#main_nav_hidden_dropdownmenu_3,	#main_nav_hidden_dropdownmenu_4,#main_nav_menu_3_dropdownmenu,	#main_nav_menu_4_dropdownmenu, #main_nav_hidden_title3,#main_nav_hidden_title2')
									.hide();
							$('#main_nav_hidden_title').show()
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
									'#main_nav_menu_2_dropdownmenu,#main_nav_menu_3_dropdownmenu,#main_nav_menu_4_dropdownmenu,#main_nav_hidden_dropdownmenu_2,#main_nav_hidden_title,#main_nav_hidden_title2')
									.hide();
							$('#main_nav_hidden_title3').hide();
						});
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
							$('#main_nav_hidden_background').css(
									'background-color', 'pink');
							$('#main_nav_hidden').addClass('in');
							$('#main_nav_hidden_dropdownmenu_3').delay()
									.fadeIn();
							$('#main_nav_menu_3_dropdownmenu').delay().fadeIn();
							$('#main_nav_hidden_dropdownmenu_2').delay().hide();
							$('#main_nav_hidden_dropdownmenu_4').delay().hide();
							$('main_nav_menu_2_dropdownmenu').delay().hide();
							$('main_nav_menu_4_dropdownmenu').delay().hide();

						});
		$('#main_nav_menu4_link').hover(
				function() {
					$('#main_nav_login').removeClass('loginin');
					$('#main_nav_hidden_dropdownmenu_2').hide();
					$('#main_nav_hidden_dropdownmenu_3').hide();
					$('main_nav_menu_2_dropdownmenu').hide();
					$('main_nav_menu_3_dropdownmenu').hide();
					$('#main_nav_hidden_title').hide();
					$('#main_nav_hidden_title2').hide();
					$('#main_nav_hidden_title3').show();
					$('#main_nav_hidden_background').css('background-color',
							'#f8d24B');
					$('#main_nav_hidden').addClass('in');
					$('#main_nav_hidden_dropdownmenu_4').delay().fadeIn();
					$('#main_nav_menu_4_dropdownmenu').delay().fadeIn();
					$('#main_nav_hidden_dropdownmenu_2').delay().hide();
					$('#main_nav_hidden_dropdownmenu_3').delay().hide();
					$('main_nav_menu_2_dropdownmenu').delay().hide();
					$('main_nav_menu_3_dropdownmenu').delay().hide();

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
						<h4 class="modal-title" id="myModalLabel">회원가입</h4>
						<hr>
						<div>
							id<input type="text" /><br> pw<input type="text" />
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
				<span>장바구니</span> <span>고객센터</span>

			</div>
		</div>
	</header>
	<nav>
		<div id="main_nav">
			<div id="main_nav_menu1">나이스</div>
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
			<input type="hidden" id="idcheck" value="<%=id%>">
		</div>

		<div id="main_nav_hidden">

			<div id="main_nav_hidden_background"></div>
			<div id="main_nav_hidden_title">Mans Shoes</div>
			<div id="main_nav_hidden_title2">Women Shoes</div>
			<div id="main_nav_hidden_title3">Kids Shoes</div>

			<div id="main_nav_hidden_dropdownmenu_4">
				<table id="main_nav_menu_4_dropdownmenu">
					<tr>
						<td><a href=# id="sss"><br />남아<br> <img
								src="../niceproject/images/mens2.png"></a></td>
						<td><a href=#><br />여아<br> <img
								src="../niceproject/images/mens2.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_3">
				<table id="main_nav_menu_3_dropdownmenu">
					<tr>
						<td><a href=# id="sss"><br />러닝<br> <img
								src="../niceproject/images/mens2.png"></a></td>
						<td><a href=#><br />스포츠웨어<br> <img
								src="../niceproject/images/mens2.png"></a></td>
						<td><a href=#><br />트레이닝<br> <img
								src="../niceproject/images/mens3.png"></a></td>
						<td><a href=#><br />테니스<br> <img
								src="../niceproject/images/mens4.png"></a></td>
						<td><a href=#><br />골프<br> <img
								src="../niceproject/images/mens5.png"></a></td>
					</tr>
				</table>
			</div>
			<div id="main_nav_hidden_dropdownmenu_2">
				<table id="main_nav_menu_2_dropdownmenu">
					<tr>
						<td><a href=# id="sss"><br />러닝<br> <img
								src="../niceproject/images/mens2.png"></a></td>
						<td><a href=#><br />스포츠웨어<br> <img
								src="../niceproject/images/mens2.png"></a></td>
						<td><a href=#><br />트레이닝<br> <img
								src="../niceproject/images/mens3.png"></a></td>
						<td><a href=#><br />테니스<br> <img
								src="../niceproject/images/mens4.png"></a></td>
						<td><a href=#><br />골프<br> <img
								src="../niceproject/images/mens5.png"></a></td>
						<td><a href=#><br />농구<br> <img
								src="../niceproject/images/mens7.png"></a></td>
						<td><a href=#><br />조던<br> <img
								src="../niceproject/images/mens7.png"></a></td>
						<td><a href=#><br />축구<br> <img
								src="../niceproject/images/mens1.png"></a></td>
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
		<div id="main_article">

		</div>


	</article>

</body>
</html>