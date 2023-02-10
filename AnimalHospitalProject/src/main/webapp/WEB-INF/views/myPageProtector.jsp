<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	window.onload = function () {
		var withdrawal = document.getElementById('withdrawal');
		withdrawal.addEventListener('click', function () {
			var result = window.confirm('탈퇴하시면 모든 내역이 사라집니다.\r\n정말로 회원 탈퇴하시겠습니까?');
			
			if(result) {
				alert('정상적으로 처리되었습니다.');
				location.href='/';
			}
		});
	}
	
</script>

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
	grid-template-columns: 55% 45%;
	position: static;
}

tr, td {
	text-align: left;
}

h3 {
	display: inline;
}
.pagination {
  justify-content: center;
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
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 88%;">
							<h3>나의 정보</h3>
							&nbsp;<input type="button" class="btn btn-primary btn-sm"
								onclick="location.href='/editMyPageProtector'" value="정보수정"
								style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
							<input type="button" class="btn btn-primary btn-sm" id="withdrawal" onclick="clickEvent()"
								value="회원탈퇴" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
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
						&nbsp;<input type="button" class="btn btn-primary btn-sm"
							onclick="location.href='/patientAdd'" value="환자추가" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
						<p />
						<div class="card mb-3" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-4">
									<img src="img/dog.jpg" class="img-fluid rounded-start"
										alt="..." style="width: 100%; height: 100%;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="animalName" style="text-align: center;">두둥</h5>
										<p class="card-text">
											나이 : 3살 <br /> 품종 : 멀티즈<br /> 사이즈 : 소형<br /> 몸무게 : 5kg<br />
										</p>
										<div align="right">
											<input type="button" class="btn btn-primary btn-sm" onclick="location.href='/patientInfoEditGuardian'" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" value="정보수정">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-3" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-4">
									<img src="img/cat.jpg" class="img-fluid rounded-start"
										alt="..." style="width: 100%; height: 100%;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="animalName" style="text-align: center;">나비</h5>
										<p class="card-text">
											나이 : 1살 <br /> 품종 : 길냥이<br /> 사이즈 : 소형<br /> 몸무게 : 4kg<br />
										</p>
										<div align="right">
											<input type="button" class="btn btn-primary btn-sm" onclick="location.href='/patientInfoEditGuardian'" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" value="정보수정">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="rightContent">
						<div
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 550px; margin-left: auto;">
							<h5>
								<b>이전 진료 내역</b>
							</h5>
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>진료 일 : 2023년 1월 30일</td>
								</tr>
								<tr>
									<td>증상 : 구토</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/diagnosis'" value="상세보기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;"/> <input
									type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/postscriptSave'" value="후기작성" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" />
							</div>
							<table>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td>질료 일 : 2022년 12월 2일</td>
								</tr>
								<tr>
									<td>증상 : 감기</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/diagnosis'" value="상세보기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" /> <input
									type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/postscriptSave'" value="후기작성" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" />
							</div>
							<table>
								<tr>
									<td>진료병원 : B동물병원</td>
								</tr>
								<tr>
									<td>진료 일 : 2022년 10월 6일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/diagnosis'" value="상세보기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" /> <input
									type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/postscriptSave'" value="후기작성" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" />
							</div>
							<table>
								<tr>
									<td>진료병원 : B동물병원</td>
								</tr>
								<tr>
									<td>진료 일 : 2021년 10월 30일</td>
								</tr>
								<tr>
									<td>증상 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/diagnosis'" value="상세보기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" /> <input
									type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/postscriptSave'" value="후기작성" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" />
							</div>
						</div>
						<p>
						<div
							style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 550px; height:400px; margin-left: auto;">
							<h5>
								<b>작성 한 후기</b>
							</h5>
							<div class="white_shd full margin_bottom_30">
								<div class="full graph_head"></div>
								<div class="table_section padding_infor_info">
									<div class="table-responsive-sm">
										<table class="table" style="text-align: center">
											<thead>
												<tr>
													<th style="width: 16%">환자명</th>
													<th style="width: 17%">별점</th>
													<th style="width: 20%">진료병원</th>
													<th style="width: 16%">진료일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>토리</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2023.01.10</td>
												</tr>
												<tr>
													<td>두둥</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2022.01.30</td>
												</tr>
												<tr>
													<td>토리</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2021.12.30</td>
												</tr>
												<tr>
													<td>나비</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2021.09.30</td>
												</tr>
												<tr>
													<td>두둥</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2021.07.10</td>
												</tr>
												<tr>
													<td>두둥</td>
													<td>★★★★★</td>
													<td>A병원</td>
													<td>2021.04.05</td>
												</tr>
											</tbody>
										</table>
										
										<nav aria-label="Page navigation example">
										  <ul class="pagination">
										    <li class="page-item">
										      <a class="page-link" href="#" aria-label="Previous">
										        <span aria-hidden="true">&laquo;</span>
										      </a>
										    </li>
										    <li class="page-item"><a class="page-link" href="#">1</a></li>
										    <li class="page-item"><a class="page-link" href="#">2</a></li>
										    <li class="page-item"><a class="page-link" href="#">3</a></li>
										    <li class="page-item">
										      <a class="page-link" href="#" aria-label="Next">
										        <span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
										  </ul>
										</nav>
									</div>
								</div>
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