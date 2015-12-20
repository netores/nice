<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
	integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
	integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		
			var reviewgradelength = $('.reviewgrade1').length;
			for(var i=0;i<reviewgradelength;i++)
			{	
				var reviewgrade=$('.reviewgrade1').eq(i).html();
				if(reviewgrade==5)
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/5star.png'/> alt='' />");
				else if(reviewgrade==4)
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/4star.png'/> alt='' />");
				else if(reviewgrade==3)
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/3star.png'/> alt='' />");
				else if(reviewgrade==2)
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/2star.png'/> alt='' />");
				else if(reviewgrade==1)
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/1star.png'/> alt='' />");
				else 
					$('.reviewgrade1').eq(i).html("<img src=<c:url value='images/0star.png'/> alt='' />"); 
			}
			
			$("#reviewOk_btn").on('click', function() 
			{
						if($('#getid').html()=="")
							alert("로그인을 하셔야합니다.");	
						else
						{
							$('#id').val($('#getid').html());
							if($('#review_size').val()==''||$('#review_comf').val()==''||$('#review_size').val()==''
							||$('#review_durability').val()==''||$('#reviewtitle').val()==''||$('#context').val()==''||$('#reviewgrade').val()=='')
							{
								alert("모든 항목을 체크해주세요.");
							}
							else
							{
								document.detail_form.action = 'reviewOk.do';
								document.detail_form.method = 'get';
								document.detail_form.submit();
							}
						}
			});
		var price = $('.pricediv').eq(0).html().split("원");
		if(price[1]!=0)
		{
			console.log(price[0]-price[0]*price[1]/100);
			var price2 = price[0]-price[0]*price[1]/100;
			$('.pricediv').eq(0).html("<i style=text-decoration:line-through>"+price[0]+"원</i>" +"&nbsp;&nbsp;&nbsp;"+ price2+"원");
		}
		else
		{
			var price2 = price[0];
			$('.pricediv').eq(0).html(price[0]+"원");
		}
			
		
		$("#detail_detailContainer_reviewContainer_reviewForm_reviewData").hide();
		$("#review_btn").on('click',function() 
		{
			$("#detail_detailContainer_reviewContainer_reviewForm_reviewData").toggle();
			location.href = "#a";
		});

		
		
		$("#star1").mouseover(upstar1);
		$("#star2").mouseover(upstar2);
		$("#star3").mouseover(upstar3);
		$("#star4").mouseover(upstar4);
		$("#star5").mouseover(upstar5);
		
		$('#detail_size_tab1').on('click', function() {
			$('.detail_size_label').css("background","white")
			$('.detail_size_label').eq(0).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_size').val(1);
		});
		$('#detail_size_tab2').on('click', function() {
			$('.detail_size_label').css("background","white")
			$('.detail_size_label').eq(1).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_size').val(2);
		});
		$('#detail_size_tab3').on('click', function() {
			$('.detail_size_label').css("background","white")
			$('.detail_size_label').eq(2).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_size').val(3);
		});
		$('#detail_size_tab4').on('click', function() {
			$('.detail_size_label').css("background","white")
			$('.detail_size_label').eq(3).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_size').val(4);
		});
		$('#detail_size_tab5').on('click', function() {
			$('.detail_size_label').css("background","white")
			$('.detail_size_label').eq(4).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_size').val(5);
		});
		$('#detail_comf_tab1').on('click', function() {
			$('.detail_comf_label').css("background","white")
			$('.detail_comf_label').eq(0).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_comf').val(1);
		});
		$('#detail_comf_tab2').on('click', function() {
			$('.detail_comf_label').css("background","white")
			$('.detail_comf_label').eq(1).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_comf').val(2);
		});
		$('#detail_comf_tab3').on('click', function() {
			$('.detail_comf_label').css("background","white")
			$('.detail_comf_label').eq(2).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_comf').val(3);
		});
		$('#detail_comf_tab4').on('click', function() {
			$('.detail_comf_label').css("background","white")
			$('.detail_comf_label').eq(3).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_comf').val(4);
		});
		$('#detail_comf_tab5').on('click', function() {
			$('.detail_comf_label').css("background","white")
			$('.detail_comf_label').eq(4).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_comf').val(5);
		});
		$('#detail_dur_tab1').on('click', function() {
			$('.detail_dur_label').css("background","white")
			$('.detail_dur_label').eq(0).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_durability').val(1);
		});
		$('#detail_dur_tab2').on('click', function() {
			$('.detail_dur_label').css("background","white")
			$('.detail_dur_label').eq(1).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_durability').val(2);
		});
		$('#detail_dur_tab3').on('click', function() {
			$('.detail_dur_label').css("background","white")
			$('.detail_dur_label').eq(2).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_durability').val(3);
		});
		$('#detail_dur_tab4').on('click', function() {
			$('.detail_dur_label').css("background","white")
			$('.detail_dur_label').eq(3).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_durability').val(4);
		});
		$('#detail_dur_tab5').on('click', function() {
			$('.detail_dur_label').css("background","white")
			$('.detail_dur_label').eq(4).css("background", "linear-gradient(to bottom,rgba(0,0,0,0), rgba(0,0,0,1),rgba(0,0,0,0.3)")
			$('#review_durability').val(5);
		});
		
		$('#detail_buy').on('click',function(){
			if($('#getid').html()=="")
				alert("로그인을 하셔야합니다.");
			else{
				var size =$('#size').val();
				var amount =$('#amount').val();
				var goodsname =$('#detail_detailContainer_itembox_context_table_goodsname').html()
				var imgsrc =$('#detail_detailContainer_itembox_imgbox_img').attr("src");
				var color = '${detail.color}';
				var goodsno ='${detail.goodsno }';
				var price = '${detail.price}';
				var gender= '${detail.gender}';
				
				 location.href ="detailpayment.do?size="+size+"&amount="+amount+"&goodsname="+goodsname+"&imgsrc="+imgsrc+"&color="+color+"&goodsno="+goodsno+"&price="+price+"&gender="+gender; 
			}
			
		});
		
		$('#add_wishlist').on('click',function(){
			if($('#getid').html()==""){
				alert("로그인을 하셔야합니다.");
			}
			 else{
				var goodsno ='${detail.goodsno }';
				var amount =$('#amount').val();
				
				location.href ="insertwishlist.do?goodsno="+goodsno+"&wishamount="+amount;
				
			} 
		
		});
		
	});
	
	function upstar1() {
		$("#star1")[0].src = "<c:url value='images/filledstar.png'/>";
		$("#star2, #star3,#star4,#star5").attr("src","<c:url value='images/emptystar.png'/>");
		$('#reviewgrade').val(1);
	}
	function upstar2() {
		$("#star1, #star2").attr("src",
				"<c:url value='images/filledstar.png'/>");
		$("#star3,#star4,#star5").attr("src",
				"<c:url value='images/emptystar.png'/>");
		$('#reviewgrade').val(2);
	}
	function upstar3() {
		$("#star1, #star2, #star3").attr("src",
				"<c:url value='images/filledstar.png'/>");
		$("#star4, #star5")
				.attr("src", "<c:url value='images/emptystar.png'/>");
		$('#reviewgrade').val(3);
	}
	function upstar4() {
		$("#star1, #star2, #star3, #star4").attr("src",
				"<c:url value='images/filledstar.png'/>");
		$("#star5")[0].src = "<c:url value='images/emptystar.png'/>";
		$('#reviewgrade').val(4);
	}
	function upstar5() {
		$("#star1, #star2, #star3, #star4, #star5").attr("src",
				"<c:url value='images/filledstar.png'/>");
		$('#reviewgrade').val(5);
	}
	function page(x) {
		console.log(x);
		$.ajax({
			url : "<c:url value='/detailajax.do'/>",
			type : "get",
			data : {goodsno : "${detail.goodsno}",
				currentPage : x,
			},
					
		
			success : function (data)
			{
				$("#detail_detailContainer_reviewContainer_reviewtable").html(data);
			}
			
		});
	}
	function changeimg(i) {
		$("#detail_detailContainer_itembox_imgbox_img").attr("src",i.src);
	}
	
</script>

<style type="text/css">
#detail_detailContainer_itembox{
	margin-left : 27%;
}
ul{
	list-style: none;
}
#detail_detailContainer_itembox {
	min-height: 600px;
	min-width: 1200px;
	margin : 0px 23%;
}

#detail_detailContainer_itembox_imgbox {
	margin-top: 50px;
	float: left;
}

#detail_detailContainer_itembox_imgbox_img {
	width: 550px;
}

#detail_detailContainer_itembox_context {
	margin-left: 100px;
	float: left;
	margin-top: 100px;
	width: 400px;
}

#detail_detailContainer_itembox_context_table_goodsname {
	font-size: 30px;
	font-weight: bold;
}

#detail_detailContainer_itembox_context_table_category {
	color: gray;
}

#detail_detailContainer_itembox_context_table_price {
	color: orange;
}

#detail_detailContainer_detailBox,
	#detail_detailContainer_reviewContainer {
	margin: 0px auto;
}

#detail_detailContainer_detailBox_detailBtn {
	width: 400px;
	margin: 0px auto;
}

#css_tabs {
	width: 700px;
	margin: 0px auto;
	font-family: 'nanumgothic', '나눔고딕', 'malgun gothic', '맑은 고딕', 'dotum',
		'돋움', sans-serif
}
/* 탭 선택 시 표시할 요소(div) 정의(1번 탭 선택 시 첫 번째 div 요소 표시) */
#css_tabs input:nth-of-type(1), #css_tabs input:nth-of-type(1) ~ div:nth-of-type(1),
	#css_tabs input:nth-of-type(2), #css_tabs input:nth-of-type(2) ~ div:nth-of-type(2),
	#css_tabs input:nth-of-type(3), #css_tabs input:nth-of-type(3) ~ div:nth-of-type(3),
	#css_tabs input:nth-of-type(4), #css_tabs input:nth-of-type(4) ~ div:nth-of-type(4)
	{
	display: none
}

#css_tabs input:nth-of-type(1):checked ~ div:nth-of-type(1), #css_tabs input:nth-of-type(2):checked 
	 ~ div:nth-of-type(2), #css_tabs input:nth-of-type(3):checked ~ div:nth-of-type(3),
	#css_tabs input:nth-of-type(4):checked ~ div:nth-of-type(4) {
	display: block
}
/* 라벨 기본 스타일 지정 */
#css_tabs>label {
	display: inline-block;
	font-variant: small-caps;
	font-size: .9em;
	padding: 5px;
	text-align: center;
	width: 15%;
	line-height: 1.8em;
	font-weight: 700;
	border-radius: 3px 3px 0 0;
	background: #eee;
	color: #777;
	border: 1px solid #ccc;
	border-width: 1px 1px 0
}

#css_tabs>label:hover {
	cursor: pointer
}

#css_tabs label[for=tab1] {
	margin-left: 1.5em
}
/* 선택된 라벨, 커서를 올린 라벨 스타일 지정 */
#css_tabs input:nth-of-type(1):checked ~ label:nth-of-type(1), #css_tabs>label[for=tab1]:hover
	{
	background: tomato;
	color: #fff
}

#css_tabs input:nth-of-type(2):checked ~ label:nth-of-type(2), #css_tabs>label[for=tab2]:hover
	{
	background: gold;
	color: #fff
}

#css_tabs input:nth-of-type(3):checked ~ label:nth-of-type(3), #css_tabs>label[for=tab3]:hover
	{
	background: green;
	color: #fff
}

#css_tabs input:nth-of-type(4):checked ~ label:nth-of-type(4), #css_tabs>label[for=tab4]:hover
	{
	background: blue;
	color: #fff
}
/* 실제 내용이 담긴 div 요소 스타일 지정 */
#css_tabs .tab1_content, #css_tabs .tab2_content, #css_tabs .tab3_content,
	#css_tabs .tab4_content {
	padding: 2em;
	width: 70%;
	height: 100%;
	text-align: left;
}

#detail_detailContainer_detailBox_table {
	width: 800px;
	border: 1px solid black;
}

#detail_detailContainer_detailBox_table th {
	width: 33%;
	text-align: right;
	padding-right: 10px;
}

#gurantee_table1 {
	font-size: 11px;
}

.tab2_content table {
	clear: both;
	width: 800px;
	border: 1px solid black;
}

.tab2_content table td {
	font-size: 11px;
}

.tab3_content ul, .tab4_content ul {
	font-size: 11px;
}

#detail_detailContainer_reviewContainer table {
	width: 1000px;
	margin: 0px auto;
}
#detail_detailContainer_reviewContainer_reviewtable .table td{
	width : 50%;
}
#detail_detailContainer_reviewContainer_reviewForm img {
	width: 50px;
	cursor: pointer;
}

#detail_detailContainer_reviewContainer_reviewForm {
	width: 800px;
	margin: 0px auto;
}

#detail_detailContainer_revewColorBox {
	width: 100%;
	background-color: #eeeeee;
}

#review_btn_div {
	margin-left: 45%;
}

#detail_detailContainer_reviewContainer_reviewtable_paging {
	margin-left: 45%
}

.size_button:active {
	color: black;
	background-color: black;
}
#review_container{
}
/* 위에 클래스 이름 줘서 css다시 해야함 */
#detail_size #label5, #detail_comf #label5, #detail_dur #label5 {
	border-radius: 0 10px 10px 0;
}

#detail_size #label1, #detail_comf #label1,#detail_dur #label1 {
	border-radius: 10px 0 0 10px;
}

#detail_size label,#detail_comf label,#detail_dur label {
	border: 1px solid #aaa;
	padding-right: 70px;
	height: 14px;
	margin-left: -1px;
	transition: 0.4s ease;
	box-shadow: inset 0px 4px 3px #ccc;
	background:#eee;
	
}
[name="detail_tab"]{
display: none;
}
.clx{
	display: block;
	margin-left : -50px;
}

.itemlist .clx li{
	float: left;
    width: 80px;
    height: 80px;
    border: 1px solid #ddd;
    background-color: #f5f5f5;
    display: list-item;
    text-align: -webkit-match-parent;
    cursor: pointer;
}
.basketbtn { 
  color: #FFFFFF; 
  background-color: #272529; 
  border-color: #3E3D42; 
} 
 
.basketbtn:hover, 
.basketbtn:focus, 
.basketbtn:active, 
.basketbtn.active, 
.open .dropdown-toggle.basketbtn { 
  color: #FFFFFF; 
  background-color: #151417; 
  border-color: #3E3D42; 
} 
 
.basketbtn:active, 
.basketbtn.active, 
.open .dropdown-toggle.basketbtn { 
  background-image: none; 
} 
 
.basketbtn.disabled, 
.basketbtn[disabled], 
fieldset[disabled] .basketbtn, 
.basketbtn.disabled:hover, 
.basketbtn[disabled]:hover, 
fieldset[disabled] .basketbtn:hover, 
.basketbtn.disabled:focus, 
.basketbtn[disabled]:focus, 
fieldset[disabled] .basketbtn:focus, 
.basketbtn.disabled:active, 
.basketbtn[disabled]:active, 
fieldset[disabled] .basketbtn:active, 
.basketbtn.disabled.active, 
.basketbtn[disabled].active, 
fieldset[disabled] .basketbtn.active { 
  background-color: #272529; 
  border-color: #3E3D42; 
} 
 
.basketbtn .badge { 
  color: #272529; 
  background-color: #FFFFFF; 
}
</style>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="detail_container">
		<div id="detail_detailContainer">
			<div id="detail_detailContainer_itembox">
				<div id="detail_detailContainer_itembox_imgbox">
					<img id="detail_detailContainer_itembox_imgbox_img"
						src="${img[0] }" alt="신발이미지" />
				</div>
				<div id="detail_detailContainer_itembox_context">
				<form action="" class="form-inline">
					<table id="detail_detailContainer_itembox_context_table">
						<tr>
							<td colspan="4" id="detail_detailContainer_itembox_context_table_goodsname">${detail.goodsname }</td>
						</tr>
						<tr>
							<td colspan="4"	id="detail_detailContainer_itembox_context_table_category">${detail.gender }
								신발 ${detail.category }</td>
						</tr>
						<tr>
							<td colspan="4"	class="pricediv" id="detail_detailContainer_itembox_context_table_price">
								${detail.price }원${detail.discount }
							</td>
						</tr>
						<tr>
							<td colspan="4">카드무이자 할부 안내
								<hr />
							</td>

						</tr>
						<tr>
							<td colspan="4"><p>이 제품은 정 사이즈로 구매하시길 추천합니다. 고객 상품평 기준으로
									개개인의 발볼 너비와 발모양 특성에 따라 차이가 있을 수 있습니다.</p></td>
						</tr>
						<tr>
							<td colspan="4"><a href="#">사이즈 가이드</a></td>

						</tr>
						<tr>
							<td>
							
								<select class="form-control" name="size" id="size" tabindex="사이즈">
									<c:forEach items="${detail_size}" var="i">
										<option>${i.goodssize }</option>
								</c:forEach>
								</select> 
								<select class="form-control" name="amount" id="amount">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 
								<input type="button" id="detail_buy" class="btn btn-warning" value="구매하기" /> 
								<input height="100" id="add_wishlist" type="button" class="btn basketbtn" value="장바구니" />
							</td>
						</tr>
					</table>
					</form>
					<br /><br />
					<div id="itemlist" class="itemlist">
								<input type="hidden" name="imglength" id="imglength" value="${imglength }"/>
						<ul class="item clx">
								<c:forEach var="i" begin="1" end="${imglength-1 }">
									<%-- <input type="hidden" name="img${i }" id="img${i }" value="${img[i] }"/> --%>
									<li><img id="img${i }"width="80px" src="${img[i] }" alt="" onclick="changeimg(this)"/></li>	
								</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div id="detail_detailContainer_detailBox">
				<hr />
				<div id="css_tabs">
					<input id="tab1" type="radio" name="tab" checked="checked" /> <input
						id="tab2" type="radio" name="tab" /> <input id="tab3"
						type="radio" name="tab" /> <input id="tab4" type="radio"
						name="tab" /> <label for="tab1">상세정보</label> <label for="tab2">배송/결제
						정보</label> <label for="tab3">유의사항</label> <label for="tab4">교환/반품/AS</label>
					<div class="tab1_content">
						<table id="detail_detailContainer_detailBox_table">
							<tr>
								<th>제품주소재</th>
								<td>${detail.material}</td>
							</tr>
							<tr>
								<th>색상</th>
								<td>${detail.color }</td>
							</tr>
							<tr>
								<th>치수</th>
								<td>${detailname.goodssize }</td>
							</tr>
							<tr>
								<th>제조국</th>
								<td>${detail.country }</td>
							</tr>
							<tr>
								<th>품질보증기준</th>
								<td id="gurantee_table1">품질보증기간:구입후 6개월<br /> 유통중 손상되었거나 품질에 이상이 있는
									제품에 한하여 소비자피해보상규정 에 의거 보상하여 드립니다. <br /> 단, 제품에 부착되어 있는 사용방법 및
									취급시주의사항에 따라 제품을 관리해 주시고, 소비자 부주의로 인한 품질 이상 및 변형에 대해서는 책임을 지지
									않습니다.
								</td>
							</tr>
							<tr>
								<th>수입자(수입업체명)</th>
								<td>나이스 코리아</td>
							</tr>
							<tr>
								<th>고객센터 전화번호</th>
								<td>02-2222-2222</td>
							</tr>
						</table>
					</div>
					<div class="tab2_content">
						<table>
							<tr>
								<th width="20%">배송방식</th>
								<th>택배</th>
							</tr>
							<tr>
								<td>배송지역</td>
								<td>전국(일부 지역 제외)</td>
							</tr>
							<tr>
								<td>배송비</td>
								<td>상품 구매금액이 3만원 이상일 경우 무료배송 되며 3만원 미만일 경우 3,000원이 부과됩니다.<br />
									단, 도서/산간에 대한 추가 배송비는 택배사 기준에 따르며 추가 배송비는 고객이 상품 수령시 지불하시면 됩니다.
									<br /> 단, 주문 후 변심으로 반품/교환하실 경우 반품 배송비는 고객님께서 부담하셔야 합니다.<br /></td>
							</tr>
							<tr>
								<td>배송기간</td>
								<td>결제 후 3일 이내, 발송완료 등록 및 발송완료 문자 메시지를 받으신 후 고객님께 배달완료 되기까지
									1~2일정도 소요됩니다.<br /> (토요일, 공휴일 제외) 택배사 또는 고객사정(고객님 연락이 되지 않을
									경우)으로 인해 배송이 지연되는 경우가 있으니 해당 택배사로 전화문의를 하시면 배송상태를 확인 하실 수 있습니다.
								</td>
							</tr>
							<tr>
								<td>유의사항</td>
								<td>고객님의 단순 변심으로 인한 반품의 경우, 해당 택배 비는 고객님께서 부담하셔야 합니다.<br />
									예상 반품비 : 3,000원, 예상 교환 비 : 3,000원 (주문 상품을 1개씩 각각 반품, 교환 시 상품별로
									발생하는 비용임)
								</td>
							</tr>
						</table>
					</div>
					<div class="tab3_content">
						<ul>
							<li>에어솔: 신발의 에어백은 신발 본체와 일체형으로 제작, 교체나 때움 등의 수리가 불가능하여 외력에
								의해 에어가 손상된 경우는 보상 처리되지 않습니다.</li>
							<li>Nike 플러스(+) 제품 특성상 왼쪽화 인솔 아래 부분에 센서를 넣을 수 있도록 플라스틱 홀더가
								있어 착화 시 소리가 발생할 수 있습니다.</li>
							<li>신발에 기름이 접촉하지 않도록 신경 써주시기 바랍니다.</li>
							<li>천연 가죽이나 천은 물기 및 마찰에 의해 색깔이 변할 가능성이 있습니다.</li>
							<li>젖은 노면 혹은 미끄러지기 쉬운 장소에서는 주의 바랍니다.</li>
							<li>염분(바닷물)이 있는 곳에서 착용하시면 제품이 쉽게 부식됩니다.</li>
							<li>고온 다습한 장소에 장시간 방치를 삼가 바랍니다.</li>
							<li>천연 가죽 신발은 신발 고정대나 신문지 등으로 형태를 고정하여 보관할 것을 권합니다.</li>
							<li>불이나 난방기구 근처에는 보관하지 말아주시기 바랍니다.</li>
							<li>신발 뒤꿈치를 꺾어 신지 마시고, 신발끈은 꽉 조여 주시기 바랍니다.</li>
							<li>성인, 청소년이 아동용 제품을 착용하면 부상을 입을 수 있습니다.</li>
							<li>착화 전 발톱이 길거나 짧으면 운동 및 보행 시 부상의 위험이 있으니 주의하시기 바랍니다.</li>
							<li>등산화, 축구화, 야구화의 경우 해당 운동에 맞는 양말을 착용하시기 바랍니다.</li>
							<li>꼭 신어본 후에 구매하여 주시기 바랍니다.</li>
							<li>고어텍스 제품의 경우 보온효과로 인해 땀이 생길 수 있으므로 주의하시기 바랍니다.</li>
							<li>바닥마모가 심한 경우 미끄러울 수 있으니 무리한 착화를 피하시기 바랍니다.</li>
							<li>세탁이 가능한 제품에 한하여 단독 세탁하시고, 세탁 가능 여부는 상품 택을 참조하십시오.</li>
							<li>세탁 시 연성세제 및 상온수 (15-25도)를 사용하시기 바랍니다.</li>
							<li>세척 시 세탁기에 절대 넣지 마시기 바랍니다.</li>
							<li>세제는 중성세제를 사용하시고, 표백제나 표백성분이 있는 성분은 사용 삼가 바랍니다 .</li>
							<li>세제를 사용하는 경우에는 세제에 넣은 채로 장시간 방치하지 마세요.</li>
							<li>충분하게 물로 헹구어 세제가 남지 않도록 하며 신발끈은 빼서 별도로 손 세탁 바랍니다.</li>
							<li>벤젠, 신나 등의 휘발성용제를 사용하면 변형, 변색, 원인이 되므로 삼가 주십시오. <br />
								신발이 젖은 경우에는 건조된 천 등으로 물기를 닦아 주십시오.<br /> 형태 변형 방지를 위하여 흰 종이나 천을
								넣어서, 통풍이 잘 되는 그늘에서 말려 주시고 화기를 피해주십시오.
							</li>
							<li>스토브나 헤어 드라이어 등으로 강제 건조할 경우 신발이 변형될 수 있으니 삼가 바랍니다.</li>
							<li>천연가죽 세탁: 물세탁을 피하시고, 부드러운 솔이나 젖은 헝겊 또는 신발 전용 클리너로 표면을 닦아서
								관리 바랍니다.</li>
							<li>인조가죽 세탁: 부드러운 솔로 오염제거(신발끈과 깔창 분리), 비눗물로 표면세척(끈과 깔창은
								중성세제로 세탁하여 통풍이 잘되는 곳에서 건조시키기), 강한 직사광선에 밀리면 뒤틀리거나 변색될 우려가 있으니 조심
								바랍니다.</li>
							<li>스웨이드 (세무, 스프린터): 물과 접촉시, 물 빠짐 현상이 가속화 됩니다. 빨래 비누 및 물 세탁
								삼가 바랍니다.</li>
						</ul>
					</div>
					<div class="tab4_content">
						<div class="group">
							<p>교환/반품 안내</p>
							<ul>
								<li>고객님의 단순변심(사이즈 부정확 및 디자인 색상 불만 등)으로 인한 교환/반품은 실제 상품을
									수령하신 날로부터 7일 이내</li>
								<li>고객님이 받으신 상품 등의 내용이 표시, 광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는
									상품 등을 수령한 날로부터 3개월 이내<br /> 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내
								</li>
							</ul>
						</div>

						<div class="group">
							<p>교환/반품 배송비</p>
							<ul>
								<li>고객님의 단순변심으로 인하여 교환/반품을 하시는 경우에는 상품 등의 반환에 필요한 비용을 고객님이
									부담하셔야 합니다.</li>
								<li>고객님이 받으신 상품 등의 내용이 표시, 광고 내용과 다르거나 계약내용과 다르게 이행되어
									교환/반품을 하시는 경우 교환/반품 배송비는 무료입니다.</li>
							</ul>
						</div>
						<div class="group">
							<p>교환/반품 불가 안내</p>
							<ul>
								<li>포장을 개봉하여 시착 또는 사용하여 상품 등의 가치가 훼손된 경우에는 교환/반품이 불가하오니 이 점
									양해하여 주시기 바랍니다.</li>
								<li>단, 상품의 내용을 확인하기 위하여 포장을 개봉한 경우에는 교환/반품이 가능합니다.</li>
								<li>고객님의 단순 변심으로 인한 교환/반품 요청이 상품을 수령한 날로부터 7일을 경과한 경우</li>
								<li>고객님의 책임 있는 사유로 상품 등의 가치가 심하게 훼손된 경우</li>
								<li>고객님의 사용 또는 일부 소비에 의하여 상품 등의 가치가 현저히 감소된 경우</li>
								<li>시간이 경과되어 재판매가 곤란할 정도로 상품 등의 가치가 상실된 경우 (예: 계절의류)</li>
								<li>신발 박스, 상품의 택과 라벨을 훼손 및 분실하여 재판매가 불가능한 경우</li>
								<li>나이키닷컴에서 구입한 상품은 점포에서 반품할 수 없습니다.(온라인에서 구입한 상품은, 온라인에서만
									반품을 받습니다.)</li>
								<li>반품 하실때는 부속품을 반드시 상품과 동시에 반송해 주십시오. (주문확인서, 단추 등 상품의
									부속품, 상품에 붙어있는 택·라벨, 신발 박스)</li>
								<li>기타, '전자상거래 등에서의 소비자보호에 관한 법률'이 정하는 청약철회 제한사유에 해당되는 경우</li>
								<li>상기 내용을 충족시키지 않는 경우는 반품 할 수 없습니다.</li>
							</ul>
						</div>
						<div class="group">
							<p>환불지연 배상금 지급 안내</p>
							<ul>
								<li>환불지연이 발생하셨을 경우 전자상거래법에 따라 환불지연배상금 지급을 요청하실 수 있습니다.</li>
								<li>환불이 지연되었을 경우 고객센터로 문의 주시면 환불지연배상금 지급 대상 여부를 확인 후 지급해
									드립니다.</li>
								<li>환불지연에 해당하는 경우<br /> - 나이키닷컴의 책임으로 상품공급이 불가한 상태로 결제일로부터
									3 영업일이 경과한 경우<br /> - 반품 상품을 나이키닷컴이 수령한 날로부터 3 영업일이 경과하도록
									상품대금을 환불하지 않았을 경우
								</li>
								<li>환불지연배상금액 기준<br /> - 전자상거래법 제 18조 규정에 따라 지급함 (연이자 20%를
									일할 계산)
								</li>
							</ul>
						</div>
						<div class="group">
							<p>교환/반품/보증조건 및 품질보증기준</p>
							<ul>
								<li>나이키닷컴에서 구매한 제품에 대한 A/S는 나이키닷컴 혹은 본사에 의뢰하십시오.</li>
								<li>해당 의뢰 기관 이외에서 수선하여 제품을 변경, 손상시켰을 경우에는 보상이 불가합니다.<br />
									(운동화 전용 본드가 아닌 접착제를 사용하면 제품이 손상될 수 있으며 수선, 보상이 불가함)
								</li>
								<li>소비자 취급 주의사항을 이행하지 않은 경우 보상의 책임을 지지 않습니다.</li>
								<li>잘못된 세탁 및 품질보증기간경과, 잘못된 착화, 제품훼손으로 인한 변형 및 품질이상에 대해서는
									보상의 책임을 지지않으며 다만 수선 가능 시에는 실비로 수선하여 드립니다.</li>
								<li>제품의 품질에 이상이 있어 피해보상이나 수선을 원하실 때에는 품질보증서와 영수증을 지참하시고
									구입판매점 및 본사 소비자 상담실로 연락해 주십시오.</li>
								<li>본 제품은 소비자분쟁해결기준(공정거래위원회 고시)에 의거 정당한 소비자 피해에 대해 보상해
									드립니다.</li>
							</ul>
						</div>

						<div class="group">
							<p>재화등의 불만처리 및 소비자사업자의 분쟁처리사항</p>
							<ul>
								<li>재화등의 불만처리 및 소비자와 사업자 간 분쟁 처리 사항은 나이키닷컴 이용약관 제 28조(분쟁해결)
									내용을 확인해 주시기 바랍니다. <a href="/display/rules.lecs?tach=1#terms28"
									class="detail-btn" title="불만처리 및 소비자사업자의 분쟁처리사항 자세히보기">자세히보기</a>
								</li>
							</ul>
						</div>

						<div class="group">
							<p>AS 안내 정보</p>
							<ul>
								<li>나이키닷컴은 제품을 구매하신 뒤 품질에 이상이 있는 경우 온라인 A/S 정책에 따라 서비스를 제공해
									드리고 있습니다.<a href="javascript:popUp01();" class="detail-btn"
									title="서비스제공 자세히보기">자세히보기</a>
								</li>
								<li>나이키닷컴에서는 나이키닷컴에서 구매한 제품에 한하여 A/S 접수가 가능합니다.</li>
								<li>A/S 접수는 나이키닷컴 고객센터(TEL: 1577-1360)를 통해서만 진행됩니다.</li>
								<li>A/S 판정 결과에 따라 수선 비용이 부가될 수 있으며 판정 결과는 품질 보증기간, 내용연수
									경과여부, 제품 하자 여부, 소비자 과실 여부에 의해 결정됩니다.</li>
								<li>A/S 접수 후 제품 수거 택배 비용은 무료이며 판정결과에 따라 A/S 제품을 고객님께 발송하는
									택배 비용이 부가될 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div id="detail_detailContainer_reviewContainer">
				<hr />
				<div id="review_btn_div">
					<input id="review_btn" class="btn btn-warning" type="button"
						value="상품리뷰 작성하기" />
				</div>
				<br /><br />
				<div id="review_container">
				<div id="detail_detailContainer_reviewContainer_reviewtable">
					<table class="table">

						<c:forEach items="${review_list }" var="i">
							<tr>
								<td><span class="reviewgrade1" id="reviewgrade1">${i.reviewgrade }</span>${i.reviewdate }<br /> <font
									size="5px"><b> ${i.reviewtitle }</b></font><br /> ${i.id }<br />
									${i.context }
								</td>
								<td>사이즈 : ${i.review_size }<br /> 편안함 : ${i.review_comf }<br />
									내구성 : ${i.review_durability }<br />
								</td>
							</tr>
						</c:forEach>
					</table>
					<br /> <br />
				</div>
				</div>
				<div id="detail_detailContainer_reviewContainer_reviewtable_paging">
						<c:forEach var="j" begin="${startpage }" end="${endpage}">
							<input type="button" value="${j }" onclick="page('${j}')" />
						</c:forEach>
				</div>
			</div>
			<div id="a">
				<form name="detail_form">
					<div id="detail_detailContainer_revewColorBox">
						<div id="detail_detailContainer_reviewContainer_reviewForm">
							<div
								id="detail_detailContainer_reviewContainer_reviewForm_reviewData">

								<input type="hidden" name="goodsno" id="goodsno" value="${detail.goodsno }" />
								<h2>별점주기</h2>
								<br /> 
								<img id="star1" src="<c:url value='images/emptystar.png'/>" alt="별점" /> 
								<img id="star2" src="<c:url value='images/emptystar.png'/>" alt="별점" />
								<img id="star3" src="<c:url value='images/emptystar.png'/>"	alt="별점" /> 
								<img id="star4" src="<c:url value='images/emptystar.png'/>" alt="별점" /> 
								<img id="star5" src="<c:url value='images/emptystar.png'/>" alt="별점" />
								<br />
								<br /> 
								<input type="hidden" name="reviewgrade" id="reviewgrade" value="" />
								<h2>상세평가</h2>
								<div class="row">
									<div class="col-xs-2">
										<p>사이즈</p>
									</div>
									<div id="detail_size">
										<input id="detail_size_tab1" type="radio" name="detail_tab" checked="checked" /> 
										<input id="detail_size_tab2" type="radio" name="detail_tab" /> 
										<input id="detail_size_tab3" type="radio" name="detail_tab" /> 
										<input id="detail_size_tab4" type="radio" name="detail_tab" /> 
										<input id="detail_size_tab5" type="radio" name="detail_tab" /> 
										<label id="detail_size_label1" class="detail_size_label" for="detail_size_tab1"></label>
										<label id="detail_size_label2" class="detail_size_label" for="detail_size_tab2"></label> 
										<label id="detail_size_label3" class="detail_size_label" for="detail_size_tab3"></label>
										<label id="detail_size_label4" class="detail_size_label" for="detail_size_tab4"></label> 
										<label id="detail_size_label5" class="detail_size_label" for="detail_size_tab5"></label>
										<input type="hidden" name="review_size" id="review_size" value="" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-2">
										<p>편안함</p>
									</div>
									<div id="detail_comf">
										<input id="detail_comf_tab1" type="radio" name="detail_tab" checked="checked" /> 
										<input id="detail_comf_tab2" type="radio" name="detail_tab" /> 
										<input id="detail_comf_tab3" type="radio" name="detail_tab" /> 
										<input id="detail_comf_tab4" type="radio" name="detail_tab" /> 
										<input id="detail_comf_tab5" type="radio" name="detail_tab" /> 
										<label id="detail_comf_label1" class="detail_comf_label" for="detail_comf_tab1"></label>
										<label id="detail_comf_label2" class="detail_comf_label" for="detail_comf_tab2"></label> 
										<label id="detail_comf_label3" class="detail_comf_label" for="detail_comf_tab3"></label>
										<label id="detail_comf_label4" class="detail_comf_label" for="detail_comf_tab4"></label> 
										<label id="detail_comf_label5" class="detail_comf_label" for="detail_comf_tab5"></label>
										<input type="hidden" name="review_comf" id="review_comf" value="" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-2">
										<p>내구성</p>
									</div>
									<div id="detail_dur">
										<input id="detail_dur_tab1" type="radio" name="detail_tab" checked="checked" /> 
										<input id="detail_dur_tab2" type="radio" name="detail_tab" /> 
										<input id="detail_dur_tab3" type="radio" name="detail_tab" /> 
										<input id="detail_dur_tab4" type="radio" name="detail_tab" /> 
										<input id="detail_dur_tab5" type="radio" name="detail_tab" /> 
										<label id="detail_dur_label1" class="detail_dur_label" for="detail_dur_tab1"></label>
										<label id="detail_dur_label2" class="detail_dur_label" for="detail_dur_tab2"></label> 
										<label id="detail_dur_label3" class="detail_dur_label" for="detail_dur_tab3"></label>
										<label id="detail_dur_label4" class="detail_dur_label" for="detail_dur_tab4"></label> 
										<label id="detail_dur_label5" class="detail_dur_label" for="detail_dur_tab5"></label>
										<input type="hidden" name="review_durability" id="review_durability" value="" />
									</div>
								</div>
								<hr />
								<br />


								<h2>리뷰작성</h2>
								<hr />
								<br />
								<input type="hidden" name="id" id="id"  value="${id }"/>
								<div class="row">
									<div class="col-xs-1">
										<p>제목</p>
									</div>
									<input width="200px" type="text" name="reviewtitle"
										id="reviewtitle" />
								</div>
								<div class="row">
									<div class="col-xs-1">
										<p>리뷰</p>
									</div>
									<textarea id="context" name="context" rows="10" cols="70"></textarea>
								</div>
								<div class="form-group">
									<label for="exampleInputFile">사진 등록</label> <input type="file"
										id="rivewimg" name="rivewimg">
								</div>

								<input id="reviewOk_btn" type="button" value="등록" />
							</div>
						</div>
					</div>
					<br /> <br />
				</form>

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