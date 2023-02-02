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

<style type="text/css">
img {
	width: 300px;
	height: 150px;
	object-fit: cover;
	object-position: 50% 50%;	
}

#gridContainer {
	display: grid;
	grid-auto-rows: minmax(100px, auto);
	grid-template-columns: 2fr 1fr;
}

#mainContent {
	grid-row: 1/4;
	grid-column: 1/3;
}

#rightContent {
	grid-row: 1/5;
	grid-column: 3/4;
	text-align: center;
}

tr, td {
	text-align: left;
}

h3 {
	display: inline;
}
</style>
</head>

<body>

	<%@ include file="/WEB-INF/includes/header.jsp"%>


	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					 <h2 style="font-weight: bold; font-size: 30px;">나의 정보</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<div id="gridContainer">
					<div id="mainContent">
						<div
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 540px;">
							<h3>나의 정보</h3>
							<input type="button" class="btn btn-primary btn-sm"
								onclick="/editMyPageProtector.jsp" value="정보수정"> <input
								type="button" class="btn btn-primary btn-sm" onclick=""
								value="회원탈퇴">
							<table>
								<tr>
									<td>아이디 : dudungmam</td>
								</tr>
								<tr>
									<td>이름 : 김은지</td>
								</tr>
								<tr>
									<td>전화번호 : 010-****-****</td>
								</tr>
								<tr>
									<td>주소 : 경기도 수원시 인계동....</td>
								</tr>
							</table>
						</div>
						<br />
						<h3>환자 정보</h3>
						<input type="button" class="btn btn-primary btn-sm" onclick=""
							value="환자추가">
						<p />
						<div class="card mb-3" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-4" >
									<img src="img/dog.jpg" class="img-fluid rounded-start"
										alt="..." style="width: 100%;height: 100%;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="animalName" style="text-align: center;">두둥</h5>
										<p class="card-text">
											나이 : 3살 <br /> 품종 : 멀티즈<br /> 사이즈 : 소형<br /> 몸무게 : 5kg<br />
										</p>
										<div align="right">
											<a href="#" class="btn btn-primary btn-sm">정보수정</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-3" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-4">
									<img src="img/cat.jpg" class="img-fluid rounded-start"
										alt="..." style="width: 100%;height: 100%;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="animalName" style="text-align: center;">나비</h5>
										<p class="card-text">
											나이 : 1살 <br /> 품종 : 길냥이<br /> 사이즈 : 소형<br /> 몸무게 : 4kg<br />
										</p>
										<div align="right">
											<a href="#" class="btn btn-primary btn-sm">정보수정</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="rightContent">
						<div
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 350px; margin-left: auto;">
							<h5>이전 진료 내역</h5>
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>질료 일 : 2023년 1월 30일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" onclick=""
									value="후기작성" />
							</div>
							<br />
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>질료 일 : 2023년 1월 30일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" onclick=""
									value="후기작성" />
							</div>
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>진료 일 : 2023년 1월 30일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" onclick=""
									value="후기작성" />
							</div>
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>진료 일 : 2023년 1월 30일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" onclick=""
									value="후기작성" />
							</div>
						</div>
						<p>
						<div
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 350px; margin-left: auto;">
							<h5>작성 한 후기</h5>
							<table>
								<tr>
									<td>작성일 : 2023년 01월 31일</td>
								</tr>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>진료일 : 2023년 01월 31일</td>
								</tr>
								<tr>
									<td>별점 : ★★★★★</td>
								</tr>
								<tr>
									<td>내용 :
										<p>의사 선생님이 너무 친절했어요~!.....</p>
									</td>
								</tr>

							</table>
							<div align="right" >
							<input type="button" class="btn btn-primary btn-sm" onclick=""
								value="수정" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->


	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>