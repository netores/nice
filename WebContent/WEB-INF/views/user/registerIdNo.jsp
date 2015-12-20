<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	alert("ID가 중복됩니다!");
	
	document.frm.action = "registerForm.do";
	document.frm.method = "get";
	document.frm.submit();
});
</script>
</head>
<body>
	<form action="" name="frm">
	<input type="hidden" name="name" value="${name }" />
	<input type="hidden" name="email" value="${email }" />
	</form>
</body>
</html>