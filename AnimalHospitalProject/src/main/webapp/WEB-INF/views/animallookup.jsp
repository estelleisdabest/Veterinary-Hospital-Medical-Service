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
.

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">

<style type="text/css">
table {
	border-collapse: collapse;
}

.pageInfo {
	margin-left: 25%;
	margin-right: 20%;
	list-style: none;
	text-align: center;
}

.pageInfo_btn {
	float: left;
	font-size: 15px;
	margin-left: 13px;
	padding: 3px;
	font-weight: 500;
	text-align: center;
	border: 1px solid #dee2e6;
	width: 30px;
	height: 30px;
	display: inline-block;
}

.pageInfo_btn.next {
	float: left;
	font-size: 15px;
	margin-left: 13px;
	padding: 3px;
	font-weight: 500;
	text-align: center;
	border: 1px solid #dee2e6;
	width: 45px;
	height: 30px;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}
</style>

</head>

<%@ include file="/WEB-INF/includes/header.jsp"%>


<body class="sb-nav-fixed">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<br />
			<div class="section-title">
				<h2 style="font-weight: bold; font-size: 30px;">
					<br />환자조회
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section class="inner-page">
		<main>
			<!-- table section -->
			<div class="col-md-9" style="margin-left:200px;">
				<a href="" class="appointment-btn scrollto"
					style="float: right; margin-right: 10px; color: white;">환자추가</a>&nbsp;
				<br /> <br />
				<div class="white_shd full margin_bottom_30">
					<div class="table_section padding_infor_info">
						<div class="table-responsive-sm">
							<table class="table table-hover" style="text-align: center">
								<thead>
									<tr>
										<th style="width: 8%">진료번호</th>
										<th style="width: 8%">환자명</th>
										<th style="width: 50%">진료내용</th>
										<th style="width: 15%">진료병원</th>
										<th style="width: 8%">진료일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="5" style="text-align: center;">등록된 진료내역이
											없습니다.</td>
									</tr>
									<tr>
										<td>751</td>
										<td>아리</td>
										<td style="text-align: left;">감기</td>
										<td>A병원</td>
										<td>2023.01.30</td>
									</tr>
									<tr>
										<td>667</td>
										<td>토리</td>
										<td style="text-align: left;">감기</td>
										<td>A병원</td>
										<td>2023.01.10</td>
									</tr>
									<tr>
										<td>666</td>
										<td>아리</td>
										<td style="text-align: left;">건강검진</td>
										<td>A병원</td>
										<td>2022.11.10</td>
									</tr>
									<tr>
										<td>466</td>
										<td>토리</td>
										<td style="text-align: left;">구토</td>
										<td>A병원</td>
										<td>2022.01.30</td>
									</tr>
									<tr>
										<td>335</td>
										<td>토리</td>
										<td style="text-align: left;">건강검진</td>
										<td>A병원</td>
										<td>2021.12.30</td>
									</tr>
									<tr>
										<td>229</td>
										<td>겨울</td>
										<td style="text-align: left;">건강검진</td>
										<td>A병원</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>228</td>
										<td>아리</td>
										<td style="text-align: left;">결막염</td>
										<td>A병원</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>227</td>
										<td>토리</td>
										<td style="text-align: left;">결막염</td>
										<td>A병원</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>111</td>
										<td>아리</td>
										<td style="text-align: left;">소화불량</td>
										<td>A병원</td>
										<td>2021.08.30</td>
									</tr>
									<tr>
										<td>45</td>
										<td>토리</td>
										<td style="text-align: left;">진료내용 예시입니다</td>
										<td>A병원</td>
										<td>2021.07.10</td>
									</tr>
									<tr>
										<td>32</td>
										<td>토리</td>
										<td style="text-align: left;">진료내용 예시입니다</td>
										<td>A병원</td>
										<td>2021.04.05</td>
									</tr>
								</tbody>
							</table>
				<div class="pageInfo_wrap">
					<div class="pageInfo_area">
						<ul id="pageInfo" class="pageInfo">
							<li class="pageInfo_btn next"><a href="">이전</a></li>
							<li class="pageInfo_btn">1</li>
							<li class="pageInfo_btn">2</li>
							<li class="pageInfo_btn">3</li>
							<li class="pageInfo_btn">4</li>
							<li class="pageInfo_btn">5</li>
							<li class="pageInfo_btn">6</li>
							<li class="pageInfo_btn">7</li>
							<li class="pageInfo_btn">8</li>
							<li class="pageInfo_btn">9</li>
							<li class="pageInfo_btn">10</li>
							<li class="pageInfo_btn next"><a href="">다음</a></li>
							<!-- 각 번호 페이지 버튼
							<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
								 <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
							 </c:forEach>
						 -->
						</ul>
					</div>
					<!--  다음페이지 버튼-->
					<!-- 
					    <c:if test="${pageMaker.next}">
					        <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
					    </c:if> 
					    -->
				</div>
			</div>
						</div>
					</div>
				</div>
			
		</main>

	</section>


</body>
<!-- Template Main JS File -->
<%@ include file="/WEB-INF/includes/footer.jsp"%>



</html>