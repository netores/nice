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
<script type="text/javascript"
	src="<c:url value='/lib/httpRequest.js'/>"></script>
<script type="text/javascript">
	
</script>
<title>dhkddhk</title>
<style type="text/css">
#detail_detailContainer_reviewContainer table {
	width: 1000px;
	margin: 0px auto;
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
	height: 400px;
}
#detail_detailContainer_reviewContainer_reviewtable .table td{
	width : 50%;
}
</style>
</head>
<body>
	<div id="review_container" class="container">
		<div id="detail_detailContainer_reviewContainer_reviewtable">
			<table class="table">

				<c:forEach items="${review_list }" var="i">
					<tr>
						<td>${i.reviewgrade }${i.reviewdate }<br /> <font size="5px"><b>
									${i.reviewtitle }</b></font><br /> ${i.id }<br /> ${i.context }
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
</body>
</html>