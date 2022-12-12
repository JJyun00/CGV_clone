<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<h1>
	Cart Test!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr><br>
<p>
	insert : 
		<!-- name은 VO에서 구분자 // id는 html내의 구분자 -->
		<input name="cart_no" type="number" id="cart_no" placeholder="카트번호"> 
		<input name="cart_name" type="text" id="cart_name" placeholder="상품명"> 
		<input name="cart_pri" id="cart_pri" placeholder="상품가격"> 
		<input name="cart_count" type="number" id="cart_count" placeholder="상품수량"> 
		<button onclick="fn_InsertData();">입력</button> 
</p>
<p> select : <button onclick="fn_selectData()">cart list 출력</button> </p>
<p> update : <input> <button>수정</button> </p>
<p> delete : <input> <button>삭제</button> </p>

<script>

function fn_InsertData() {
	let no = $('#cart_no').val();
	let name = $('#cart_name').val();
	let price = $('#cart_pri').val();
	let count = $('#cart_count').val();
	console.log("카트번호:" + no + " 상품명:" + name + " 상품가격:" + price + " 상품수량:" + count);
}

</script>
</body>
</html>