<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>공지사항 추가</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">
  <style type="text/css">
  form{
  margin-bottom : 60px;
  margin-left : 15%;
  margin-right: 10%;
  width: 20%;
  }
  
  input{
  margin-bottom: 10px;
  border-radius: 5px;
  border: 1px solid gray;
  }
  
  textarea {
  border-radius: 5px;
  border: 1px solid gray;
  resize: none
}
  </style>
</head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
	<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">
          <br /> 공지사항 추가</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="inner-page">
      <div class="container">
        <form action=>        
          작성자 <br />
          <input id="witer" type="text" name="witer" value="김아무개" readonly style="background-color: #F5F5F5"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
          진료병원 <br />
          <input id="animalHospital" type="text" name="animalHospital" value="A동물병원" readonly style="background-color: #F5F5F5"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
          작성일 <br />
          <input id="writeDate" type="date" value="2023-01-30"/> <br /> <%-- 현재날짜를 띄움 --%>
          제목 <br />
          <textarea id="subject" name="content" rows="1" cols="70" maxlength="30" required="required"></textarea> <br />
          내용 <br />
          <textarea id="content" name="content" rows="20" cols="100" maxlength="500" required="required"></textarea> <br />
        </form>
            <div class="col-md-4 form-group" style="margin: auto;">
               <input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/notice'" style="border-radius:50px;width: 110px;text-align: center;color: white;">
               <input type="button" class="btn btn-primary" name="notice_add" id="notice_add" value="확인" onclick="location='/notice'" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white;">
            </div>
      </div>
    </section>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
</html>