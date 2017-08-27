<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table cellspacing="0" border="1">
		<colgroup width ="20%">
		<colgroup width ="*">
		<colgroup width ="20%">
		<colgroup width ="10%">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">PW</th>
				<th scope="col">이름</th>
				<th scope="col">성별</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row">
					<tr>
						<td>${row.userId}</td>
						<td>${row.userPw}</td>
						<td>${row.userName}</td>
						<td>${row.userGender}</td>
					</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
					<td colspan="4">조회된 결과가 없습니다..</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>