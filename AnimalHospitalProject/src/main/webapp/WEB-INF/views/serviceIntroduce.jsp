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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!-- Tables - SB Admin -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">서비스 소개</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<a name="protectorPage"></a>
		<section class="inner-page">
			<div class="container">
				<div>
					<br />
					<h4>보호자 및 반려동물 서비스 제공 내용</h4>

					<div align="right">
						<a href="#doctorPage" class="btn btn-primary" style="border-radius: 50px; width: 250px; margin: auto; text-align: center; color: white;">의사전용 소개 페이지에 가기</a>
					</div>
					<br />
					<div
						style="padding: 10px; margin-bottom: 10px; border: 1px solid #CCCCFF; border-radius: 10px; text-align: center; font-size: 15pt;">
						<br />
						<p style="text-align: center; font-size: 15pt;">
							<b>저희는 보호자들에게 최적화된 서비스를 제공합니다.</b>
						</p>
						<br /> <img alt="..." src="img/catdog.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%;">
						<br /> <br />
						<p style="font-size: 16pt; text-align: center;">소중한 우리 가족을 위해
							동네에 있는 병원을 24시간 언제나 예약할 수 있는 기능을 제공합니다.</p>
						<br /> <br /> <img alt="..." src="img/doctordog.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br /> <br />
						<p>약국도 편하게 찾을 수 있습니다!</p>
						<p>동물병원과 연계하는 약국을 지도를 통해서 24시간 확인할 수 있습니다.</p>
						<br /> <br /> <img alt="..." src="img/pharmacy.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br /> <br />
						<p>이외에도 다양한 기능이 있습니다.</p>
						<p>우리 가족을 위해서 시작해보세요!</p>
						<div align="center">
							<input type="button" class="btn btn-primary"
								onclick="location.href='/roleCheck'" value="회원가입 하러가기" style="border-radius: 50px; width: 180px; margin: auto; text-align: center; color: white;" />
						</div>
					</div>
					<a name="doctorPage"></a>
				</div>
				<br />
				<hr />
				<br />
				<div>
					<h4>의사 시스템 제공내용</h4>
					<div align="right">
						<a href="#protectorPage" class="btn btn-primary" style="border-radius: 50px; width: 280px; margin: auto; text-align: center; color: white;">보호자 전용 소개
							페이지에 가기</a>
					</div>
					<br />
					<div
						style="padding: 10px; margin-bottom: 10px; border: 1px solid #CCCCFF; border-radius: 10px; text-align: center; font-size: 15pt;">
						<br />
						<p style="text-align: center; font-size: 15pt;">
							<b>저희는 환자와 병원을 연결시켜주는 역할을 합니다.</b>
						</p>
						<br /> <img alt="..." src="img/dog2.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br />
						<p>제공하는 주요 서비스</p>
						<br />
						<p>1. 간편한 스케줄관리</p>
						<br /> <img src="img/calendar.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br />
						<p>환자 예약 관리</p>
						<p>개인 스케줄 관리</p>
						<p>To Do List</p>
						<br />
						<p>바쁜 의사선생님을 위해 업무 효율화를 목표로 만들었습니다.</p>
						<br />
						<p>2. 환자정보 확인</p>
						<img src="img/computer.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br /> <br />
						<p>보호자가 올린 사진이나 동영상 열람할 수 있으며 예전 진료 내역도 간편하게 확인 가능합니다.</p>
						<br />
						<p></p>
						<br />
						<p>3. 처방전 조정</p>
						<p>처방전을 추가하거나 약 조정을 간편하게 할 수 있습니다.</p>
						<img src="img/medicine.jpg"
							style="display: block; margin: auto; width: 70%; height: 70%">
						<br />
						<p>주요 서비스 외에도 다양한 기능이 있습니다.</p>
						<p>시작해보세요!</p>
						<div align="center">
							<input type="button" class="btn btn-primary"
								onclick="location.href='/roleCheck'" value="회원가입 하러가기" style="border-radius: 50px; width: 180px; margin: auto; text-align: center; color: white;" />
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
</html>