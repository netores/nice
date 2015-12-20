<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">

$(function() {

	
	var $trum = $(".table_rows_num");
	

	
	$("#paymentList_payment").click(function(){
		alert("결제됨");
	//추가
	var goods_no="";
	var buy_amount="";
	for (var i = 0; i < $trum.length; i++) 
	{
		//추가
		var id= $trum.eq(i).find(':eq(8)').html();
		//끝
		goods_no+= parseInt($trum.eq(i).find('td:eq(6)').html())+",";
		buy_amount+= parseInt($trum.eq(i).find('td:eq(4)').html())+",";
		console.log(goods_no);
		console.log(buy_amount);
		var delivery_address=$("#delivery_imfomation_search").val();
		console.log(delivery_address);
		
	//추가
		var receive_name=$("#delivery_imfomation_take").val();
		var receive_cp=$("#delivery_imfomation_txt1").val()+"-"+
		$("#delivery_imfomation_txt2").val()+"-"+$("#delivery_imfomation_txt3").val();
		
		
		
		
		 location.href="buyOk.do?goods_no="+goods_no+"&buy_amount="+buy_amount+"&delivery_address="+delivery_address
				+"&receive_name="+receive_name+"&receive_cp="+receive_cp+"&id="+id; 
		//끝
		
	}
});
	
	
	
	
	
	
	
	var total = 0;
	for (var i = 0; i < $trum.length; i++) 
	{
		
		//합계찍기
		var sum = parseInt($trum.eq(i).find('td:eq(5)').html());
		total += parseInt(sum);
		
		//이미지 ,에서짜르기
		var table_rows_num_img_val = $trum.eq(i).find(':eq(2)').html().split(",");
		var value1 = table_rows_num_img_val[0];
		$trum.eq(i).find(':eq(2)').html("<img src="+value1+">");
	}
	$('#sum').html(total);
	$('#sum1').html(total);
	
	//결제 라디오 체크
	$("#paymentRadio1_click_list").hide();
	$("#paymentRadio1_click_list1").hide();
	$("#paymentRadio3_click_list").hide();
	
	
	$("#paymentRadio1_click").click(function(){
		$("#paymentRadio1_click_list").show();	
		$("#paymentRadio1_click_list1").show();	
		$("#paymentRadio2_click_list").hide();
		$("#paymentRadio3_click_list").hide();
	});
	$("#paymentRadio2_click").click(function(){
		$("#paymentRadio1_click_list").hide();
		$("#paymentRadio1_click_list1").hide();
		$("#paymentRadio2_click_list").show();
		$("#paymentRadio3_click_list").hide();
	});
	$("#paymentRadio3_click").click(function(){
		$("#paymentRadio1_click_list").hide();
		$("#paymentRadio1_click_list1").hide();
		$("#paymentRadio2_click_list").hide();
		$("#paymentRadio3_click_list").show();	
	});
	
	//할부선택
	$("#payment_method_select2").hide();
	$("#payment_method_select3").hide();
	$("#paymentRadio2_click_list_div1_radio_click1").click(function(){
		$("#payment_method_select1").show();	
		$("#payment_method_select2").hide();
		$("#payment_method_select3").hide();
	});
	$("#paymentRadio2_click_list_div1_radio_click2").click(function(){
		$("#payment_method_select1").hide();	
		$("#payment_method_select2").show();
		$("#payment_method_select3").hide();
	});
	$("#paymentRadio2_click_list_div1_radio_click3").click(function(){
		$("#payment_method_select1").hide();	
		$("#payment_method_select2").hide();
		$("#payment_method_select3").show();
	});
	
	//현금영수증,사업자등록 체크시
	$("#paymentRadio1_click_list1_select1_select2").hide();
	$("#paymentRadio1_click_list1_select1").click(function(){
		$("#paymentRadio1_click_list1_select1_select1").show();	
		$("#paymentRadio1_click_list1_select1_select2").hide();
	});
	$("#paymentRadio1_click_list1_select2").click(function(){
		$("#paymentRadio1_click_list1_select1_select1").hide();	
		$("#paymentRadio1_click_list1_select1_select2").show();
	});
	$("#paymentRadio1_click_list1_select3").click(function(){
		$("#paymentRadio1_click_list1_select1_select1").hide();	
		$("#paymentRadio1_click_list1_select1_select2").hide();
	});
		

})


</script>

<style type="text/css">

	body{
		font-size:12px;
	}

	#payment_Container
	{
		width: 850px;
		height: 1950px;
		margin: 0 auto;
		text-align: center;
		
	}
	
	
	.row
	{
		width: 850px;
		height: 27px;
		
	
	}
	
	#payment_header
	{
		margin-top:30px;
		width: 850px;
		height: 38px;
		border-bottom: 1px solid;
	}
	
	table.table.table-hover {
	
	margin-left: 0;
	border-top: 2px solid;
}
	

	
	
	
	#payment_Context
	{
		
		width: 630px;
		height: 1900px;
		text-align: center;
	}

	#wishlist_header
	{
		width: 850px;
		height: 38px;
		margin: 0 auto;
	}
	
	img
	{
	width: 55px;
	}
	
	#event_img
	{
	width: 630px;
	}
	
	#sum1,#sum1_won
	{
	    color: #fa5400;
	
	}
	
	
	
	#paymentRadio2_click_list,
	#paymentRadio1_click_list,
	#paymentRadio1_click_list1
	{
		width: 630px;
	
		margin: 0 auto;
		position:relative;
		float: left;
		
	}
	

	#paymentRadio1_click_list_div1,
	#paymentRadio1_click_list1_div1
	{
		position:relative;
		height: 154px;
		width: 60%;
		float: left;
		font-size: 11px;
		
	}
	
	#paymentRadio1_click_list
	{
		border-bottom: 1px solid #BABCBB;
		
	}
	
	#paymentRadio1_click_list1
	{
		 border-bottom: 1px solid #BABCBB;
   		
   		
	}
	
	#paymentRadio1_click_list_div1
	{
		
		text-align: center;
		padding: 50px 0;
	}
	
	#paymentRadio1_click_list_div2
	{
		
		padding: 5px;
	}
	
	.table>tbody>tr>td, 
	.table>tbody>tr>th, 
	.table>tfoot>tr>td, 
	.table>tfoot>tr>th, 
	.table>thead>tr>td, 
	.table>thead>tr>th {
  
    vertical-align: middle;
 
}
	#paymentRadio1_click_list1_div1 {
    text-align: center;
    padding: 39px 0;
	}

	#paymentRadio1_click_list1_div
	{
		border-top: 1px solid;
	}
	
	#paymentRadio1_click_list_div2,
	#paymentRadio1_click_list1_div2
	{
		padding:7px;
		position:relative;
		height: 136px;
		width: 40%;
		float: left;
		border: 1px solid;
		overflow: scroll;
		text-align: left;
		top:7px;
		
	}
	

	
	
	#paymentRadio2_click_list_table
	{
		width: 100%;
	}
	
	
	


	 #menu_bar_container
	{
	position: fixed;
    top: 170px;
    left: 230px;
    margin-left: 50%;
    width: 200px;
    height: 380px;
	}
	 
	#menu_bar
	{
	
	position: relative;
	width:200px;
	height:180px;
	background-color: #333;
	border-radius:10px;
	}
	
	#menu_bar_confirm1
	{
	position: relative;
	top: 5px;
	width:180px;
	height:70px;
	margin-left: 10px;
	background-color: #fff;
	margin-bottom: 5px;
	
	}
	
	#menu_bar_confirm2
	{
	position: relative;
	top: 7px;
	width:180px;
	height:70px;
	margin-left: 10px;
	background-color: #fff;
	text-align: right;
	
	}
	#menu_bar_confirm2 span{
	font-size:14px;
	font-weight: bold;
	}
	#menu_bar2
	{
	padding: 4px 8px 5px 8px;
	position: relative;
	top: 5px;
	width:200px;
	height:134px;
	background-color: #EEEEEE;
	font-size: 11px;
    text-align: left;
    line-height: 16px;
	
	}
	
	#menu_bar_font
	{
		color: white;
		font-weight: bold;
	}
	
	#menu_bar_confirm1_1line1
	{
		background-color: #eee;
		font-size:14px;
		font-weight: bold;
	}
	
	#menu_bar_confirm1_1line2
	{
		background-color: #eee;
		font-size:14px;
		font-weight: bold;
		color:#fa5400;
	}
	
	
	
	#menu_bar2_context
	{
		border-top: 1px solid;
	}
	/* 
	input[type="text"]{
	width:50px;
	} */
	
	#row_image
	{
		padding-left: 57px;
	}
	


	
	#payment_Context_num1,
	#payment_Context_num3,
	#payment_Context_num4
	{
	width: 125px;
	height: 17px;

	}
	
	h2 {
	text-align: left;
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
} 

   #paymentlist_table th{
    height: 27px;
    padding: 4px;
    text-align: center;
    }
	
	#delivery_imfomation th
	{
		width: 108px;
		height: 30px;
		font-size: 11px;
   		color: #666;
   		font-weight: normal;
   		border-bottom: none;
	    padding: 8px 10px 3px;
	}
	

	
	#delivery_imfomation td
	{
		width: 522px;
		height: 30px;
		text-align: left;
	}
	
	
	#delivery_imfomation input[type="button"]
	
	{
		vertical-align: middle;
		font-size:12px;
   		height: 20px;
   		line-height: 18px;
	
	}
	
	#delivery_imfomation_take
	{
		vertical-align: middle;
   		height: 20px;
   		line-height: 18px;
	    width: 85px;
  	  	margin-right: 195px;	
	}
	
	#delivery_imfomation_take1
	{
		vertical-align: middle;
   		height: 20px;
   		line-height: 18px;
	    width: 85px;
  
	
	}
	
	
	
	#delivery_imfomation_search
	{
	 width: 245px;
	height: 20px;
	vertical-align: middle;
   	line-height: 18px;
	}
	
	#delivery_imfomation_message
	{
	 width: 510px;
	height: 20px;
	vertical-align: middle;
   	line-height: 18px;
	}
	
	.delivery_imfomation_txt {
    width: 53px;
	height: 20px;
	vertical-align: middle;
   	line-height: 18px;
	}
	
	
	#delivery_imfomation
	{
		border-top: 2px solid;
		border-bottom: 1px solid;
	}
	
	#payment_method1
	{
		text-align: left;
		border-bottom: 1px solid #ccc;
	}
	
	h3 {
	
	height:2px;
	text-align: left;
    padding: 0 0 5px;
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	}
	

	p span {
    color: #fa5400;
    }
    
    .paymentRadio1_click_list1_select1_select1_num
    {
    	width: 47px;
    	height: 20px;
    }
    .radio_title{
    	font-size:12px;
    	font-weight:bold;
    }
 
	#radio1_border{
		border-top:2px solid black;
	}	
	#table_context{
		font-size:9px;
		color:gray;
		
	}
#table_td_goodsname{
	text-align: left;
	font-weight: bold;
}
.table_context_middle{
	vertical-align: middle !important; 
	font-weight: bold;
}
#menu_bar2_headline_text1{
	font-weight: bold;
	font-size:13px;
	display:inline;
}
#menu_bar2_headline_text2{

	font-size:10px;
	color:gray;
	display:inline;
}
#menu_bar2_context{

	font-size:10px;
	color:gray;
	
}
#paymentList_payment{
	margin-top:3px;
	width:200px;
}
#paymentRadio1_click_list1_h3{
	font-weight: bold;
}
</style>
</head>
<body>
<jsp:include page="../main/header.jsp" />
<div id="payment_Container">

	<header>
		<div id=payment_header>

			<div class="row">

				<div class="col-md-1">
					<input type="image" src="images/jang3.gif" alt="" />
				</div>
				<div class="col-md-5"></div>
				<div class="col-md-3">
					<input type="image" src="images/jang4.gif" id="row_image" alt="" />
				</div>

			</div>
			<div id="wishlist_header_hr">
				<hr />
			</div>
		</div>
	</header>
<!-- ----------------------------------------------------------------- -->
	<nav> </nav>
<!-- ----------------------------------------------------------------- -->
	
	<context>
	<div id="payment_Context">
		<h2>
		<img id="payment_Context_num1"src="images/jumun.gif" alt="" />
		
		</h2>	
		<table  class="table table-hover">
	
			<tr id="paymentlist_table">
				
				<th colspan="2">상품</th>
				<th>수량</th>
				<th>주문금액</th>
				<th>배송정보</th>
			</tr>
		
			<c:forEach var="dto" items="${basket2 }">
			<tr class="table_rows_num">
				<td hidden>${dto.wishno }</td>
				<td hidden>${dto.price }</td>
				<td>${dto.goodsimg }</td>
				<td id="table_td_goodsname">${dto.goodsname }<br/>
				<p id="table_context">
					COLOR : ${dto.color }<br/>
					GENDER : ${dto.gender }<br/>
					SIZE : ${dto.goodssize }</p>
				</td>
				<td class="table_context_middle">${dto.wishamount }</td>
				<td class="table_context_middle" id="table_rows_num_sum">${dto.price*dto.wishamount }</td>
				<!-- 추가 -->
				<td hidden>${dto.goodsno }</td>
				<td hidden>${dto.id }</td>
				<td class="table_context_middle">일반상품:3일이내주문</td>
			</tr>
			</c:forEach>
			
			<tr>
				<td colspan="5"> <img id="event_img" src="images/event.png" alt="" /> </td>
			</tr>
			</table>
			
			
			<!-- 주문고객/배송지정보 -->
			<h2>
				<img src="images/jumun3.gif" alt="" id="payment_Context_num3" />
			</h2>
			
			<!-- -------------------------------------------------------------- -->
			
			<table id="delivery_imfomation">
			
			<tr>
				<th>받으시는분</th>
				<td colspan="2">
				<input type="text" name="" id="delivery_imfomation_take" />
				<span>배송지명</span><input type="text" name="" id="delivery_imfomation_take1" />
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>
				<input class="delivery_imfomation_txt" type="text" name="" />
				<input class="delivery_imfomation_txt" type="text" name=""  />
				<input class="delivery_imfomation_txt" type="text" name=""  />
				</td>
				
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>
				 	<select name="" id="delivery_imfomation_txt1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input  class="delivery_imfomation_txt" type="text" name="" id="delivery_imfomation_txt2"/>
					<input   class="delivery_imfomation_txt" type="text" name="" id="delivery_imfomation_txt3" />
				</td>
				
			</tr>
			<tr>
				<th>주소검색</th>
				<td>
				<input type="text" name="" id="delivery_imfomation_search" />
				<input type="button" value="검색" id="delivery_imfomation_button" />
				</td>
				
			
			</tr>
			
			<tr>
				<th>배송메세지</th>
				<td><input type="text" name="" id="delivery_imfomation_message" /></td>
				
			</tr>
		
			
					
		</table>
		
		<!-- ---------------------------------------------------------------------------- -->
		<h2>
		<img id="payment_Context_num4"src="images/jumun4.gif" alt="" />
		
		</h2>
		
		
		<table id="payment_method1" class="table table-hover">
		 <tr>
				<th>결제수단</th>
				<td>
				<input type="radio" name="payment_method_check"  id="paymentRadio1_click" />
				<span>실시간계좌이체</span>
				
				<input type="radio" name="payment_method_check" checked="checked" id="paymentRadio2_click" />
				<span>결제수단신용카드</span>
				
				<input type="radio" name="payment_method_check"  id="paymentRadio3_click" />
				<span>결제수단휴대폰결제</span>
				</td>
			</tr>
		
		</table>
		
		
		<!-- 결제수단 라디오 체크시  -->
		
		<div id="payment_radio_check">
		<!-- 실시간계좌이체 -->
		<!-- <div id="paymentRadio1_click_list"> -->
		<div id="paymentRadio1_click_list">
			<p class="radio_title">결제수단정보 : <span>실시간계좌이체</span></p>
			<div id="radio1_border">
			<div id="paymentRadio1_click_list_div1">* [결제하기] 버튼을 클릭하면 KSNet의 계좌이체 결제 창으로 연결되며 결제<br /> 
				창에서 결제정보(은행/계좌번호)를 입력하실 수 있습니다.</div>
			<div id="paymentRadio1_click_list_div2">
							실시간 계좌이체는 고객님 계좌에서 나이키로<br> 결제금액이 바로 입금되는 방식을 말하며, 별도<br> 수수료 부담이 전혀 없습니다.<br>
                  			대금 청구 시 가맹점 란에는 (주)데이콤 가맹점으로 기재됩니다.<br><br>
							&lt;실시간 계좌이체 결제시 안내&gt;<br><br>
                  			실시간 계좌이체는 고객님 계좌에서 나이키닷컴으로 결제금액이 바로 입금되는 방식을 말하며, 별도 수수료 부담이 전혀 없습니다. 대금 청구시 가맹점 란에는 KSNet 가맹점으로 기재됩니다.<br>
                  			[나이키급보증서비스 안내]10만원 이상 결제시 하나은행의 나이키급 보증서비스를 이용하실 수 있습니다.<br><br>
                  			&lt;결제하기&gt;버튼 클릭 시,<br><br>
			                KSNet의 계좌이체 화면으로 연결되어 결제정보를 입력하실 수 있습니다.<br><br>
			                &lt;구매안전서비스 안내&gt;<br><br>
			                    고객님은 안전한 거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 KSNET의 구매안전서비스(채무지급보증)를 이용하실 수 있습니다.
				
			</div>
			
			</div>
		</div>
		
		<div id="paymentRadio1_click_list1">
		<p id="paymentRadio1_click_list1_h3">현금영수증신청</p>	
			<div id="paymentRadio1_click_list1_div">
			<div id="paymentRadio1_click_list1_div1">
				<div>
				<input type="radio" name="paymentRadio1_click_list1_name"  checked="checked" id="paymentRadio1_click_list1_select1" />
				<span>소득공제용</span>
				
				<input type="radio" name="paymentRadio1_click_list1_name" id="paymentRadio1_click_list1_select2" />
				<span>지출증빙용(사업자) </span>
				
				<input type="radio" name="paymentRadio1_click_list1_name"  id="paymentRadio1_click_list1_select3" />
				<span>신청안함</span>
				</div>
					<div id="paymentRadio1_click_list1_select1_select1">
						<select name="" id="">
							<option value="">휴대폰번호</option>
							<option value="">선택</option>
						</select>
						<select name="" id="">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						-<input type="text" name="" class="paymentRadio1_click_list1_select1_select1_num"/>
						-<input type="text" name="" class="paymentRadio1_click_list1_select1_select1_num"/>
					</div>
					<div id="paymentRadio1_click_list1_select1_select2">
						<select name="" id="">
							<option value="">선택</option>
							<option value="">사업자번호</option>
						</select>
						<input type="text" name="" id="" />
						<input type="text" name="" id="" />
						<input type="text" name="" id="" />
					
					</div>
				
			</div>
			<div id="paymentRadio1_click_list1_div2">
						&lt;현금영수증 안내&gt;<br><br>	
						정보통신망 이용촉진 및 정보보호 등에 관한 법률 개정으로 인해 2012년 8월 18일부터 주민등록번호 사용이 제한됩니다.<br>					
						주문 시 신청하신 현금영수증은 배송완료후 10일까지 My 쇼핑정보에서 변경신청이 가능합니다.<br>
						할인금액에 대해서는 현금영수증 발급금액에서 제외됩니다.<br>
						부가세법 시행령에 따라 지출증빙용 현금영수증을 신청하신 경우 세금계산서 발급이 제한됩니다.<br><br>
			</div>
			</div>
		</div>
	
		
		
		<!-- 결제수단신용카드 -->
		<div id="paymentRadio2_click_list" >
			
				<p class="radio_title">결제수단정보:<span>신용카드</span></p>
				<table  class="table table-hover" id="paymentRadio2_click_list_table">
					<tr>
						<td>카드종류</td>
						<td>
							<select name="" value="" id="">
								<option value="">카드선택</option>
								<option value="">삼숑카드</option>
								<option value="">비싸카드</option>
								<option value="">신하카드</option>
								<option value="">씨리카드</option>
							</select>
						</td>
						<td colspan="4"></td>
						<td rowspan="3">
						<공인인증/신용카드 인증서비스 안내> <br />
						30만원 이상 결제시 신용카드용 공인인증서가 <br />
						필요합니다.
						</td>
					</tr>
					<tr>
						<td>할부선택</td>
						<td>
						<input type="radio" name="paymentRadio2_click_list_div1_radio" checked="checked" id="paymentRadio2_click_list_div1_radio_click1" />
						<span>일시불</span>
						</td>
						<td>
						<input type="radio" name="paymentRadio2_click_list_div1_radio" id="paymentRadio2_click_list_div1_radio_click2" />
						<span>무이자할부</span>
						</td>
						<td>
						<input type="radio" name="paymentRadio2_click_list_div1_radio" id="paymentRadio2_click_list_div1_radio_click3" />
						<span>일반할부</span>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>할부기간</td>
						<td id="payment_method_select1">
							<select name="" value="" id="">
								<option value="">일시불</option>
							</select>
						</td>
						<td id="payment_method_select2">
							<select name="" value="" id="">
								<option value="">무이자할부</option>
							</select>
						</td>
						<td id="payment_method_select3">
							<select name="" value="" id="">
								<option value="">일반할부</option>
							</select>
						</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
		</div>
	</div>
			

	<div><img id="event_img" src="images/cardimg.png" alt="" /></div>
	
	<!-- context밑에 -->
	</div> 

	<div id="menu_bar_container">
	<div id ="menu_bar">
		<div id="menu_bar_font">주문금액 확인 및 결제</div>
		<div id="menu_bar_confirm1" class="row">
			
			<div id="menu_bar_confirm1_1line1" class="col-md-6">상품가격</div>
			<div id="menu_bar_confirm1_1line2" class="col-md-6"><span id="sum"></span></div>
			<div class="col-md-6">쿠폰</div>
			<div class="col-md-6">(-)0원</div>
			<div class="col-md-6">배송비</div>
			<div class="col-md-6">무료</div>
		</div>
		<div id="menu_bar_confirm2">
			<div class="col-md-12">총결제 예정금액</div>
			<div class="col-md-12"><span id="sum1"></span><span id="sum1_won">원</span></div>
			<div class="col-md-12">감사합니다.</div>
		</div>
	</div>
	<div id="menu_bar2">
		<div id="menu_bar2_headline">
		<p id="menu_bar2_headline_text1">주문동의</p><p id="menu_bar2_headline_text2">|주문내용을 확인해주세요.</p></div>
		<div id="menu_bar2_context">      주문할 상품의 상품명, 상품가격, <br />
		           배송정보를 확인하였으며, 구매에 <br />
		            동의하시겠습니까?>
		</div>
		<div>
		<input type="checkbox" name="" id="" />
		<span>동의합니다.</span>
		</div>
		<div>(전자상거래법 제8조 제2항)</div>
		<div>
		<input type="button" id="paymentList_payment" value="결제하기" class="btn btn-warning"/>

		</div>
	
	</div>
	
	</div>
	

	
	
	
	</context>

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