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

<!-- bootstrap css -->
<link rel="stylesheet" href="css/pluto/bootstrap.min.css" />
<!-- site css -->
<link rel="stylesheet" href="css/pluto/style.css" />
<!-- responsive css -->
<link rel="stylesheet" href="css/pluto/responsive.css" />
<!-- color css -->
<link rel="stylesheet" href="css/colors.css" />
<!-- select bootstrap -->
<link rel="stylesheet" href="css/pluto/bootstrap-select.css" />
<!-- custom css -->
<link rel="stylesheet" href="css/pluto/custom.css" />
<!-- calendar file css -->
<link rel="stylesheet" href="js/pluto/semantic.min.css" />
<!-- fancy box js -->
<link rel="stylesheet" href="css/pluto/jquery.fancybox.css" />
<style type="text/css">
.pagination {
  justify-content: center;
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
					<br />공지사항
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section class="inner-page">
		<main>
			<!-- table section -->
			<div class="col-md-9"
				style="margin-left: 10%; margin-right: 30%; text-align: center; position: static;">
				<div class="white_shd full margin_bottom_30">
					<div class="full graph_head"></div>
					<div class="table_section padding_infor_info">
						<div class="table-responsive-sm">
							<table class="table table-hover">
								<thead>
									<tr>
										<th style="width: 5%">No</th>
										<th style="width: 60%">제목</th>
										<th>진료병원</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td style="text-align: left;">휴무안내</td>
										<td>A병원</td>
										<td>김아무개</td>
										<td>2023.01.30</td>
									</tr>
								</tbody>
							</table>
							<div>
								<%-- 보호자로 로그인했을때는 이 버튼이 보이지 않는다. --%>
								<input type="button" name="notice_add_btn" id="notice_add_btn"
									value="추가" class="btn btn-primary"
									onclick="location='noticeAdd'"
									style="border-radius:50px;width: 90px;text-align: center;color: white; float: right;" />
							</div>
							<br /> <br />
						</div>
					</div>
				</div>
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
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</main>

	</section>


</body>
<!-- Template Main JS File -->
<%@ include file="/WEB-INF/includes/footer.jsp"%>

<!-- jQuery -->
<script src="js/pluto/jquery.min.js"></script>
<script src="js/pluto/popper.min.js"></script>
<script src="js/pluto/bootstrap.min.js"></script>
<!-- wow animation -->
<script src="js/pluto/animate.js"></script>
<!-- select country -->
<script src="js/pluto/bootstrap-select.js"></script>
<!-- owl carousel -->
<script src="js/pluto/owl.carousel.js"></script>
<!-- chart js -->
<script src="js/pluto/Chart.min.js"></script>
<script src="js/pluto/Chart.bundle.min.js"></script>
<script src="js/pluto/utils.js"></script>
<script src="js/pluto/analyser.js"></script>
<!-- nice scrollbar -->
<script src="js/pluto/perfect-scrollbar.min.js"></script>
<script>
	var ps = new PerfectScrollbar('#sidebar');
</script>
<!-- fancy box js -->
<script src="js/pluto/jquery-3.3.1.min.js"></script>
<script src="js/pluto/jquery.fancybox.min.js"></script>
<!-- custom js -->
<script src="js/pluto/custom.js"></script>
<!-- calendar file css -->
<script src="js/pluto/semantic.min.js"></script>

</html>