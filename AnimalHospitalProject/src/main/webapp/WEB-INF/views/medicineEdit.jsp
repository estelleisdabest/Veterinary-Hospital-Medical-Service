<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>

<body>

	<%@ include file="/WEB-INF/includes/header.jsp"%>



	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs"></section>
		<!-- End Breadcrumbs Section -->

		<section id="medicine" class="appointment section-bg">
			<div class="container">
				<div class="section-title">
					<h2>처방약 수정</h2>
				</div>
			</div>
		</section>
		<br />
		<div class="col-lg-4" style="margin: auto;">
			<div class="info">
				<div class="daily" style="display: inline;">
					<h4>처방 일자</h4>
					<input type="date" name="day" class="form-control" id="day" />
				</div>
				<br />
				<div class="patientName">
					<h4>환 자 명</h4>
					<input type="text" name="patient" class="form-control" id="day" />
				</div>
				<br />
				<div class="guardian">
					<h4>약 재 명</h4>
					<input type="text" name="guardian" class="form-control" id="day" />
				</div>
				<br />
				<div class="guardian">
					<h4>제조 회사</h4>
					<input type="text" name="guardian" class="form-control" id="day" />
				</div>
				<br />
				<div class="phone">
					<h4>효 과</h4>
					<input type="text" name="phone" class="form-control" id="day" />
				</div>
				<br />
				<div class="guardian">
					<h4>효 능</h4>
					<input type="text" name="guardian" class="form-control" id="day" />
				</div>
				<br />
				<div class="medicalDetails">
					<h4>부작용 및 주의사항</h4>
					<textarea class="form-control" name="message" rows="5"></textarea>
				</div>
				<br />
			</div>
		</div>
		<div style="text-align: center;">
			<button class="btn btn-primary" type="submit">처방약 수정 완료</button>
		</div>
	</main>
	<!-- End #main -->

	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
</html>