<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">


</script>
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
		margin-top: 28px;
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
	#btn1{
		
	}
</style>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<div id="infoContainer">
	<div id="nav">
	<ul class="nav nav-pills nav-stacked">
  		<li role="presentation" ><a href="<c:url value='/customerInfo.do'/>">회원정보</a></li>
		<li role="presentation" ><a href="<c:url value='/orderInfo.do'/>">주문결제</a></li>
		<li role="presentation" ><a href="<c:url value='/deliveryInfo.do'/>">배송</a></li>
		<li role="presentation" ><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" ><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" class="active"><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>기타</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		<strong><p>오프라인 매장위치 및 연락처를 알고 싶어요.</p></strong><br/>
		<p> 
		<a href="http://info.nike.co.kr/os/store/s.jsp?s=" target="_blank">매장 위치 바로가기</a>
		</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>고객센터 전화번호와 운영시간을 알려주세요</p></strong><br/>
			<p> 
			 - 전화번호 : 1577-1360 / FAX : (02) 3668 - 8900
			- 운영시간 : 월~일 09:00~20:00 (설날, 추석 연휴 제외) 
			</p> 
		</td>		
	</tr>
	<tr>
		<td>
			<strong><p>1:1 E-Mail 내역은 어디에서 확인하나요?</p></strong><br/>
			<p> 
			홈페이지 우측 상단에서 [my쇼핑정보] 메뉴를 클릭하면 이동한 페이지에서 확인하실 수 있습니다. 상단 메뉴 중 1:1 E-mail 내역을 클릭하시면 문의내역 및 답변내역을 조회하실 수 있습니다. 또한 문의내용 작성 시 입력해 주신 이메일로도 답변내용을 전송해 드립니다.
			</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>[IE7] 매번 보안 표시줄이 나타나서 번거롭습니다. 좋은 방법이 없을까요?</p></strong><br/>
			<p> 
			해당 사이트를 신뢰할 수 있는 사이트 목록에 등록하십시오. 메뉴 → 인터넷 옵션 → 보안 → 사이트에서 웹 사이트를 추가하면 됩니다.
신뢰된 사이트의 보안 설정을 별도로 지정 가능하며, 적절한 보안 수준으로 낮춰 변경하면 됩니다. 일반적인 인터넷 사이트들은 신뢰할 수 있는 사이트로 추가하는 것을 권장하지 않습니다. 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>[사이트이용] 결제하려는데 안심클릭 오류가 납니다 (ActiveX 재설정 방법)</p></strong><br/>
			<p> 
			고객님 pc에 설치된 안심클릭 처리관련 프로그램이 제대로 동작하지 않는 경우가 있습니다 브라우저 상단 도구 → 인터넷옵션 → 설정 부분에서 저장된 페이지의 새 버전 확인을 '페이지를 열 때마다로 선택합니다.
같은 페이지의 개체보기'버튼을 눌러  AnsimPluigin Class   XacsPop Control 위 두개의 액티브엑스 파일이 있다면 삭제합니다 다시 결제페이지로 들어가셔서 새로운 액티브 엑스(Active X)를 설치하신후 결제를 진행해 보세요. 위 파일들이 아예 보이지 않는다면, 고객님 PC의 브라우져에서 안심클릭 Active X 설치를 막는 원인을 찾아 수정해 주셔야 합니다 사용하시는 악성코드나 개인 방화벽 프로그램이 있는 경우, 설정에서 Active X 차단이 설정이 되어 있는지 확인후 해제해주세요 결제페이지에서 Active X 다운시에 주소창아래  팝업이 차단이 되었다는 메세지가 보일 경우 팝업이 차단되었습니다. 팝업 또는 추가 옵션을 보려면 여기를 클릭하십시오' 라는 경고창을 클릭합니다 현 사이트의 팝업을 항상 허용을 클릭합니다'현재 사이트의 팝업 창을 허용하시겠습니까?'에서 '예'를 클릭 합니다.인터넷창 맨위의 '도구-팝업차단-팝업차단 설정'을 클릭하여 허용할 웹사이트 주소에  *.nikestore.co.kr을 입력하고 추가버튼을 누릅니다 브라우져를 닫은 후 새로 열어서 나이키닷컴 결제페이지로 들어갑니다. 
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