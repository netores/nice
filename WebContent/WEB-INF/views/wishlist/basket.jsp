<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
	

	$(function() {

		var total = 0;
		var $trum = $(".table_rows_num");
		for (var i = 0; i < $trum.length; i++) {
			//합계찍기
			var sum = parseInt($trum.eq(i).find('td:eq(3)').html());
			total += parseInt(sum);

			//이미지 ,에서짜르기
			var table_rows_num_img_val = $trum.eq(i).find(':eq(1)').html()
					.split(",");
			var value1 = table_rows_num_img_val[0];
			$trum.eq(i).find(':eq(1)').html("<img src="+value1+">");
		}
		$('#sum').html(total);

	

	})
</script>

<style type="text/css">
html body{
font-size:14px;
}

#wishlist_Container {
	width: 850px;
	height: 644px;
	margin: 0 auto;
	text-align: center;
}

#wishlist_header {
	width: 850px;
	height: 38px;
	margin: 0 auto;
}

img {
	width: 130px;
}

table.table.table-hover {
	
	margin-left: 0;
	border-top: 2px solid;
}

#wishlist_context_notice span
{
	color:#fa5400;
}

#wishlist_context_notice p
{
color:#434343; 
padding-bottom:7px;
}

.row {
	width: 968px;
	margin-top:28px;
	margin-left: -15px;
	
}
hr {
margin-top:4px;
border: 1px solid;
}

#wishlist_context_notice{
padding: 20px 0 0px;
/* margin-top:28px; */
}

tr#wishlist_table_1line td {
    height: 10px;
    padding: 4px;
    }
    
#context_field
{
	
		text-align: center;
	    font-weight: bold; 
	    margin: 0 auto;
} 

#table_rows_num_sum
{
	color:#fa5400;
}

#sum
{
	color:#fa5400;
	font-size: 18px;
}

.wishlist_table_line
{
	    text-align: right;
}

.table>tbody>tr>td, 
.table>tbody>tr>th, 
.table>tfoot>tr>td, 
.table>tfoot>tr>th, 
.table>thead>tr>td, 
.table>thead>tr>th {
  
    vertical-align: middle;
 
}


tr.table_rows_num span
{
	text-align:center;
	vertical-align:middle;
	margin-top: 20px; 
	height: 147px;
}

	#wishlist_table_1line_td1
	{
		width: 20%;
	}
	#wishlist_table_1line_td2
	{
	width: 20%;
	}
	#wishlist_table_1line_td3
	{
	width: 20%;
	}
	#wishlist_table_1line_td4
	{
	width: 13%;
	}
	#wishlist_table_1line_td5
	{
	width: 14%;
	}
	#wishlist_table_1line_td6
	{
	width: 13%;
	}

#basket_table_goodsname{
	text-align: left;
	font-weight: bold;
	font-size:14px;
	
}
#basket_table_context{
	text-align: left;
	font-size:9px;
	color:gray;
	
}
.middle_text
{	vertical-align: middle !important;}
</style>




<title>Insert title here</title>
</head>
<body>
<jsp:include page="../main/header.jsp" />
	<div id=wishlist_Container>
		<header>


		<div id=wishlist_header>

			<div class="row">

				<div class="col-md-1">
					<input type="image" src="images/jang1.gif" alt="" />
				</div>
				<div class="col-md-5"></div>
				<div class="col-md-3">
					<input type="image" src="images/jang2.gif" alt="" />
				</div>

			</div>
			<div id="wishlist_header_hr">
				<hr />
			</div>
		</div>
		</header>
		<nav> </nav>
		<!-- ------------------------------------------------------- -->
		<context>
		<div id="context_field">

			<div id="wishlist_context_notice">
				<p>장바구니에 담긴 상품은 <span>30일간</span>  보관됩니다.</p> 
				<p>상품을 장기간 보관하시길 원하시면 [보관하기]를 클릭하시어
				my라커에 저장해 두십시오.</p> 


			</div>

			<br /> <br /> <br />

			<div>
				<table class="table table-hover">
					<tr id="wishlist_table_1line">

						<td id="wishlist_table_1line_td1">이미지</td>
						<td id="wishlist_table_1line_td2">상품</td>
						<td id="wishlist_table_1line_td3">상품금액</td>
						<td id="wishlist_table_1line_td4">수량</td>
						<td id="wishlist_table_1line_td5">합계금액</td>
						<td id="wishlist_table_1line_td6">저장</td>
					</tr>
					<c:forEach var="dto" items="${basket }">

						<tr class="table_rows_num">
							<td hidden>${dto.wishno }</td>
							<td>
								<%-- <input type="image" src="${dto.goodsimg }" alt="" /> --%>${dto.goodsimg }</td>
							<td class="middle_text"><p id="basket_table_goodsname">${dto.goodsname }</p>
								<p id="basket_table_context">GENDER : ${dto.gender }<br>
								COLOR : ${dto.color }<br>
								SIZE : ${dto.goodssize }</p>
							</td>
							<td class="middle_text">${dto.price }</td>
							<td class="middle_text">${dto.wishamount }</td>
							<td class="middle_text" id="table_rows_num_sum">${dto.price*dto.wishamount }</td>
							<td class="middle_text"><a href="<c:url value='/delete?wishno=${dto.wishno }'/>"><input
									type="button" value="삭제" /></a></td>


						</tr>

					</c:forEach>
				
					<tr class="wishlist_table_line">

						<td colspan="3"></td>
						<td colspan="2">상품주문금액
						<br />할인금액 - 0원<br />배송비 + 0원</td>
						<td><p style="font-size:12px;font-weight: bold;">총결제예정금액:</p><label id="sum"> </label>
						</td>
					</tr>
				
					<tr class="wishlist_table_line">
						<td colspan="4"></td>
						<td colspan="2">
						<a href="main.do"><input type="button" value="쇼핑계속하기" /></a>
						<a href="<c:url value='/p​aymentList.do'/>"><input type="button" value="주문하기" /></a>
						</td>
					</tr>
				</table>


			</div>



		</div>
		</context>
		<!-- ------------------------------------------------------- -->
		<footer>
		<div></div>
		</footer>
		<!-- ------------------------------------------------------- -->

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