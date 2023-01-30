<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Checkout example Â· Bootstrap v5.0</title>
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
  <link href="css/orm-validation.css" rel="stylesheet">

    <style>
/*       .bd-placeholder-img { */
/*         font-size: 1.125rem; */
/*         text-anchor: middle; */
/*         -webkit-user-select: none; */
/*         -moz-user-select: none; */
/*         user-select: none; */
/*       } */

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      div {
      	margin: auto;
      	
      }
    </style>
</head>

  <%@ include file="/WEB-INF/includes/header.jsp" %>


    <body class="bg-light">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

	<br />
		<div class="section-title">
          <h2><h1 class="mt-4">내 정보 수정</h1></h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
			<div id="layoutSidenav_content">
   <main>

    <div class="row g-5">
      
      <div id="doctorImg" style="padding-left: 220px;">
		 <img alt="의사" src="img/doctors/doctors-1.jpg" style="width: 200px; height:200px;  ">
	</div>
	
      <div class="col-md-7 col-lg-8">
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">ID</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">성별</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

<!--             <div class="col-12"> -->
<!--               <label for="username" class="form-label">Username</label> -->
<!--               <div class="input-group has-validation"> -->
<!--                 <span class="input-group-text">@</span> -->
<!--                 <input type="text" class="form-control" id="username" placeholder="Username" required> -->
<!--               <div class="invalid-feedback"> -->
<!--                   Your username is required. -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->

            <div class="col-12">
              <label for="email" class="form-label">이름 <span class="text-muted"></span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
<!--               <div class="invalid-feedback"> -->
<!--                 Please enter a valid email address for shipping updates. -->
<!--               </div> -->
            </div>
            
            <div class="col-12">
              <label for="birth" class="form-label">생년월일 <span class="text-muted"></span></label>
              <input type="date" class="form-control" id="email" placeholder="2000-01-01">            
            </div>
            
            <div class="col-12">
              <label for="email" class="form-label">면허취득일 <span class="text-muted"></span></label>
              <input type="date" class="form-control" id="email" placeholder="2000-01-01">            
            </div>
            
            <div class="col-12">
              <label for="email" class="form-label">의사 등록번호 <span class="text-muted"></span></label>
              <input type="number" class="form-control" id="email" placeholder="110011">            
            </div>
            
            <div class="col-12">
              <label for="email" class="form-label">연락처 <span class="text-muted"></span></label>
              <input type="number" class="form-control" id="email" placeholder="010-1111-1111">            
            </div>

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control" id="address" placeholder="" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">상세주소 <span class="text-muted"></span></label>
              <input type="text" class="form-control" id="address2" placeholder="">
            </div>
          </div>
          
          <div class="col-12">
              <label for="email" class="form-label">이메일 <span class="text-muted"></span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
<!--               <div class="invalid-feedback"> -->
<!--                 Please enter a valid email address for shipping updates. -->
<!--               </div> -->
           </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">수정하기</button>
        </form>
      </div>
    </div> 
                </main>

            </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.js"></script>
<!--     <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
   		<script src="js/form-validation.js"></script>
     </section>


</body>
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>

</html>