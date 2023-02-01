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
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">


  <!-- Vendor CSS Files -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
  <!-- Tables - SB Admin -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
  <link href="css/styles.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

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
          <h2 style="font-weight: bold; font-size: 30px;">로그인</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
         <form action="forms/appointment.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="col-md-4 form-group">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <input type="email" class="form-control" name="email" id="email" placeholder="이메일주소를 입력해주세요." data-rule="email" data-msg="아이디는 필수입력 항목입니다.">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
              <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요" data-rule="password" data-msg="비밀번호는 필수입력 항목입니다.">
              <div class="validate"></div>
            </div>
          </div>
          <br />
          <button type="submit" class="w-40 btn btn-lg btn-primary" style="margin:auto;display:block;width:420px;">login with email</button>
          <button type="button" class="w-40 btn kakao_login_btn" style="margin:auto;display:block;"><img src="img/kakaologinbtn.png" style="border-radius: 8px; width:420px;height:53px;"></button>
          <button type="button" class="w-40 btn naver_login_btn" style="margin:auto;display:block;"><img src="img/naverloginbtn.png" style="border-radius: 8px; width:420px;height:53px;"></button>
          <button type="button" class="w-40 btn google_login_btn" style="margin:auto;display:block;"><img src="img/googleloginbtn.png" style="border-radius: 8px; width:420px;height:53px;"></button>
        </form>
      <br />
      <div class="row">
            <div class="col-md-4 form-group mt-3" style="margin-left: 440px;">
			      <a href="/" class="btn btn-secondary">이전페이지</a>
			      <a href="/roleCheck" class="btn btn-primary" style="float: right;">회원가입</a>
              <div class="validate"></div>
            </div>
		</div>
      </div>
    </section>

  </main><!-- End #main -->


  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>

</body>

</html>