<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>담당 환자 전체 조회</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">


<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">

<style type="text/css">
table {
	border-collapse: collapse;
}

.pagination {
	justify-content: center;
}
input[name="searchPatient"] {
	width: 70%;
	height: 38px;
	border: 1px solid #ced4da;
	padding-left: 5px;
	display: inline;
}
input[name="searchPatientBtn"] {
	width: 30%;
	height: 38px;
	display: inline;
	margin-left: -5px;
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
					<br />담당 환자 전체 조회
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->
	<section class="inner-page">
		<main>
			<!-- table section -->
			<div class="col-md-9" style="margin-left: 200px">
			<form style="float:right;"> <!-- 예시: <form th:action="@{/board/list}" method="get"> -->
				<input type="text" name="searchPatient" class="form-control" 
							id="searchPatient" placeholder="환자명을 입력해주세요." data-rule="text">
							&nbsp;
				<input type="submit" class="btn btn-primary"
							name="searchPatientBtn" id="searchPatientBtn" value="검색"
							style="width: 70px; text-align: center; border-radius: 50px; margin-top: -4px;">
			</form>
			<div><br/><br/><br/> </div>	
				<div class="white_shd full margin_bottom_30">
					<div class="full graph_head"></div>
					<div class="table_section padding_infor_info">
						<div class="table-responsive-sm">
							<table class="table table-hover" style="text-align: center">
								<thead>
									<tr>
										<th style="width: 6%">보호자명</th>
										<th style="width: 10%">환자명</th>
										<th style="width: 6%">나이</th>
										<th style="width: 10%">종</th>
										<th style="width: 6%">성별</th>
										<th style="width: 6%">몸무게</th>
										<th style="width: 20%">특이사항</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>홍길동</td>
										<td>아리</td>
										<td>3</td>
										<td>포메라니안</td>
										<td>female</td>
										<td>3.8</td>
										<td>없음</td>
									</tr>
									<tr>
										<td>김OO</td>
										<td>토리</td>
										<td>4</td>
										<td>포메라니안</td>
										<td>female</td>
										<td>3.8</td>
										<td>없음</td>
									</tr>
									<tr>
										<td>김OO</td>
										<td>모리</td>
										<td>8</td>
										<td>포메라니안</td>
										<td>male</td>
										<td>4.2</td>
										<td>당뇨, 슬개골 탈구</td>
									</tr>
									<tr>
										<td>김OO</td>
										<td>태리</td>
										<td>4</td>
										<td>포메라니안</td>
										<td>female</td>
										<td>5</td>
										<td>없음</td>
									</tr>
									<tr>
										<td>박OO</td>
										<td>함이</td>
										<td>0</td>
										<td>웰시코기</td>
										<td>female</td>
										<td>1.0</td>
										<td>3차 예방접종까지 완료, 중성화X</td>
									</tr>
									<tr>
										<td>박OO</td>
										<td>품이</td>
										<td>0</td>
										<td>웰시코기</td>
										<td>female</td>
										<td>0.9</td>
										<td>3차 예방접종까지 완료, 중성화X</td>
								</tbody>
							</table>
							<br/>
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">6</a></li>
									<li class="page-item"><a class="page-link" href="#">7</a></li>
									<li class="page-item"><a class="page-link" href="#">8</a></li>
									<li class="page-item"><a class="page-link" href="#">9</a></li>
									<li class="page-item"><a class="page-link" href="#">10</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
							<!-- 각 번호 페이지 버튼
							 <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
								 <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
							 </c:forEach>
							 -->
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
		</main>
	</section>
</body>
<%@ include file="/WEB-INF/includes/footer.jsp"%>
</html>