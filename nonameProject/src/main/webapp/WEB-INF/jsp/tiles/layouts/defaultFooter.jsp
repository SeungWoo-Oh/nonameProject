<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" charset="utf-8">
	$('#footer-menu ul li a').click(function() {
		$('#siteContent').load('${pageContext.request.contextPath}/showProductInfo.do' + $(this).attr('href'));
		return false;
	});
</script>

</head>
<body>
	<hr>
	<div class="footer-phone">1234-5678</div>

	<div class="footer-menu">
		<li><a href="#" onclick="alert('ready to go home!');">HOME</a></li>
		<li>회사소개</li>
		<li>이용약관</li>
		<li>개인정보처리방침</li>
		<li>이용안내</li>
	</div>

	<hr>
	<div class="footer-content">
		<br>
		<ul>
			<li>평일 : AM 9:00~PM 06:00</li>
			<li>점심시간 : PM 12:00~PM 01:30</li>
			<li>토,일,공휴일 휴무</li>
			<br>
			<li>농협 301-0111-9876-11</li>
			<li>국민은행 349437-01-012345</li>
			<li>하나은행 591-555678-10101</li>
			<li>예금주 : 정무명
		</ul>

	</div>
	<hr>

</body>
</html>