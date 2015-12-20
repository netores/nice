<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 
 $(function(){
	 var orderlist_table_length = $('#orderlist_table').find('tr').length;
	 
	 for(var i=0; i<orderlist_table_length;i++){
 	
		var imgarray =$('#orderlist_table').find("tr:eq("+i+")").find('td:eq(0)').html().split(",");
 		var value1 = imgarray[0];
 		$('#orderlist_table').find("tr:eq("+i+")").find('td:eq(0)').html("<img class='orderimage' src="+value1+">")
 		
 	
 	}
 });
 </script>

<style type="text/css">
#orderlist_container{
	min-height:523px;
}
.orderimage{
	width:55px;
	height:55px;
}
.orderlist_table_text{
	font-size:9px;
	color:gray;
}

#orderlist_container_context{
	margin-top:30px;
	width:60%;
	margin: 0 20%;
	
}
#orderlist_table{

}
#orderlist_table_scroll{
margin-top:-20px;
overflow: scroll;
height:400px;
}
#orderlist_table_header{
border-top: 2px solid black;
margin-top:30px;
	width : 98.2%;	
}

#orderlist_table_header th,#orderlist_table td{
	text-align: center;
	vertical-align: middle;
}

.goods_image{
	width : 15%;
}
.goods_name{
	width : 30%;
}
.goods_amount{
	width : 10%;
}
.goods_sum{
	width : 15%;
}
.goods_date{
	width : 18%;
}
#orderlist_table_header tr th{
	border-top: 2px solid black !important;
	
}
</style>


</head>
<body>
<jsp:include page="../main/header.jsp" />
	<div id="orderlist_container">
		<div id="orderlist_container_context">
		<h3 id="buylist_h3"><span style="font-size:40px; font-weight: bold;">구매 목록</span><span style="font-size:15px; color:gray;"> 구매하신 목록을 볼 수 있습니다.</span></h3>
		
			<table id="orderlist_table_header" class="table">
				<tr>
					<th class="goods_image">상품이미지</th>
					<th class="goods_name">상품</th>
					<th class="goods_amount">수량</th>
					<th class="goods_sum">주문금액</th>
					<th class="goods_date">결제일</th>
					<th class="goods_delivery">배송정보</th>
				<tr>
			</table>

			<div id="orderlist_table_scroll">
				<table id="orderlist_table" class="table table-hover">
					<c:forEach var="dto" items="${status }">
					
						<tr>
						
							<td class="goods_image">${dto.goodsimg}</td>
							<td class="goods_name" style="text-align : left;">
								${dto.goodsname }
							<br />
						 
							<p class="orderlist_table_text">SIZE : ${dto.goodssize }<br />
							GENDER : ${dto.gender }<br /> 
							COLOR : ${dto.color }<br /></p>
							</td>
							<td class="goods_amount">${dto.buyamount }</td>
							<td class="goods_sum" style="color:#fa5400; font-weight: bold;">${dto.price * dto.buyamount }</td>
							<td class="goods_date">${dto.paydate }</td>
							<td class="goods_delivery">${dto.orderstatus }</td>
							<td hidden>${dto.id }</td>
							<td hidden>${dto.userorderno }</td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
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