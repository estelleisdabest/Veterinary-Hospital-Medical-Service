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
    <style type="text/css">
     input::-webkit-input-placeholder{
        background-image: 
        background-size: contain;
     background-position:  1px center;
     background-repeat: no-repeat;
     text-align: center;
     text-indent: 0;
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
          <h2 style="font-weight: bold; font-size: 30px;">환자 추가</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
                    <div class="contact-form pt-20"></div>
                        <form id="contact-form" action="assets/contact.php" method="post" data-toggle="validator"></form>
                            <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="name">이름</label>
              <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요" data-rule="name" data-msg="필수입력 항목입니다.">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="species">종</label>
              <input type="text" class="form-control" name="species" id="species" placeholder="종을 입력해주세요" data-rule="species" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="age">나이</label>
              <input type="number" min="1" class="form-control" name="age" id="age" placeholder="나이를 입력해주세요" data-rule="age" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="weight">몸무게</label>
              <input type="number" min="1" class="form-control" name="weight" id="weight" placeholder="몸무게를 입력해주세요" data-rule="weight" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="etc">특이사항</label>
              <input type="text" class="form-control" name="etc" id="etc" placeholder="특이사항을 입력해주세요" >
              <div class="validate"></div>
            </div>
            </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
               <label for="etc">사진 및 동영상 추가</label>
              <input type="file" class="form-control" name="file" id="file" placeholder="">
              <div class="validate"></div>
            </div>
            </div>   
            <div class="row"><p></p>
            <p>
         <div class="submit" style="position: relative;">        
        <input type="button" value="추가" class="btn btn-primary" style="width:100px; position: absolute;left: 50%;top: 50%; transform: translate(-50%,-50%)"/>
   </p>
      </div>
        </div>
      
          
          
    <section class="inner-page">
      <div class="container">
        <p>
        </p>
      </div>
    </section>

  </main><!-- End #main -->


  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>

</body>

</html>





