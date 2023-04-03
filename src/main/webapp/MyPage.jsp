<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>
<body>
	<%UserVO login_vo = (UserVO)session.getAttribute("resultVO"); %>
	
    
    <h3 style="margin-left: 50%; margin-top: 150px; display: block;">내정보 수정</h3>
    
    <form action="UpdateService.do" method="post">
    	<!-- 닉네임 -->
    	<div class="nick_cor">
	        <div class="pw_input__title">
	            <b>닉네임</b>
	            <span class="title__uinfo"><%=login_vo.getUser_nick() %></span>
	        </div>
	        <button id="btns-wrap__edit-btn" type="button" style="display:block;">수정</button>
	        <div id="clicks" style="display:none">
	            <input type="text" name="user_nick" placeholder="닉네임을 입력하는 공간입니다." class="teext"><br>
	        </div>
    	</div>

		<!-- 예약자 이름 -->
	    <div class="reser_name">
	        <div class="pw_input__title">
	            <b>예약자 이름</b>
	        </div>
	        <button id="btns-wrap__edit-btn1" type="button" style="display:block;">수정</button>
	        <div id="clicks1" style="display:none">
	            <input type="text" name="reser_name" placeholder="예약자 이름을 입력하는 공간입니다." class="teext"><br>
	        </div>
	    </div>
	
		<!-- 연락처 -->
	    <div class="phone_num">
	        <div class="pw_input__title">
	            <b>연락처</b>
	            <span class="title__uinfo"><%=login_vo.getUser_phone() %></span>
	        </div>
	        <button id="btns-wrap__edit-btn2" type="button" style="display:block;">수정</button>
	        <div id="clicks2" style="display:none">
	            <input type="text" name="user_phone" id="cellPhone" placeholder="핸드폰번호 입력" maxlength="13" /><br>
	        </div>
	    </div>
	    
	    <!-- 전체 버튼 -->
	    <div class="AllB">
	    	<input class="btns-wrap__submit-btn" type="submit" value="수정완료">
	        <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
	        <button class="btns-wrap__delete-btn" type="button"><a href="DeleteService.do">회원탈퇴</a></button>
	    </div>
    </form>


	<script src="assets/js/MyPage.js"></script>

</body>
</html>