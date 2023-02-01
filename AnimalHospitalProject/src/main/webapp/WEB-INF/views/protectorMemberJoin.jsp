<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Medilab Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">
  <style>
  input[name="protector_address"]{
      width:70%;
      height:38px;
      border:1px solid #ced4da;
      padding-left: 5px;
      display:inline;
    }
    input[name="searching_address"]{
      width: 30%;
      height:38px;
      display:inline;
      margin-left: -5px;
    }
  input[name="protector_phoneNumber"]{
      width:70%;
      height:38px;
      border:1px solid #ced4da;
      padding-left: 5px;
      display:inline;
    }
    input[name="send_certificationNumber"]{
      width: 30%;
      height:38px;
      display:inline;
      margin-left: -5px;
    }
    .btn btn-secondary{
	text-align: center;
	}
	.btn btn-primary{
		display :inline-block;
	}
  </style>
</head>

<body>

 <main id="main">

  <%@ include file="/WEB-INF/includes/header.jsp" %>

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

	<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">보호자 전용 회원가입</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="email">아이디</label>
              <input type="email" class="form-control" name="email" id="email" placeholder="아이디를 입력해주세요" data-rule="email" data-msg="아이디는 필수입력 항목입니다.">
              <div class="validate"></div>
            </div>
        </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-4 form-group mt-3">
	           <label for="email">비밀번호</label>
	          <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요." data-rule="password" style="background-image: url(img/baseline_lock_black_18.png) ;background-position: right center;background-size: contain;background-repeat: no-repeat;text-align: left;text-indent: 0;">
	          <div class="validate"></div>
	        </div>
        </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-4 form-group mt-3">
	           <label for="email">비밀번호 재확인</label>
	          <input type="password" class="form-control" name="password_reconfirm" id="password_reconfirm" placeholder="비밀번호를 재입력해주세요." data-rule="password" style="background-image: url(img/baseline_lock_black_18.png) ;background-position: right center;background-size: contain;background-repeat: no-repeat;text-align: left;text-indent: 0;">
	          <div class="validate"></div>
	        </div>
        </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-4 form-group mt-3">
	           <label for="email">이름</label>
	          <input type="text" class="form-control" name="protector_name" id="protector_name" placeholder="이름을 입력해주세요." data-rule="text" required="required">
	          <div class="validate"></div>
	        </div>
        </div>
        <div class="row">
          	<div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
	          <div class="col-md-4 form-group mt-3">
	          	<label for="text">성별</label><br>
	              <select name="doctor_gender" id="doctor_gender" class="form-select">
	                <option value="">성별을 선택해주세요.</option>
	                <option value="1">여자</option>
	                <option value="2">남자</option>
	              </select>
	              <div class="validate"></div>
	           </div>
          </div>
        <div class="row" style="margin: auto; width:800px;height:100px;display: flex;justify-content: center;  ">
            <div class="col-md-2 form-group mt-3">
          	<label for="text">생년월일</label>
              <input type="datetime" name="doctor_year" class="form-control datepicker" id="doctor_year" placeholder="년도">
              <div class="validate"></div>
            </div>
            <div class="col-md-2 form-group mt-3">
            <label for="text"></label>
              <select name="doctor_month" id="doctor_month" class="form-select">
                <option value="">월</option>
                <option value="01">1</option>
                <option value="02">2</option>
                <option value="03">3</option>
                <option value="04">4</option>
                <option value="05">5</option>
                <option value="06">6</option>
                <option value="07">7</option>
                <option value="08">8</option>
                <option value="09">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
              <div class="validate"></div>
            </div>
            <div class="col-md-2 mt-3">
            <label for="text"></label>
              <input type="datetime" class="form-control datepicker" name="doctor_date" id="doctor_date" placeholder="일">
              <div class="validate"></div>
            </div>
          </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-6 form-group mt-3">
	           <label for="email">주소</label><br>
	          <input type="text" class="form-control" name="protector_address" id="protector_address" placeholder="주소를 입력해주세요." data-rule="text">
	          &nbsp;&nbsp;<input type="button" class="btn btn-primary" name="searching_address" value="주소검색" style="width: 140px; text-align: center;">
	        </div>
        </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-6 form-group mt-3">
	           <label for="email">핸드폰번호</label><br>
	          <input type="text" class="form-control" name="protector_phoneNumber" id="protector_phoneNumber" placeholder="전화번호를 입력해주세요." data-rule="text">
	          &nbsp;&nbsp;<input type="button" class="btn btn-primary" name="send_certificationNumber" value="인증번호 받기" style="width: 140px; text-align: center;">
	        </div>
        </div>
		<div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-4 form-group mt-3">
	           <label for="email">인증번호 확인</label>
	          <input type="int" class="form-control" name="confirm_certificationNumber" id="confirm_certificationNumber" placeholder="인증번호를 입력해주세요." data-rule="text" required="required">
	          <div class="validate"></div>
	        </div>
        </div>
        <div class="row">
	        <div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
	        <div class="col-md-4 form-group mt-3">
	           <label for="email">이메일 본인확인</label>
	          <input type="text" class="form-control" name="confirm_emailUser" id="confirm_emailUser" placeholder="본인확인 번호를 입력해주세요." data-rule="text" required="required">
	          <div class="validate"></div>
	        </div>
        </div>
        <div class="row">
        	<div class="col-md-4 form-group mt-3">
	          <div class="validate"></div>
	        </div>
        	<div class="col-md-4 form-group mt-3">
        		<input type="button" class="btn btn-secondary " name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/roleCheck'" style="width: 110px;margin: auto;text-align: center;color: white;">
	    		<input type="button" class="btn btn-primary" name="join_membership_protector" id="join_membership_protector" value="회원가입" style="width: 110px;margin: auto;text-align: center;float: right;color: white;">
      		</div>
      	</div>
      </div>
    </section><!-- End Appointment Section -->
  </main><!-- End #main -->

	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>

</html>