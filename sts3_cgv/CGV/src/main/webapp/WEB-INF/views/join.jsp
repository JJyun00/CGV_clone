<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
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
	<h2>회원가입</h2>
	<!--  input 태그 안의 name속성 값에 들어있는 값과 URL이 매핑되는 컨트롤러의 파라미터 값과 매핑되어 데이터가 전달.
	이전에 작성해둔 insertCarts.do가 매핑된 컨트롤러에서는 Cart클래스를 파라미터로 받게 되어있는데 
	이럴 경우 스프링이 자동으로 Cart클래스에 있는 name, price, count 변수에 각각 값을 넣어줌. -->
	<form method="post" action="/insertCarts.do"> <!-- post요청으로 /mvc/insertCarts.do에 데이터 전송 -->
		<table id="insertTable">
			<!-- Controller의 파라미터값과 input태그의 name값이 서로 매핑 -->
			<tr>
				<td>아이디</td>
				<td><input type="text" name="user_id" /></td> <!-- Cart클래스의 name에 들어갈 값 -->
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="user_pw" /></td> <!-- Cart클래스의 price에 들어갈 값 -->
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="user_name" /></td> <!-- Cart클래스의 count에 들어갈 값 -->
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="user_tel" /></td> <!-- Cart클래스의 count에 들어갈 값 -->
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="user_birth" /></td> <!-- Cart클래스의 count에 들어갈 값 -->
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="user_email" /></td> <!-- Cart클래스의 count에 들어갈 값 -->
			</tr>
		</table>
		<br><input type="submit" value="가입하기"/> <!-- 버튼 클릭 시 데이터 전송 -->
	</form>
	
	<br><hr>
	
	<h2>회원 정보</h2>
	<!-- selectCart.do에 매핑되는 컨트롤러에서 cart데이터를 데이터베이스에서 가져와 carts라는 값에 넣도록 코드를 작성했었는데
	 이 값을 JSP에서는 ${'carts' }의 형태로 받아와 사용.
	 참고적으로 컨트롤러에서는 /insertCarts.do로 URL을 지정했지만 form태그 안에서는 /mvc/insertCarts.do라고 사용하는 이유는
	  tomcat서버의 경로 값이 /mvc로 되어있기 때문에 작성해둔 컨트롤러 URL앞에 /mvc를 붙여줘야 됨. -->
	<table id="selectTable">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>생년월일</td>
			<td>이메일</td>
			<!-- <td>회원상태</td> -->
		</tr>
		<c:forEach items="${carts }" var="cart"> <!-- Controller에서 Model에 carts라는 이름으로 넣어둔 값을 jstl을 이용하여 반복문 시행 -->
			<tr>
				<td>${cart.user_id }</td>
				<td>${cart.user_pw }</td>
				<td>${cart.user_name }</td>
				<td>${cart.user_tel }</td>
				<td>${cart.user_birth }</td>
				<td>${cart.user_email }</td>
				<!-- <td>${user.user_check }</td> -->
			</tr>
		</c:forEach>
	</table>
	
	<br><hr><br>
	
	<button onclick="fn_mainpage()"> 메인홈 </button>
	
	<script>
		function fn_mainpage(){
		location.href="/mainpage"
		}
	</script>
	
	<!-- 
	<form action="/testpage">
		<button>홈</button>
	</form>
	-->
	
	
</body>
</html>