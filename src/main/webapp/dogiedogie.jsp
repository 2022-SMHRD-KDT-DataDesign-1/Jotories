<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>똑똑이 정보 등록하기</title>

    <link rel="stylesheet" href="assets/css/doggie.css">
</head>
<body>
<div class="signup-container">
       
        <% UserVO resultVO = (UserVO)session.getAttribute("resultVO"); %>
        <form action="InsertDogService.do">
        <div class="right-container">
          <header>
            <!-- <h1>Yay, puppies! Ensure your pup gets the best care! </h1> -->
            <h1>더 좋은 서비스를 위해 <br>
            아이의 정보를 입력해주세요! </h1>
            <div class="set">
              <div class="pets-name">
                <label for="pets-name">Name</label>
                <input id="pets-name" placeholder="이름" type="text" name="dog_name"></input>
              </div>
              <div class="pets-id">
              
                <label for="pets-id">ID Number</label>
                <input id="pets-id" placeholder="등록번호" type="text" name="dog_enroll"></input>
              </div>
            </div>
            <div class="set">
                <div class="pets-birthday">
                  <label for="pets-birthday">Birthday</label>
                  <input id="pets-birthday" placeholder="YYYY-MM-DD" type="text" name="dog_birth"></input>
                </div>
              <div class="pets-breed">
                <label for="pets-breed">Age</label>
                <input id="pets-breed" placeholder="나이" type="text" name="dog_age"></input>
              </div>
            </div>
            <div class="set">
              <div class="pets-gender">
                <label for="pet-gender-female">성별</label>
                <div class="radio-container">
                  <input id="pet-gender-female" name="dog_gen" type="radio" value="female"></input>
                  <label for="pet-gender-female">Female</label>
                  <input id="pet-gender-male" name="dog_gen" type="radio" value="male"></input>
                  <label for="pet-gender-male">Male</label>
                </div>
              </div>
              <div class="pets-spayed-neutered">
                <label for="pet-spayed">중성화 여부</label>
                <div class="radio-container">
                  <input id="pet-spayed" name="dog_neutcheck" type="radio" value="spayed"></input>
                  <label for="pet-spayed">X</label>
                  <input id="pet-neutered" name="dog_neutcheck" type="radio" value="neutered"></input>
                  <label for="pet-neutered">O</label>
                </div>
              </div>
            </div>
            <div class="pets-weight">
              <label for="pet-weight-0-25">몸무게</label>
              <div class="radio-container">
                <input id="pet-weight-0-25" name="dog_weight" type="radio" value="소형견"></input>
                <label for="pet-weight-0-25">0-7 kg</label>
                <input id="pet-weight-25-50" name="dog_weight" type="radio" value="중형견"></input>
                <label for="pet-weight-25-50">7-15 kg</label>
                <input id="pet-weight-50-100" name="dog_weight" type="radio" value="대형견"></input>
                <label for="pet-weight-50-100">15- kg</label>
                <input type="hidden" name="user_id" value="<%= request.getParameter("user_id")%>">
                <input type="hidden" name="member_name" value="<%= request.getParameter("member_name")%>">
                <input type="hidden" name="user_phone" value="<%= request.getParameter("user_phone")%>">
                <input type="hidden" name="store" value="<%= request.getParameter("store")%>">
                <input type="hidden" name="store_name" value="<%= request.getParameter("store_name")%>">
                <input type="hidden" name="store_type" value="<%= request.getParameter("store_type")%>">
                <input type="hidden" name="member_from" value="<%= request.getParameter("member_from")%>">
                <input type="hidden" name="member_to" value="<%= request.getParameter("member_to")%>">
                <!-- <input id="pet-weight-100-plus" name="pet-weight" type="radio" value="100+"></input>
                <label for="pet-weight-100-plus">100+ lbs</label> -->
              </div>
            </div>
          </header>
          <footer>
            <div class="set">
              <button id="back"><a>초기화</a></button>
              <!-- <button id="next">Next</button> -->
              <input id="next" type="submit" onclick="moveClose();" value="확인">
            </div>
          </footer>
        </div>
    </form>
      </div>
      <script type="text/javascript">
      	function moveClose(){
      		/* opener.location.href="reservePage.jsp"; */
      		self.close();
      	}
      </script>
</body>
</html>