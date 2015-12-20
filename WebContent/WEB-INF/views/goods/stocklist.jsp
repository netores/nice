<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		  var vHas = location.hash;
	        if(vHas==""){
	            location.hash = "#stocklistContainer_tab1";
	        }
	       

		var tableLength = $('#listtable').find('tr').size();
		$("#gender").change(function() {

			$.ajax({
				url : "<c:url value='/ajaxcategory.do'/>",
				type : "get",
				data : {
					gender : $('#gender').val(),
				},

				success : function(data) {

					$("#category").html("");
					$("#category").append(data);
				}
			});
			if ($('#gender').val() != '성별') {
				reset();
				genderFunction();
			}
		});

		$("#category").change(function() {
			console.log($('#gender').val());

			$.ajax({
				url : "<c:url value='/ajaxgoodsname.do'/>",
				type : "get",
				data : {
					gender : $('#gender').val(),
					category : $('#category').val()
				},

				success : function(data) {

					$("#goodsname").html("");
					$("#goodsname").append(data);
				}
			});

			for (var i = 1; i < tableLength; i++) {
				$('#listtable').find("tr:eq(" + i + ")").show();
			}

			if ($('#category').val() != '종류') {
				reset();
				genderFunction();
				categoryFunction();

			}

		});

		$("#goodsname").change(function() {
			console.log($('#gender').val() + $('#goodsname').val());
			$.ajax({
				url : "<c:url value='/ajaxgoodscolor.do'/>",
				type : "get",
				data : {
					gender : $('#gender').val(),
					goodsname : $('#goodsname').val()
				},
				success : function(data) {
					$("#color").html("");
					$("#color").append(data);
				}

			});

			if ($('#goodsname').val() != '상품명') {
				reset();
				genderFunction();
				categoryFunction();
				goodsnameFunction();

			}

		});

		$("#color").change(function() {

			$.ajax({
				url : "<c:url value='/ajaxgoodssize.do'/>",
				type : "get",
				data : {
					gender : $('#gender').val(),
					goodsname : $('#goodsname').val(),
					color : $('#color').val()
				},
				success : function(data) {
					$('#goodssize').html("");
					$('#goodssize').append(data);
				}

			});
			if ($('#color').val() != '색상') {
				reset();
				genderFunction();
				categoryFunction();
				goodsnameFunction();
				colorFunction();
			}

		});

		$("#goodssize").change(function() {
			if ($('#goodssize').val() != '선택') {
				reset();
				genderFunction();
				categoryFunction();
				goodsnameFunction();
				colorFunction();
				goodssizeFunction();
			}
			
		});

		function reset() {
			for (var i = 0; i < tableLength; i++) {
				$('#listtable').find("tr:eq(" + i + ")").show();
			}

		}

		function genderFunction() {

			var selectgender = $('#gender').val();
			for (var i = 0; i < tableLength; i++) {
				var gender = $('#listtable').find('tr:eq(' + i + ')')
				if ($('#listtable').find("tr:eq(" + i + ")").find('td:eq(0)')
						.html() != selectgender) {
					gender.hide();
				}

			}
		}
		function categoryFunction() {
			var selectCategory = $('#category').val();
			for (var i = 0; i < tableLength; i++) {
				var category = $('#listtable').find('tr:eq(' + i + ')');
				if ($('#listtable').find("tr:eq(" + i + ")").find('td:eq(1)')
						.html() != selectCategory) {
					category.hide();
				}

			}

		}

		function goodsnameFunction() {
			var selectGoodsname = $('#goodsname').val();
			for (var i = 0; i < tableLength; i++) {
				var goodsname = $('#listtable').find('tr:eq(' + i + ')');
				if ($('#listtable').find("tr:eq(" + i + ")").find('td:eq(2)')
						.html() != selectGoodsname) {
					goodsname.hide();
				}

			}
		}

		function colorFunction() {
			var selectColor = $('#color').val();
			for (var i = 0; i < tableLength; i++) {
				var color = $('#listtable').find('tr:eq(' + i + ')');
				if ($('#listtable').find("tr:eq(" + i + ")").find('td:eq(3)')
						.html() != selectColor) {
					color.hide();
				}

			}
		}
		function goodssizeFunction() {
			var selectSize = $('#goodssize').val();
			for (var i = 0; i < tableLength; i++) {
				var size = $('#listtable').find('tr:eq(' + i + ')');
				if ($('#listtable').find("tr:eq(" + i + ")").find('td:eq(4)')
						.html() != selectSize) {
					size.hide();
				}

			}
		}

		var selectlist_gender = $('#selectGoods').find('td:eq(0)');
		var selectlist_category = $('#selectGoods').find('td:eq(1)');
		var selectlist_goodsname = $('#selectGoods').find('td:eq(2)');
		var selectlist_color = $('#selectGoods').find('td:eq(3)');
		var selectlist_goodssize = $('#selectGoods').find('td:eq(4)');
		var selectlist_price = $('#selectGoods').find('td:eq(5)');
		var selectlist_stock = $('#selectGoods').find('td:eq(6)');

		$('#listtable tr').each(function(i, v) {
			var me = $(this);
			me.click(function(e) {
				selectlist_gender.html(me.find('td:eq(0)').html());
				selectlist_category.html(me.find('td:eq(1)').html());
				selectlist_goodsname.html(me.find('td:eq(2)').html());
				selectlist_color.html(me.find('td:eq(3)').html());
				selectlist_goodssize.html(me.find('td:eq(4)').html());
				selectlist_price.html(me.find('td:eq(5)').html());
				selectlist_stock.html(me.find('td:eq(6)').html());

			});
		});
		$('#orderbtn').on(
				'click',
				function() {
					var gender = selectlist_gender.html();
					var category = selectlist_category.html();
					var goodsname = selectlist_goodsname.html();
					var color = selectlist_color.html();
					var goodssize = selectlist_goodssize.html();
					var price = selectlist_price.html();
					var stock = selectlist_stock.html();
					var orderstock = $('#orderstock').val();
					var conf =confirm("성별 : " + gender + " / 종류 : " + category
							+ "\n상품명 : " + goodsname + "\n색상 : " + color
							+ " / 사이즈 : " + goodssize + "\n가격 : " + price
							+ "\n현재 재고량 :" + stock + "\n발주량 : " + orderstock);

					if (conf) {
						
						
						
						var orderlistlength = $('#orderlist').find('tr').size();
						
						
					
						for(var i=2;i<=orderlistlength;i++){
							
						var  ordercategory =$('#orderlist').find("tr:eq("+i+")").find('td:eq(0)').html();
						var  ordername =$('#orderlist').find("tr:eq("+i+")").find('td:eq(1)').html();
						var  ordercolor =$('#orderlist').find("tr:eq("+i+")").find('td:eq(2)').html();
						var  ordergender =$('#orderlist').find("tr:eq("+i+")").find('td:eq(3)').html();
						var  ordersize =$('#orderlist').find("tr:eq("+i+")").find('td:eq(4)').html();
						var  noworderstock =$('#orderlist').find("tr:eq("+i+")").find('td:eq(6)').html();
						var  goodsorderno =$('#orderlist').find("tr:eq("+i+")").find('td:eq(8)').find(':eq(1)').val();
						
						if(gender==ordergender && category==ordercategory && goodsname==ordername && color==ordercolor && goodssize==ordersize){
							console.log("같은신발이있따.");
							var cf = confirm(noworderstock+"개 발주중입니다.\n"+ orderstock+"개 추가 발주하시겠습니까 ?");
							if(cf){
								  location.href = "orderupdate.do?goodsorderno="+goodsorderno+"&orderamount="+orderstock;
							}
							return;
							
						}else{
							console.log("없따");				
						 }
						}
							var cf =confirm(orderstock+"개 발주 하시겠습니까?");
						if(cf){	
						  location.href = "orderinsert.do?gender=" + gender
								+ "&color=" + color + "&category=" + category
								+ "&goodsname=" + goodsname + "&goodssize="
								+ goodssize + "&stock=" + stock
								+ "&orderstock=" + orderstock; 
						}
					};
			       
				});
		$("#insertbtn").on('click', function() {

			if($("#newgoodsname").val()==""){
				alert("input goods' name");
				return;
			}
		
			else if($("#newprice").val()==""){
				alert("input goods' price");		
				return;
			}
			else if($("#newreleasedate").val()==""){
				alert("input goods' releasedate");	
				return;
			}
			else if($("#newmaterial").val()==""){
				alert("input goods' material");	
				return;
			}
			else if($("#newcountry").val()==""){
				alert("input goods' country");	
				return;
			}
			else if($("#newexplanation").val()==""){
				alert("input goods' explanation");	
				return;
			}

			else if($("#newgoodsimg1").val()==""){
				alert("input goods' goodsimg1");	
				return;
			}
			else if($("#newgoodsimg2").val()==""){
				alert("input goods' goodsimg2");	
				return;
			}
			else if($("#newgoodsimg3").val()==""){
				alert("input goods' goodsimg3");
				return;
			}
			
			else if($("#newgoodsimg4").val()==""){
				alert("input goods' goodsimg4");
				return;
			}
			else if($("#newgoodsimg5").val()==""){
				alert("input goods' goodsimg5");
				return;
			}
			else if($("#newcategory").val()=='선택'){
				console.log($("#category").val());
				alert("카테고리를 입력해주세요.");
				return;
			}
			else if(flag ==false){
				alert("기존에 있는 제품입니다.");
				return;
			}
		
			
			else{
				alert("input complete")
				document.newfrm.action="insertOk.do";
				document.newfrm.submit(); 
			}
			
			
		});
	
	
		$("#newcolor").change(function() {
			isExist();
			

		});
		$("#newgoodssize").change(function() {
			isExist();

		});
		
		$("#newgender").change(function() {
			isExist();

		});
		
		$("#newcategory").change(function() {
			isExist();

		});
	
		$('#userOrderList_header').find('th:eq(0)').css('width','7%');
		$('#userOrderList_header').find('th:eq(1)').css('width','15%');
		$('#userOrderList_header').find('th:eq(2)').css('width','8%');
		$('#userOrderList_header').find('th:eq(3)').css('width','7%');
		$('#userOrderList_header').find('th:eq(4)').css('width','8%');
		$('#userOrderList_header').find('th:eq(5)').css('width','8%');
		$('#userOrderList_header').find('th:eq(6)').css('width','5%');
		$('#userOrderList_header').find('th:eq(7)').css('width','17%');
		$('#userOrderList_header').find('th:eq(8)').css('width','10%');
		$('#userOrderList_header').find('th:eq(9)').css('width','10%');
		
		$('#userOrderList').find('td:eq(0)').css('width','7%');
		$('#userOrderList').find('td:eq(1)').css('width','15%');
		$('#userOrderList').find('td:eq(2)').css('width','8%');
		$('#userOrderList').find('td:eq(3)').css('width','7%');
		$('#userOrderList').find('td:eq(4)').css('width','8%');
		$('#userOrderList').find('td:eq(5)').css('width','8%');
		$('#userOrderList').find('td:eq(6)').css('width','5%');
		$('#userOrderList').find('td:eq(7)').css('width','17%');
		$('#userOrderList').find('td:eq(8)').css('width','10%');
		$('#userOrderList').find('td:eq(9)').css('width','10%');
		
		
	});
	function changeTab1(){
		$('#litab1').addClass('active');
		$('#litab2').removeClass();
		$('#litab3').removeClass();
		$('#litab4').removeClass();
		$('#litab5').removeClass();
		

	}
	function changeTab2(){

		$('#litab1').removeClass();
		$('#litab2').addClass('active');
		$('#litab3').removeClass();
		$('#litab4').removeClass();
		$('#litab5').removeClass();
		
	};
	function changeTab3(){
		
		$('#litab1').removeClass();
		$('#litab2').removeClass();
		$('#litab3').addClass('active');
		$('#litab4').removeClass();
		$('#litab5').removeClass();
	}
	function changeTab4(){
		
		$('#litab1').removeClass();
		$('#litab2').removeClass();
		$('#litab3').removeClass();
		$('#litab4').addClass('active');
		$('#litab5').removeClass();
	}
	function changeTab5(){
		
		$('#litab1').removeClass();
		$('#litab2').removeClass();
		$('#litab3').removeClass();
		$('#litab4').removeClass();
		$('#litab5').addClass('active');
	}

	function receiveBtn(x){
		var nowamount = $(x).find('td:eq(6)').html();
		var receiveamount= prompt("입고 갯수 ", 0);
		var price = $(x).find('td:eq(5)').html();
		var company = $(x).find('td:eq(7)').html();
		var goodsorderno =$(x).find('td:eq(8)').find(':eq(1)').val();
		var c= confirm(receiveamount+"개 입고하시겠습니까 ?");
		if(c){
			if(nowamount<receiveamount){
				alert("현재 발주량보다 많이 입고할수 없습니다.");
				return;
			}
			if(receiveamount !=0&&receiveamount !=null){
				
				 location.href="receive.do?goodsorderno="+goodsorderno+"&nowamount="+nowamount+"&orderamount="+receiveamount+"&price="+price+"&company="+company; 
			}
			else{alert("0개는 입고할수 없습니다.");}
		}else{
			return;
		}
		
		
	}
	function isExist(){
		console.log($("#newcategory").val() +$("#newgender").val()  + $("#newgoodsname").val() + $("#newcolor").val() +$("#newgoodssize").val());
		$.ajax({
			url : "<c:url value='/stockNewInsert.do'/>",
			type : "get",
			data : {
				category : $("#newcategory").val(),
				gender : $('#newgender').val(),
				goodsname : $('#newgoodsname').val(),
				color : $('#newcolor').val(),
				goodssize : $('#newgoodssize').val()
			},
			success : function(data) {
				data = $.trim(data);
				console.log(data);
				
				if(data=="true"){
					$("#result").html("");
					$("#result").append("등록 가능한 상품입니다.");
					console.log("등록가능 새신발");
					flag= true;
				
				}
				else if(data=="false"){
					$("#result").html("");
					$("#result").append("등록 불가능한 상품입니다.");
					console.log("등록불가능 헌신발");
					flag= false;
					
				}
			}

		});
 }
	function changestatus(i){
		
		var userorderno = $(i).find('td:eq(9)').find(':eq(0)').val();
		var orderstatus =$(i).find('td:eq(9)').find(':eq(1)').val();

		 $.ajax({
			url: "<c:url value='/changestatus.do'/>",
			type: "post",
			data :{ 
				userorderno : userorderno,
				orderstatus : orderstatus
			},
			success: function(data){
				$(i).find('td:eq(8)').html(data);
				
			}
		});  
	}

</script>
<style type="text/css">
#stocklistContainer{
padding-top:28px;
padding-bottom:28px;
min-height: 632px;
}
#stocklistContainer {
	width: 70%;
	margin: 0 15%;
}

#selectGoods {
	min-height: 75px;
}

#selectGodds th, td {
	
}

#selectGoods_gender, #selectGoods_category, #selectGoods_color,
	#selectGoods_size, #selectGoods_price, #selectGoods_stock {
	width: 10%;
}

#selectGoods_goodsname {
	width: 40%;
}

#orderContainer {
	text-align: right;
}

#orderstock {
	width: 50px;
}

#listContainer {
	margin-top: -20px;
	overflow-y: scroll;
	height: 300px;
}
#orderlist{
	margin-top: -20px;
	overflow-y: scroll;
	
}
#userOrderContainer {
	margin-top: -20px;
	overflow-y: scroll;
	height: 300px;
}
#receiveListContainer {
	margin-top: -20px;
	overflow-y: scroll;
	height: 300px;
}


#listtable_header {
	border-bottom: 2px solid #ccc;
}

#stocklistContainer_nav {
	
	width: 100%;
	float: left;
}

.tab_item:target {
	display: block;
}

.tab_item:not(:target) {
	display: none;
}
 
.listtable_1
{
	width: 10%;
	text-align: center;

}

.listtable_2
{
width: 15%;
text-align: center;

}
.listtable_3
{

width: 30%;
text-align: center;
}
.listtable_4
{
width: 10%;
text-align: center;

}
.listtable_5
{

width: 10%;
text-align: center;
}
.listtable_6
{
width: 10%;
text-align: center;

}
.listtable_7
{
width: 15%;
text-align: center;

}

#listtable_8
{
width: 5px;

}



.orderlist_header_1
{
width: 10%;
text-align: center;
}

.orderlist_header_2
{
width: 20%;
text-align: center;
}

.orderlist_header_3
{
width: 10%;
text-align: center;
}

.orderlist_header_4
{
width: 10%;
text-align: center;
}

.orderlist_header_5
{
width: 10%;
text-align: center;
}

.orderlist_header_6
{
width: 10%;
text-align: center;
}

.orderlist_header_7
{
width: 10%;
text-align: center;
}

.orderlist_header_8
{
width: 10%;
text-align: center;
}

.orderlist_header_9
{
width: 10%;
text-align: center;
}

.orderlist_header_10
{
width: 5px;
}
 
 
.receiveList_table_1
{
width: 10%;
text-align: center;
}

.receiveList_table_2
{
width: 20%;
text-align: center;
}

.receiveList_table_3
{
width: 5%;
text-align: center;
}

.receiveList_table_4
{
width: 8%;
text-align: center;
}

.receiveList_table_5
{
width: 10%;
text-align: center;
}

.receiveList_table_6
{
width: 7%;
text-align: center;
}

.receiveList_table_7
{
width: 15%;
text-align: center;
}

.receiveList_table_8
{
width: 15%;
text-align: center;
}

.receiveList_table_9
{
width: 10%;
text-align: center;
}

.receiveList_table_10
{
width: 5px;
}



#userOrderList_header_1
{
width: 7%;
text-align: center;
}

#userOrderList_header_2
{
width: 17%;
text-align: center;
}

#userOrderList_header_3
{
width: 5%;
text-align: center;
}

#userOrderList_header_4
{
width: 7%;
text-align: center;
}

#userOrderList_header_5
{
width: 7%;
text-align: center;
}

#userOrderList_header_6
{
width: 10%;
text-align: center;
}

#userOrderList_header_7
{
width: 8%;
text-align: center;
}

#userOrderList_header_8
{
width: 17%;
text-align: center;
}

#userOrderList_header_9
{
width: 9%;
text-align: center;
}

#userOrderList_header_10
{
width: 10%;
text-align: center;
}

#userOrderList_2{
width:11% !important;

}

#userOrderList_header_4{
width:5% !important;

}

</style>

<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
		
		<div id="stocklistContainer">
			<div id="stocklistContainer_nav">
				<ul class="nav nav-tabs ">
					<li id="litab1" role="presentation" class="active"
						onclick="changeTab1()"><a href="#stocklistContainer_tab1">재고 목록</a></li>
					<li id="litab2" role="presentation" onclick="changeTab2()"><a
						href="#stocklistContainer_tab2">발주 목록</a></li>
					<li id="litab3" role="presentation" onclick="changeTab3()"><a
						href="#stocklistContainer_tab3">신규 상품 등록</a></li>
					<li id="litab4" role="presentation" onclick="changeTab4()"><a
						href="#stocklistContainer_tab4">입고 목록</a></li>
					<li id="litab5" role="presentation" onclick="changeTab5()"><a
						href="#stocklistContainer_tab5">배송 상태 관리</a></li>
				</ul>
			</div>


			<div id="stocklistContainer_tab1" class="tab_item">
				<div style="height:100px;">
				
				<h2>재고 목록 </h2>
				</div>
				
				
				<div id="stocklistContainer_selectContainer">
					<table id="selectGoods" class="table table-striped">
						<tr>
							<th id="selectGoods_gender">성별</th>
							<th id="selectGoods_category">상품종류</th>
							<th id="selectGoods_goodsname">상품명</th>
							<th id="selectGoods_color">색상</th>
							<th id="selectGoods_size">사이즈</th>
							<th id="selectGoods_price">가격</th>
							<th id="selectGoods_stock">재고</th>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					<div id="orderContainer">
						<input type="text" name="orderstock" id="orderstock" value="0" />개
						<input type="button" value="발주하기" id="orderbtn"
							class="btn btn-primary" />
					</div>
				</div>
				<div>
					
					<form class="form-inline">
						<select name="gender" id="gender" class="form-control">
							<option>성별</option>
							<option>남성</option>
							<option>여성</option>

						</select> <select name="category" id="category" class="form-control">
							<option value="종류">종류</option>
						</select> <select name="goodsname" id="goodsname" class="form-control">
							<option>상품명</option>
						</select> <select name="color" id="color" class="form-control">
							<option>색상</option>
						</select> <select name="goodssize" id="goodssize" class="form-control">
							<option>사이즈</option>
						</select>
					</form>
				</div>
				<div>
					<table id="listtable_header" class="table">
						<tr>
						
							 <th class="listtable_1">성별</th>
							<th class="listtable_2">상품종류</th>
							<th class="listtable_3">상품명</th>
							<th class="listtable_4">색상</th>
							<th class="listtable_5">사이즈</th>
							<th class="listtable_6">가격</th>
							<th class="listtable_7">수량</th>
							<th id="listtable_8"></th>
							

						</tr>
					</table>
				</div>
				<div id="listContainer">

					<table id="listtable" class="table table-hover">

						<c:forEach items="${stocklist }" var="i">
							<tr>
								
								
								 <td class="listtable_1">${i.gender }</td>
								<td class="listtable_2">${i.category }</td>
								<td class="listtable_3">${i.goodsname }</td>
								<td class="listtable_4">${i.color }</td>
								<td class="listtable_5">${i.goodssize }</td>
								<td class="listtable_6">${i.price }</td>
								<td class="listtable_7">${i.stockamount }</td> 
								

							</tr>
						</c:forEach>
					</table>

				</div>
			</div>

			<div id="stocklistContainer_tab2" class="tab_item">
				<div id="stocklistContainer_selectContainer">
						<table id="orderlist_header" class="table">
							<tr>
								 
								<th class="orderlist_header_1">상품종류</th>
								<th class="orderlist_header_2">상품명</th>
								<th class="orderlist_header_3">색상</th>
								<th class="orderlist_header_4">성별</th>
								<th class="orderlist_header_5">사이즈</th>
								<th class="orderlist_header_6">가격</th>
								<th class="orderlist_header_7">주문수량</th>
								<th class="orderlist_header_8">제조사</th>
								<th class="orderlist_header_9">수령</th>
								<th class="orderlist_header_10"></th>
							</tr>
							</table>
						<table id="orderlist" class="table table-hover">
							<c:forEach items="${orderlist }" var="i">
								<tr id="ordertr${i.goodsorderno }">
								 
									<td class="orderlist_header_1">${i.category }</td>
									<td class="orderlist_header_2">${i.goodsname }</td>
									<td class="orderlist_header_3">${i.color }</td>
									<td class="orderlist_header_4">${i.gender }</td>
									<td class="orderlist_header_5">${i.goodssize }</td>
									<td class="orderlist_header_6">${i.price }</td>
									<td class="orderlist_header_7">${i.orderamount }</td>
									<td class="orderlist_header_8">${i.cname }</td>
									<td class="orderlist_header_9"><input type="button" value="수령하기"
										id="${i.goodsorderno}" name="${i.goodsorderno}"
										onclick="receiveBtn(ordertr${i.goodsorderno})" /> 
										<input type="hidden" name="" value="${i.goodsorderno}" />
										
										</td> 
								</tr>
							</c:forEach>
						</table>

				</div>
			</div>
			
			<div id="stocklistContainer_tab3" class="tab_item">
				<form name="newfrm">
					<div class="form-group">

						<table class="table">
							<tr>
								<th><h1>새 상품 등록</h1></th>
							</tr>
							<tr>
								<th>카테고리</th>
								<td><select name="category" id="newcategory">
										<option id="newselect" name="select" value="선택">선택</option>
										<option name="러닝화">러닝화</option>
										<option name="스포츠웨어">스포츠웨어</option>
										<option name="트레이닝">트레이닝</option>
										<option name="테니스">테니스</option>
										<option name="골프">골프</option>
										<option name="농구">농구</option>
										<option name="조던">조던</option>
										<option name="축구">축구</option>
										<option name="키즈">키즈</option>
								</select></td>


								<th>이미지1</th>
								<td class="a"><input type="file" name="goodsimg1" id="newgoodsimg1" /></td>
							<tr>
								<th>성별</th>
								<td><select name="gender" id="newgender">
										<option name="남성">남성</option>
										<option name="여성">여성</option>
								</select></td>

								<th>이미지2</th>
								<td class="a"><input type="file" name="goodsimg2"
									id="newgoodsimg2" /></td>
							</tr>

							<tr>
								<th>상품명</th>
								<td><input type="text" class="form-control"
									name="goodsname" id="newgoodsname" /></td>


								<th>이미지3</th>
								<td class="a"><input type="file" name="goodsimg3"
									id="newgoodsimg3" /></td>
							</tr>
							<tr>
								<th>상품가격</th>
								<td><input type="text" class="form-control" name="price"
									id="newprice" /></td>

								<th>이미지4</th>
								<td class="a"><input type="file" name="goodsimg4"
									id="newgoodsimg4" /></td>
							</tr>

							<tr>
								<th>출시일</th>
								<td><input type="date" class="form-control"
									name="releasedate" id="newreleasedate" /></td>


								<th>이미지5</th>
								<td class="a"><input type="file" name="goodsimg5"
									id="newgoodsimg5" /></td>
							</tr>




							<tr>

								<th>소재</th>
								<td><input type="text" class="form-control" name="material"
									id="newmaterial" /></td>

								<th>상품사이즈</th>
								<td><select name="goodssize" id="newgoodssize">
										<option name="160">160</option>
										<option name="170">170</option>
										<option name="180">180</option>
										<option name="190">190</option>
										<option name="200">200</option>
										<option name="210">210</option>
										<option name="220">220</option>
										<option name="230">230</option>
										<option name="240">240</option>
										<option name="250">250</option>
										<option name="260">260</option>
										<option name="270">270</option>
										<option name="280">280</option>
										<option name="290">290</option>
								</select></td>


							</tr>
							<tr>
								<th>제조국가</th>
								<td><input type="text" class="form-control" name="country"
									id="newcountry" /></td>

								<th>상품색상</th>
								<td><select name="color" id="newcolor">
										<option name="gold">gold</option>
										<option name="gray">gray</option>
										<option name="green">green</option>
										<option name="navy">navy</option>
										<option name="red">red</option>
										<option name="black">black</option>
										<option name="blue">blue</option>
										<option name="silver">silver</option>
										<option name="yellow">yellow</option>
										<option name="orange">orange</option>
										<option name="purple">purple</option>
										<option name="pink">pink</option>
										<option name="white">white</option>

								</select></td>



							</tr>
							<tr>
								<th>할인율</th>
								<td><input type="text" class="form-control" name="discount"
									id="newdiscount" value="0" /></td>

								<th>물품상태</th>
								<td><select name="status">
										<option name="1">1</option>
										<option name="2">2</option>
								</select></td>
							</tr>
							<tr>
								<th>상품설명</th>
								<td colspan="4"><textarea name="explanation"
										id="newexplanation" class="form-control" cols="100" rows="5"
										placeholder="상품 설명을 입력하세요"></textarea>
									<div id="result"></div></td>
							</tr>


							<tr>

								<td colspan="4" align="center" width="100"><input
									type="button" class="btn btn-default" id="insertbtn"
									value="결과전송" /></td>
							</tr>
						</table>
					</div>
				</form>

			</div>
			<div id="stocklistContainer_tab4" class="tab_item">
				<div id="tab4_stocklist_receiveList">
						<table id="receiveList_header" class="table">
							<tr>
								
								<th class="receiveList_table_1">카테고리</th>
								<th class="receiveList_table_2">상품이름</th>
								<th class="receiveList_table_3">성별</th>
								<th class="receiveList_table_4">사이즈</th> 
								<th class="receiveList_table_5">입고가격</th>
								<th class="receiveList_table_6">수량</th>
								<th class="receiveList_table_7">입고일</th>
								<th class="receiveList_table_8">회사</th>
								<th class="receiveList_table_9">수령자</th>
								<th class="receiveList_table_10"></th> 
							</tr>
						</table>
						<div id="receiveListContainer">
					<table id="receiveList_table" class="table">
					<c:forEach items="${receivelist }" var="i">
						<tr>
						
						 <td class="receiveList_table_1">${i.category }</td>
						<td class="receiveList_table_2">${i.goodsname }</td>
						<td class="receiveList_table_3">${i.color }</td>
						<td class="receiveList_table_4">${i.goodssize }</td>
						<td class="receiveList_table_5">${i.incost }</td>
						<td class="receiveList_table_6">${i.receiveamount }</td>
						<td class="receiveList_table_7">${i.receivedate}</td>
						<td class="receiveList_table_8">${i.company }</td>
						<td class="receiveList_table_9">${i.id }</td> 
						</tr>
						</c:forEach>
					</table>
				</div>
				</div>
			</div>
			<div id="stocklistContainer_tab5" class="tab_item">
				<table id="userOrderList_header" class="table">
				<tr>
					
					 <th id="userOrderList_header_1">종류</th>
					<th id="userOrderList_2">상품이름</th>
					<th id="userOrderList_header_3">성별</th>
					<th id="userOrderList_header_4">색상</th>
					<th id="userOrderList_header_5">구매수량</th>
					<th id="userOrderList_header_6">구매일자</th>
					<th id="userOrderList_header_7">ID</th>
					<th id="userOrderList_header_8" class="addr">구매자주소</th>
					<th id="userOrderList_header_9">구매상태</th>
					<th id=""class="userOrderList_header_10">구매상태변경</th>
				</tr>

			</table>
			<div id=userOrderContainer>
			<table id="userOrderList" class="table">
				<c:forEach var="i" items="${userOrderList}">
					<tr id="order${i.userorderno}">
						<td class="userOrderList_header_1">${i.category}</td>
						<td class="userOrderList_header_2">${i.goodsname}</td>
						<td class="userOrderList_header_3">${i.gender }</td>
						<td class="userOrderList_header_4">${i.color }</td>
						<td class="userOrderList_header_5">${i.buyamount}</td>
						<td class="userOrderList_header_6">${i.paydate}</td>
						<td class="userOrderList_header_7">${i.id}</td>
						<td class="addr">${i.orderaddress}</td>
						<td class="userOrderList_header_9" id="${i}">${i.orderstatus}</td>
						<td class="userOrderList_header_10"><input type="hidden" name="${i.userorderno}" value="${i.userorderno}" /> 
						<select name="${i.orderstatus}" id="${i.userorderno }" class="status"
							onchange="changestatus(order${i.userorderno})">
								<option>선택</option>
								<option>배송준비중</option>
								<option>배송중</option>
								<option>배송완료</option>
						</select></td>
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