<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<option>선택</option>
<c:forEach items="${size}" var="i">
	<option>${i.goodssize }</option>
</c:forEach>