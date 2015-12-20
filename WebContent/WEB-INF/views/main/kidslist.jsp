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
		var review_avg = $('#review_avg').val().substring(1,$('#review_avg').val().length-1).split(",");
		
		for (var i =0;i<review_avg.length;i++)
		{
			if(review_avg[i]==0)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/0star.png'/> alt='' />");
			if(review_avg[i]==1)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/1star.png'/> alt='' />");
			if(review_avg[i]==2)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/2star.png'/> alt='' />");
			if(review_avg[i]==3)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/3star.png'/> alt='' />");
			if(review_avg[i]==4)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/4star.png'/> alt='' />");
			if(review_avg[i]==5)
				$('.review_avg_div').eq(i).html("<img src=<c:url value='images/5star.png'/> alt='' />");
		};
		var imglength = $('.imgdiv').length;

		for (var i = 0; i < imglength; i++) {
			var imgsrc = $('.imgdiv').eq(i).html().split(",");
			$('.imgdiv').eq(i).html("<img src="+imgsrc[0]+">");

		}
		var statuslength = $('.goods_status_value').length;
		for(var i = 0 ; i<statuslength;i++)
		{
			var statusvalue = $('.goods_status_value').eq(i).val();
			if(statusvalue=='1')
			{
				$('.goods_status').eq(i).html("판매중");		
			}
			else
			{
				$('.goods_status').eq(i).html("미판매중");	
			}
		}
		var pricelength = $('.pricediv').length;
		console.log(pricelength);
		for(var i = 0 ;i<pricelength;i++)
		{
			var price = $('.pricediv').eq(i).html().split("원");
			if(price[1]!=0)
			{
				console.log(price[0]-price[0]*price[1]/100);
				var price2 = price[0]-price[0]*price[1]/100;
				$('.pricediv').eq(i).html("<i style=text-decoration:line-through>"+price[0]+"원</i>" +"&nbsp;&nbsp;&nbsp;"+"<span id=price2>" +price2+"원</span>");
			}
			else
			{
				var price2 = price[0];
			$('.pricediv').eq(i).html("<span style=color:#fa5400;>"+price[0]+"</span>원");
			}
		}
		
		if($("#category").val()=="러닝화")
			$( "#running" ).addClass( "active" );	
		else if($("#category").val()=="스포츠웨어")
			$("#sportwear").addClass("active");
		else if($("#category").val()=="테니스")
			$("#tennis").addClass("active");
		else if($("#category").val()=="골프")
			$("#golf").addClass("active");
		else if($("#category").val()=="농구")
			$("#basketball").addClass("active");
		else if($("#category").val()=="조던")
			$("#jordan").addClass("active");
		else if($("#category").val()=="축구")
			$("#soccer").addClass("active");
	
		$("#color-p").on('click',function(){
			$("#left-color").toggle();
		});
		
	});
	function ex() {
		console.log("aaaa");
	}
</script>
<title>Insert title here</title>

<style type="text/css">
#price2{
	color : #fa5400;
}
#kidslist_container{
	margin-top : 25px;
	margin-bottom: 100px;
	min-height: 830px;
	margin-left : 260px;
}
#kidslist_listContainer_leftmenu {
	position: fixed;
	top: 100px;
	left: 20px;
	background-color: #eeeeee;
	width: 222px;
}
#kidslist_listcontainer_mainframe{
	width: 1200px;
}
#kidslist_listContainer_leftmenu li {
	list-style-type: none;
}

#kidslist_listContainer_mainframe_list {
	text-align: center;
}

.kidslist_listContainer_mainframe_list_item {
	margin-top: 50px;
	margin-left: 40px;
	width: 260px;
	float: left;
	height: 330px;
}

#kidslist_listContainer_mainframe_list .kidslist_listContainer_mainframe_list_item img{
	width: 200px;
	margin-bottom: 10px;
}
.kidslist_listContainer_mainframe_list_item:hover{
	outline : 1px solid #ccc;
}
#kidslist_listContainer_mainframe_list_item .detail_goods{
	text-align: left;
}
#detail_goods, #detail_goods_price{
	margin-left : 10px;
	text-align: left;
}
.nav_link_wrap{
	padding : 10px 0 11px 15px;
	
}
.nav_link_wrap ul{
	margin-top : 10px;
	margin-left : 10px;
}
#left-color div a{
	float : left;
	position : relative;
	display : block;
	width: 36px;
	height: 36px;
	text-decoration: none;
}
#color-list-div{
	border-top : 1px solid #d2d2d8;
}
#color-p,#category-p{
	cursor: pointer;
	text-decoration: none;	
}
#main_li{
	border-bottom :1px solid #d2d2d8;
}
#review_avg_div img{
	width : 70px !important;
	height: 15px !important;
	margin-left : 10px;
}
#review_avg_div {
    text-align: left;
}
#hrcss, .hrcss{
	margin-top : 5px !important;
	margin-bottom : 5px !important;
	border : 1px solid #eee;
}
.over{
	display: none;
    position: absolute;
    left: 50%;
    bottom: 32px;
    min-width: 32px;
    margin-left: -27px;
    padding: 9px 12px 9px 10px;
    background-color: #333;
    border-radius: 4px 4px 4px 4px;
    color: #fff;
    text-align: center;
    letter-spacing: -2px;
    z-index: 10;
}
#category_plus{
	text-align: right;
}
#review_avg_div{
	margin-right: 120px;
}
#goodstitle{
	text-align: center;
}
#goodscount{
	font-weight: bold;
}
#category_leftmenu .nva li a{
	color : #eee !important;
}
#category_leftmenu .nav{
	padding-top : 0px !important;
	padding-left : 30px !important;
}
#category_list{
	padding-bottom : 1px !important;
}
#smalldiv{
	color : gray;
}
</style>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="kidslist_container" class="kidslist_container">
		<input type="hidden" name="category" id="category" value="${category }" />
		<input type="hidden" name="gender" id="gender" value="${gender }" />
		<input type="hidden" name="review_avg" id="review_avg" value="${reviewavg }"/>
		<input type="hidden" name="review_length" id="review_length" value="${reviewlength }"/>
		<div id="kidslist_listContainer">
			<div id="kidslist_listcontainer_mainframe">
				<div id="goodstitle" class="page">
					<h1 id="page-header-h1">${gender } 신발 <small id="smalldiv">${category } ${color }</small></h1>
					<img src="<c:url value='images/bg_module_s.gif'/>" alt="" />
				</div>
				
				<c:forEach items="${list }" var="i" varStatus="status">
					<a style="color:black" href="detail.do?goodsno=${i.goodsno }&gender=${gender}">
						<div id="kidslist_listContainer_mainframe_list">
							<div class="kidslist_listContainer_mainframe_list_item">
								<div id="imgdiv" class="imgdiv">${i.goodsimg }</div>
								<span id="review_avg_div" class="review_avg_div"></span>
								
								<span id="goods_status" class="goods_status"></span>
								<input type="hidden" name="goods_status_value" class="goods_status_value" value="${i.status }"/>
								<hr id="hrcss" class="hrcss"/>
								
								<div id="detail_goods" class="detail_goods">
								${i.goodsname}<br /> ${gender } ${category }<br />
								</div>
								<div id="detail_goods_price" class="pricediv">
									${i.price }원${i.discount }
								</div>
							</div>



						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>
	<div id="kidslist_listContainer_leftmenu">
		<div id="category_list" class="nav_link_wrap">
		<div><p id="goodscount">${goodscount }개의 제품</p></div>
		<div id="color-list-div" class="nav_link_wrap" style="display:block;"></div>
			<a href="main.do">Main</a><br />
		</div>
	
		<div id="color-list-div" class="nav_link_wrap" style="display:block;">
		<div id="color-list">
			<p id="color-p">컬러</p>
		</div>
		<ul class="nav" id ="left-color">
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=black&category=키즈">
						<img src="<c:url value='images/ico_color_black.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=blue&category=키즈">
						<img src="<c:url value='images/ico_color_blue.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=gray&category=키즈">
						<img src="<c:url value='images/ico_color_gray.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=green&category=키즈">
						<img src="<c:url value='images/ico_color_green.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=navy&category=키즈">
						<img src="<c:url value='images/ico_color_navy.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=orange&category=키즈">
						<img src="<c:url value='images/ico_color_orange.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=pink&category=키즈">
						<img src="<c:url value='images/ico_color_pink.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=purple&category=키즈">
						<img src="<c:url value='images/ico_color_purple.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=red&category=키즈">
						<img src="<c:url value='images/ico_color_red.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=silver&category=키즈">
						<img src="<c:url value='images/ico_color_silver.gif'/>" alt="" />
					</a>
				</div>
			</li>
			<li>
				<div>
					<a href="list.do?gender=${gender }&color=white&category=키즈">
						<img src="<c:url value='images/ico_color_white.gif'/>" alt="" />
					</a>
				</div>
			</li>
		</ul>
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