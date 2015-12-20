<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<tr>
			<th>상품종류</th>
			<th>상품명</th>
			<th>색상</th>
			<th>사이즈</th>
			<th>가격</th>
			<th>수량</th>
			
			</tr>
			<c:forEach items="${stocklist }" var="i">
				<tr>
					<td>${i.category }</td>
					<td>${i.goodsname }</td>
					<td>${i.color }</td>
					<td>${i.goodssize }</td>
					<td>${i.price }</td>
					<td>${i.stockamount }</td>
				</tr>
			</c:forEach>
