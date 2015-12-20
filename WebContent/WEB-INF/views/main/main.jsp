<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	src: url('font/NanumGothicExtraBold.ttf')
}

html, body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
}

div {
	display: block;
}
/* artice */
#main_article {
	width: 100%;
	background-color: black;
}

#main_article_background_img {
	width: 100%;
	background-image: url();
}

#main_article_background {
	position: relative;
}

#main_article_greeting {
	position: absolute;
	width: 20%;
	height: 20%;
	top: 30%;
	left: 40%;
}

#main_article_greeting2 {
	position: absolute;
	width: 24%;
	height: 24%;
	top: 35%;
	left: 73%;
}

#main_article_greeting img {
	width: 100%;
}

#main_article_2 {
	position: relative;
	display: none;
}

#main_article_3 {
	position: relative;
	display: none;
}

#main_article_4 {
	position: relative;
	display: none;
}

#main_article_radio {
	position: absolute;
	width: 10%;
	height: 10%;
	top: 90px;
	left: 45%;
	z-index: 200px;
	display:none;
}

/* footer */
#main_footer {
	padding: 28px;
	color: #ddd;
	background: #555;
}
</style>
<script type="text/javascript">
	$(function() {

		$('[name="tab"]').on('click', function() {
			if ($('#tab1')[0].checked == true) {
				$('#main_article_2, #main_article_3 ,#main_article_4').hide();
				$('#main_article_1').fadeIn(500);
			}
			if ($('#tab2')[0].checked == true) {
				$('#main_article_1, #main_article_3 ,#main_article_4').hide();
				$('#main_article_2').fadeIn(500);
			}
			if ($('#tab3')[0].checked == true) {
				$('#main_article_1, #main_article_2 ,#main_article_4').hide();
				$('#main_article_3').fadeIn(500);
			}
			if ($('#tab4')[0].checked == true) {
				$('#main_article_1, #main_article_2 ,#main_article_3').hide();
				$('#main_article_4').fadeIn(500);
			}
		});

		run();
	});

	function run() {
		var count = 1;
		setInterval(function() {

			if (count == 4) {
				$('#tab1').prop('checked', true);
				$('#tab4').prop('checked', false);
			}

			if (count == 3) {
				$('#tab4').prop('checked', true);
				$('#tab3').prop('checked', false);
			}

			if (count == 2) {
				$('#tab3').prop('checked', true);
				$('#tab2').prop('checked', false);
			}
			if (count == 1) {
				$('#tab2').prop('checked', true);
				$('#tab1').prop('checked', false);
			}
			count++;
			if (count == 5) {
				count = 1;
			}
			mainChange();
		}, 10000);
	}

	function mainChange() {
		if ($('#tab1')[0].checked == true) {
			$('#main_article_2, #main_article_3 ,#main_article_4').hide();
			$('#main_article_1').fadeIn(1000);
		}
		if ($('#tab2')[0].checked == true) {
			$('#main_article_1, #main_article_3 ,#main_article_4').hide();
			$('#main_article_2').fadeIn(1000);
		}
		if ($('#tab3')[0].checked == true) {
			$('#main_article_1, #main_article_2 ,#main_article_4').hide();
			$('#main_article_3').fadeIn(1000);
		}
		if ($('#tab4')[0].checked == true) {
			$('#main_article_1, #main_article_2 ,#main_article_3').hide();
			$('#main_article_4').fadeIn(1000);
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <jsp:include page="../main/header.jsp" />
	<article>
		<div id="main_article">
			<div id="main_article_1" class="tab1_content">
				<div id="main_article_background">
					<img id="main_article_background_img"
						src="images/p1_151013_nrcseoul_700px.png">
				</div>
				<div id="main_article_greeting">
					<img
						src='images/p1_151019_nrcseoul_700px_title2.png'>
				</div>
			</div>
			<div id="main_article_2" class="tab2_content">
				<div id="main_article_background">
					<img id="main_article_background_img"
						src="images/p1_151008_bb_700px.png">
				</div>

				<div id="main_article_greeting2">
					<img src='images/p1_151008_bb_700px_title.png'>
				</div>
			</div>
			<div id="main_article_3" class="tab3_content">
				<div id="main_article_background">
					<img id="main_article_background_img"
						src="images/p1_151014_HP_700px.png">
				</div>
				<div id="main_article_greeting">
					<img
						src='images/p1_151019_nrcseoul_700px_title2.png'>
				</div>
			</div>
			<div id="main_article_4" class="tab4_content">
				<div id="main_article_background">
					<img id="main_article_background_img"
						src="images/p1_151020_techbook_700px.png">
				</div>
				<div id="main_article_greeting">
					<img
						src='images/p1_151019_nrcseoul_700px_title2.png'>
				</div>
			</div>
			<div id="main_article_radio">
				<input id="tab1" type="radio" name="tab" checked="checked" /> <input
					id="tab2" type="radio" name="tab" /> <input id="tab3" type="radio"
					name="tab" /> <input id="tab4" type="radio" name="tab" />
			</div>
		</div>


	</article>
	<footer>
		<div id="main_footer">
			회사소개 | 매장안내 | 회원가입 | 주문배송조회 | 교환 및 반품 | 영수증 신청 | 나이스 고객센터 0000-0000
			service@nice.co.kr <br> 대한민국 이용약관 개인정보취급(처리)방침<br> <br>
			(주)나이스코리아 대표 : 이동윤 <br> 서울시 종로구 하늘빌딩 3/4/5 HBI기술연구소<br>
			통신판매업신고번호 : 2015-그런거없어-3333 / 사업자등록번호 000-00-00000 개인정보관리책임자 : 구교흠
			정보보호최고책임자 : 박용화 대표번호 0000-0000
		</div>
	</footer>
</body>
</html>