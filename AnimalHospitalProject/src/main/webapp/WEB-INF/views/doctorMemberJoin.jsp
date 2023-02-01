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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">

</head>

<body>

  <%@ include file="/WEB-INF/includes/header.jsp" %>

  
  <main id="main">
     <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

	<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">의사전용 회원가입</h2>
          <br />
          <p>동물병원에 근무하고 계시는 <b>수의사 전용 회원가입 폼</b>입니다. <br>보호자이신 분들은 <b>뒤로 가기 -> 보호자에 체크한 상태</b>에서 회원가입하기 버튼을 눌러주세요.</p>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <form action="forms/appointment.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
            	<label for="email">아이디</label>
              <input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력해주세요" data-rule="email" data-msg="이메일은 필수입력 항목입니다.">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
            	<label for="email">비밀번호</label>
              <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호는 필수입력 항목입니다." data-rule="password" data-msg="비밀번호는 필수입력 항목입니다." style="background-image: url(img/baseline_lock_black_18.png) ;background-position: 1px center;background-size: contain;background-repeat: no-repeat;text-align: center;text-indent: 0;">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
              <label for="email">비밀번호 재확인</label>
              <input type="password" class="form-control" name="passwordCheck" id="passwordCheck" placeholder="윗칸의 비밀번호를 입력해주세요" data-rule="passwordCheck" data-msg="비밀번호 재확인은 필수입력 항목입니다."style="background-image: url(img/baseline_lock_black_18.png) ;background-position: 1px center;background-size: contain;background-repeat: no-repeat;text-align: center;text-indent: 0;">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
            	<label for="text">이름</label>
              <input type="text" class="form-control" name="doctor_id" id="doctor_id" placeholder="이름을 입력해주세요" data-rule="doctor_id" data-msg="이름은 필수입력 항목입니다.">
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
          <div class="row" style="margin: auto; width:800px;height:100px;display: flex;justify-content: center; ">
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
          <div class="row" style="margin: auto; width:800px;height:100px;display: flex;justify-content: center; ">
            <div class="col-md-2 form-group mt-3">
          	<label for="text">면허취득일</label>
              <input type="datetime" name="doctor_license_year" class="form-control datepicker" id="doctor_license_year" placeholder="년도">
              <div class="validate"></div>
            </div>
            <div class="col-md-2 form-group mt-3">
            <label for="text"></label>
              <select name="doctor_license_month" id="doctor_license_month" class="form-select">
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
              <input type="datetime" class="form-control datepicker" name="doctor_license_date" id="doctor_license_date" placeholder="일">
              <div class="validate"></div>
            </div>
          </div>
		  
          <div class="col-md-4 form-group mt-3" style="margin: auto;">
            <textarea class="form-control" name="message" rows="5" placeholder="Message (Optional)"></textarea>
            <div class="validate"></div>
          </div>
          <br />
          <div class="text-center"><button type="submit">Make an Appointment</button></div>
        </form>

      </div>
    </section><!-- End Appointment Section -->
  </main><!-- End #main -->

	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>

</html>