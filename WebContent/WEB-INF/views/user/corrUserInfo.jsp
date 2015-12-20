<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#registerform_container {
	margin-left: 840px;
	margin-top: 282px;
	position: absolute;
	left: 0px;
}
/* 회원가입 */
div#registerform_container {
	position: absolute;
	border: 1px solid #eee;
	padding: 20px;
	border-radius: 5px;
	left: 50%;
	width: 700px;
	margin-left: -350px;
	margin-top: 150px;
	
}

.info_insert {
	position: absolute;
	left: 150px;
}

#phone2 {
	position: absolute;
	left: 200px;
}

#phone3 {
	position: absolute;
	left: 250px;
}

#registerform_button {
	text-align: center;
}

[value="주소찾기"] {
	position: absolute;
	left: 533px;
}

#id_span, #pw_span {
	position: absolute;
	left: 350px;
}

h1 {
	position: absolute;
	top: 100px;
	left: 44%;
	text-shadow: 1px 1px 3px;
}

div#main_footer {
    position: absolute;
    width: 100%;
    top: 700px;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	var pw_flag;
	$(document).ready(function() {
		$("#pw2").on('keyup', ckPw);
	});

	function ckPw() {
		if ($("#pw1").val() == $("#pw2").val()) {
			$("#pw_span").html("<h4>비밀번호 일치</h4>");
			pw_flag = true;
		} else {
			$("#pw_span").html("<h4>비밀번호 불일치</h4>");
			pw_flag = false;
		}
	}

	function openDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
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
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('address').value = data.zonecode
								+ " " + fullAddr;

					}
				}).open();
	}

	function corrMember() {

		if ($("#pw1").val() == "") {
			alert("비밀번호를 입력해주세요");
			return;
		}

		if ($("#pw2").val() == "") {
			alert("비밀번호를 입력해주세요");
			return;
		}

		if (pw_flag == false) {
			alert("pw가 다릅니다.");
			$("#pw1").val("");
			$("#pw2").val("");
			return;
		}

		if ($("#phone1").val() == "") {
			alert("통신사를 입력해주세요");
			return;
		}

		if ($("#phone2").val() == "") {
			alert("전화번호1을 입력해주세요");
			return;
		}

		if ($("#phone3").val() == "") {
			alert("전화번호2를 입력해주세요");
			return;
		}

		if ($("#address").val() == "") {
			alert("주소를 입력해주세요");
			return;
		}

		if ($("#birthdate").val() == "") {
			alert("생일을 입력해주세요");
			return;
		}

		//전화번호 3자리 합해서 넣는다.
		document.getElementById('phone').value = document
				.getElementById('phone1').value
				+ "-"
				+ document.getElementById('phone2').value
				+ "-"
				+ document.getElementById('phone3').value;

		document.frm.action = "registerOk.do";
		document.frm.method = "post";
		document.frm.submit();
	}

	function cancel() {
		document.frm.action = "main.do";
		document.frm.method = "post";
		document.frm.submit();
	}
</script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />

	<h1>회원정보 수정</h1>
	<div id="registerform_container">
		<form action="" name="frm">
			<div id="registerform_inputform">
				아이디 <input class="info_insert" type="text"
					value="${sessionScope.id }" readonly="readonly" name="id" id="id"
					size="8" maxlength="14" /> <span id="id_span"></span><br />
				<br /> 비밀번호 <input class="info_insert" type="password" name="pw"
					id="pw1" size="10" maxlength="14" /><br />
				<br /> 비밀번호 확인 <input class="info_insert" type="password"
					name="pwck" id="pw2" size="10" maxlength="14" /><span id="pw_span"></span>
				<br />
				<br /> 이름 <input class="info_insert" type="text"
					value=${UserDto.name } readOnly="readOnly"> <br />
				<br /> E-mail <input class="info_insert" type="text"
					value=${UserDto.email } readOnly="readOnly"> <br />
				<br /> <input type="hidden" class="info_insert" name="name"
					id="name" value="${UserDto.name }" /> 연락처 
				<input type="text" class="info_insert" name="phone" id="phone" value="${UserDto.phone }"/>
				<br /><br /> 주소 <input
					type="text" class="info_insert" name="address" size="50"
					id="address" value="${UserDto.address }" /> <input type="button"
					value="주소찾기" onclick="openDaumPostcode()" /><br />
				<br />  <input type="hidden" class="info_insert" name="birthdate"
					id="birthdate" value="${UserDto.birthdate }" /><br />
				<br /> <input type="hidden" name="email" id="email"
					value="${UserDto.email }" />
					<br>
			</div>
			<div id="registerform_button">
				<input type="button" value="회원정보수정" id="corrbtn"
					onclick="corrMember()" /> <input type="button" value="취소"
					onclick="cancel()" />
			</div>
		</form>
	</div>

	<footer >
		<div id="main_footer" style="padding: 28px; color: #ddd; background: #555;">
			회사소개 | 매장안내 | 회원가입 | 주문배송조회 | 교환 및 반품 | 영수증 신청 | 나이스 고객센터 0000-0000
			service@nice.co.kr <br> 대한민국 이용약관 개인정보취급(처리)방침<br> <br>
			(주)나이스코리아 대표 : 이동윤 <br> 서울시 종로구 하늘빌딩 3/4/5 HBI기술연구소<br>
			통신판매업신고번호 : 2015-그런거없어-3333 / 사업자등록번호 000-00-00000 개인정보관리책임자 : 구교흠
			정보보호최고책임자 : 박용화 대표번호 0000-0000
		</div>
	</footer>
</body>
</html>