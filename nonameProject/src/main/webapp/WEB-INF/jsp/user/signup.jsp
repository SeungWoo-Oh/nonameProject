<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입 </title>
</head>
<body>

<!--  작성중입니다 
+------------+--------------+------+-----+-------------------+----------------+
| Field      | Type         | Null | Key | Default           | Extra          |
+------------+--------------+------+-----+-------------------+----------------+
| userNo     | int(11)      | NO   | PRI | NULL              | auto_increment |
| userId     | varchar(20)  | NO   |     | NULL              |                |
| userPw     | varchar(20)  | NO   |     | NULL              |                |
| userName   | varchar(20)  | NO   |     | NULL              |                |
| userGender | varchar(10)  | NO   |     | NULL              |                |
| userEmail  | varchar(20)  | NO   |     | NULL              |                |
| userAds    | varchar(100) | YES  |     | NULL              |                |
| userHp     | int(20)      | NO   |     | NULL              |                |
| userBirth  | int(20)      | NO   |     | NULL              |                |
| cDate      | timestamp    | NO   |     | CURRENT_TIMESTAMP |                |
| mDate      | timestamp    | NO   |     | CURRENT_TIMESTAMP |                |
| deleteYN   | tinyint(1)   | NO   |     | 1                 |                |
+------------+--------------+------+-----+-------------------+----------------+
 -->
<form action="">
	<table border="0">
			<tr>
				<td>아이디</td>
				<td> <input type="text"> <span><a href="javascript:check('id');" class="submit_button" alt="중복확인">중복확인</a></span>  </td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td> <input type="password"> </td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td> <input type="password"> </td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text"> </td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" id="gender" value="female"> 여성
					<input type="radio" id="gender" value="male"> 남성 <input
					type="radio" id="gender" value="unspecified"> 미정</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td> <input type="text"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td> <input type="text"></td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td> <input type="text"> - <input type="text"> - <input type="text">
				<select id="mobile1" name="mobile">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input id="mobile2" name="mobile" maxlength="4"
					type="text" />-<input id="mobile3" name="mobile" maxlength="4"
					type="text" />
				</td>
			</tr>
			<tr>
				<td>생일</td>
				<td> <input type="text"> </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit">확인 <input
					type="reset"> 취소</td>
			</tr>
		</table>


</form>

</body>
</html>