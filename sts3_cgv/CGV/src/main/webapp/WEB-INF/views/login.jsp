<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<style>
	#insertTable {
		text-align: center;
	}
	
	#selectTable {
		text-align: center;
	}
	
	#selectTable td {
		width: 100px;
	}
</style>
</head>
<body>
	<h2>로그인</h2>
	<!--  input 태그 안의 name속성 값에 들어있는 값과 URL이 매핑되는 컨트롤러의 파라미터 값과 매핑되어 데이터가 전달.
	이전에 작성해둔 insertCarts.do가 매핑된 컨트롤러에서는 Cart클래스를 파라미터로 받게 되어있는데 
	이럴 경우 스프링이 자동으로 Cart클래스에 있는 name, price, count 변수에 각각 값을 넣어줌. -->
	<form> <!-- post요청으로 /mvc/insertCarts.do에 데이터 전송 -->
		<table>
			<!-- Controller의 파라미터값과 input태그의 name값이 서로 매핑 -->
			<tr>
				<td>아이디</td>
				<td><input type="text"/></td> <!-- Cart클래스의 name에 들어갈 값 -->
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" /></td> <!-- Cart클래스의 price에 들어갈 값 -->
			</tr>
		</table>
		<br><input type="submit" value="로그인"/> <!-- 버튼 클릭 시 데이터 전송 -->
	</form>
	
	<br><hr>
	
	<button onclick="fn_mainpage()"> 메인홈 </button>
	
	
	<script>
		function fn_mainpage(){
		location.href="/mainpage"
		}
	</script>
</body>
</html>