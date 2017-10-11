<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>
</head>
<body>
	<header id="header"> 
		<tiles:insertAttribute name="header" />
	</header>
	<section id="siteContent"> 
		<tiles:insertAttribute name="body" />
	</section>
	<footer id="footer"> 
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>