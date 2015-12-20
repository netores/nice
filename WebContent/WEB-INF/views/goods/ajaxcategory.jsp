<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<option>선택</option>
<c:forEach  var="i" begin="0" end="${categorySize}">
		<option>${category[i]}</option>
</c:forEach>