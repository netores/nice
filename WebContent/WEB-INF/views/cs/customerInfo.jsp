<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
	table{
		width:500px;
	}
	#infocontainer{
		margin-top:28px;
		margin:0 auto;
		text-align: center;
		
	}
	#infoContainer_context{
		width:40%;
		margin: 0 30%;
		
	}
	#line{
		width:600px;
	}
		
	#nav{
		width:10%;
		float:left;
		margin-left: 20px;
	}
</style>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

	<div id="infoContainer">
	<div id="nav">
	<ul class="nav nav-pills nav-stacked">
  		<li role="presentation" class="active"><a href="<c:url value='/customerInfo.do'/>">회원정보</a></li>
		<li role="presentation" ><a href="<c:url value='/orderInfo.do'/>">주문결제</a></li>
		<li role="presentation" ><a href="<c:url value='/deliveryInfo.do'/>">배송</a></li>
		<li role="presentation" ><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" ><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" ><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>회원정보</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		<strong><p>회원 가입은 어떻게 하나요?</p></strong><br/>
		<p> 
		사이트 왼쪽 메뉴에서 회원가입을 클릭하시면 회원가입화면으로 이동하며, 
		직접 가입하시면 됩니다 고객아이디는 개별 회원에게 하나의 아이디만 부여됩니다. (중복아이디 사용불가)
		</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>14세 미만 회원가입 가능 한가요?</p></strong><br/>
			<p> 
			 만 14세 미만은 회원가입이 불가능 합니다.
			</p> 
		</td>		
	</tr>
	<tr>
		<td>
			<strong><p>실명 인증 확인 오류 시 어떻게 하나요?</p></strong><br/>
			<p> 
			 고객님의 실명확인에 사용되는 정보는 은행연합회로 집중되는 금융권 정보와 서울신용평가 SIREN24의 기업회원을 통해 집중되는 정보가 사용됩니다. 이러한 신용정보는 해당 기관(업체)들이 고객과의 상거래(신용카드 발급 등) 발생시 취합 되는 정보들인데, 정보를 입력하는 과정에서 주민번호 및 성명정보를 잘못 기입하는 경우가 있습니다.
			 (예) 라가명 → 나가명, 나불량 → 나불양, 홍길동 → 홍길도
			 본인이 실명임에도 불구하고 일치하지 않는다고 나타나는 경우는 대부분 이런 이유이므로 실명확인고객센터를 통해서 개인 신용정보DB를 수정하실 수 있습니다.

			</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>회원 아이디와 패스워드를 잊어버렸습니다.</p></strong><br/>
			<p> 
			회원 아이디와 패스워드는 홈페이지 좌측 하단의 <로그인>을 클릭 하시어 이동한 로그인 창에서 아이디 찾기 또는 패스워드 찾기 버튼을 통해 확인 하실 수 있습니다.
			 <아이디 찾기 >
			로그인 창에서 아이디 찾기 버튼을 클릭하여 이동한 페이지에서 회원이름과 이메일주소를 입력하고 확인을 클릭하시면 웹에서 바로 아이디를 확인하실 수 있습니다.
			 <패스워드 찾기>
			로그인 창에서 패스워드 찾기 버튼을 클릭하여 이동한 페이지에서 회원이름, 아이디, 이메일주소를 입력하고,
			일치할 경우 입력하신 이메일로 임시번호 발송
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>회원 아이디와 패스워드를 잊어버렸습니다.</p></strong><br/>
			<p> 
			회원 아이디와 패스워드는 홈페이지 좌측 하단의 <로그인>을 클릭 하시어 이동한 로그인 창에서 아이디 찾기 또는 패스워드 찾기 버튼을 통해 확인 하실 수 있습니다.
			 <아이디 찾기 >
			로그인 창에서 아이디 찾기 버튼을 클릭하여 이동한 페이지에서 회원이름과 이메일주소를 입력하고 확인을 클릭하시면 웹에서 바로 아이디를 확인하실 수 있습니다.
			 <패스워드 찾기>
			로그인 창에서 패스워드 찾기 버튼을 클릭하여 이동한 페이지에서 회원이름, 아이디, 이메일주소를 입력하고,
			일치할 경우 입력하신 이메일로 임시번호 발송
			</p> 
		
		
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>패스워드를 변경하고 싶습니다.</p></strong><br/>
			<p> 
			나이키닷컴 로그인 후 <회원정보관리>을 클릭 하여 이동한 페이지에서 <패스워드 재발급>을 클릭 하시면 됩니다. 패스워드는 회원님의 안전한 정보보호를 위해 비밀번호를 주기적으로 변경할 것을 권해드립니다. 쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호와 같으면 도용될 수 있으니 주의하세요. 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>회원정보는 어떻게 변경하나요?</p></strong><br/>
			<p> 
				홈페이지에 로그인 하신 후 좌측 하단 <회원정보관리>메뉴를 클릭 하시면 이동한 페이지에서 변경하실 수 있습니다. 휴대폰과 이메일 주소, 배송지 주소는 주문 시 배송정보 등 서비스와 관련된 정보를 제공 받으실 수 있으니 변경 되었을 경우 수정해 주시길 권장 드립니다.
 <주의사항>
1. 회원 이름/아이디는 변경이 불가합니다.
2. 패스워드, 성별, 생년월일, 연락처, 휴대폰, E-Mail주소 및 배송지 주소는 변경이 가능합니다. 
			</p> 
		
		</td>
	</tr>
</table>
</div>
</div>

<footer>
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