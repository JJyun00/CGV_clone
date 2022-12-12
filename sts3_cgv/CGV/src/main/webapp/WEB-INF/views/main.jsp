<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Main Home</title>
<style>
</style>
</head>
<body>
	<h2>메인화면</h2>
	<button onclick="fn_joinpage()"> 회원가입 </button>
	<button onclick="fn_loginpage()"> 로그인 </button>
	
	<script>
		function fn_joinpage(){
			location.href="/joinpage"
		}
		
		function fn_loginpage(){
			location.href="/loginpage"
		}
	</script>

</body>
</html>