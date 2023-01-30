<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">


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
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

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
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

div {
	margin-left: 8%;
}
</style>
</head>

<%@ include file="/WEB-INF/includes/header.jsp"%>


<body class="bg-light">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<br />
			<div class="section-title">
				<h2>
					<h1 class="mt-4">내 정보</h1>
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section class="inner-page">
		<div id="layoutSidenav_content">
			<main>

				<div class="row g-5">

					<div id="doctorImg" style="padding-left: 8%;">
						<img alt="의사" src="img/doctors/doctors-1.jpg"
							style="width: 200px; height: 200px;">
					</div>
					<div class="col-md-7 col-lg-8">
						<form class="needs-validation" novalidate>
							<div class="row g-3">
								<div class="col-sm-6">
									<label for="id" class="form-label">ID</label>
									<input type="text" class="form-control" id="id" value="doctorhi" disabled="disabled">
								</div>
								<div class="col-sm-6">
								</div>
								<div class="col-6">
								<label for="gender" class="form-label">성별<span
										class="text-muted"></span></label>
								<input type="text" class="form-control" id="gender" value="남자" disabled="disabled">
								</div>
								<div class="col-6">
									<label for="name" class="form-label">이름<span
										class="text-muted"></span></label>
									<input type="text" class="form-control" id="name" value="Jake" disabled="disabled">	
								</div>

								<div class="col-6">
									<label for="birth" class="form-label">생년월일 <span class="text-muted"></span></label>
									<input type="date" class="form-control" id="birth" value="1980-11-01" disabled="disabled">
								</div>

								<div class="col-6">
									<label for="license" class="form-label">면허취득일 
										<span class="text-muted"></span>
									</label>
									<input type="date" class="form-control" id="license" value="2008-01-01" disabled="disabled">
								</div>

								<div class="col-6">
									<label for="doctorNumber" class="form-label">의사 등록번호 <span class="text-muted"></span> </label>
									<input type="text" class="form-control" id="doctorNumber" value="110011" disabled="disabled">	
								</div>

								<div class="col-6">
									<label for="phone" class="form-label">연락처<span class="text-muted"></span> </label>
									<input type="text" class="form-control" id="phone" value="010-1111-1111" disabled="disabled">	
								</div>

								<div class="col-8">
									<label for="address" class="form-label">주소</label>
									<input type="text" class="form-control" id="address" value="경기도 수원시 팔달구 중부대로 100" disabled="disabled">		
								</div>

								<div class="col-8">
									<label for="address2" class="form-label">상세주소<span
										class="text-muted"></span></label>
										<input type="text" class="form-control" id="address2" value="3층" disabled="disabled">	
								</div>
								<div class="col-6">
									<label for="email" class="form-label">이메일<span class="text-muted"></span></label>
									<input type="text" class="form-control" id="email" value="you@example.com" disabled="disabled">	
								</div>
							</div>

							<hr class="my-4">


							<div id=doctor>
								<textarea rows="5" cols="100" style="width: 10; height: 10;"
									placeholder="학력" disabled="disabled">학력</textarea>
								<textarea rows="5" cols="100" style="width: 10; height: 10;"
									placeholder="이력" disabled="disabled">이력</textarea>
								<textarea rows="5" cols="100" style="width: 10; height: 10;"
									placeholder="인사말" disabled="disabled">인사말</textarea>
							</div>
							<button class="w-100 btn btn-primary btn-lg" type="submit">수정하기</button>
						</form>
					</div>
				</div>
			</main>

		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
		<script src="js/scripts.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
			crossorigin="anonymous"></script>
		<script src="js/datatables-simple-demo.js"></script>
		<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.js"></script>
		<!--     <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
		<script src="js/form-validation.js"></script>
	</section>


</body>
<!-- Template Main JS File -->
<%@ include file="/WEB-INF/includes/footer.jsp"%>

</html>