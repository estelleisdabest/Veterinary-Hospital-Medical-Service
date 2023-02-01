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
			<div class="col-md-9" style="margin-left: 200px">
				<div class="white_shd full margin_bottom_30">
					<div class="full graph_head">
					</div>
					<div class="table_section padding_infor_info">
						<div class="table-responsive-sm">
							<table class="table table-hover" style="text-align: center">
								<thead>
									<tr>
										<th style="width: 5%">No</th>
										<th style="width: 60%">제목</th>
										<th>진료병원</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody >
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
								<a href="" class="appointment-btn scrollto"
									style="float: right; margin-right: 10px;">추가</a>
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