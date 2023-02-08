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
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">처방약 리스트</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<!-- table section -->
		<div class="col-md-8" style="margin: auto;">
			<div class="white_shd full margin_bottom_30">
				<div class="full graph_head"></div>
				<div class="table_section padding_infor_info">
					<div class="table-responsive-sm">
						<table class="table table-hover" style="text-align: center">
							<thead>
								<tr>
									<th class="check" width="30" style="width: 8%"><input type="checkbox" id="checkall" /></th>
									<th style="width: 15%">약재명</th>
									<th style="width: 15%">효능</th>
									<th style="width: 15%">급여방법</th>
									<th style="width: 80%">주의사항</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">세라치오펩티다제</td>
									<td style="vertical-align: middle;">심장사상충 예방</td>
									<td style="vertical-align: middle;">하루 3회, 식후 30분</td>
									<td style="text-align: left;">올로파타딘염산염, 수산화나트륨,
										에데트산나트륨수화물, 염화나트륨 등 이 약의 주성분 또는 구서성분에 과민증 환자에 경우 안과장애가 일어날 수
										있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">올로원스점안액</td>
									<td style="vertical-align: middle;">세균감염</td>
									<td style="vertical-align: middle;">하루 3회, 식전 30분</td>
									<td style="text-align: left;">올로파타딘염산염, 수산화나트륨,
										에데트산나트륨수화물, 염화나트륨 등 이 약의 주성분 또는 구서성분에 과민증 환자에 경우 안과장애가 일어날 수
										있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">황산네오마이신</td>
									<td style="vertical-align: middle;">식욕부진</td>
									<td style="vertical-align: middle;">하루 2회, 기상후/취침전</td>
									<td style="text-align: left;">케토롤락트로메타민염제제를 같이 복용할 경우 심혈관계
										혈전반응, 심근경색증 및 뇌졸중 위험을 증가시킬 수 있다</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">아사로핀정</td>
									<td style="vertical-align: middle;">가려움</td>
									<td style="vertical-align: middle;">하루 1회, 취침 전</td>
									<td style="text-align: left;">비스테로이드성 소염진통제를 같이 복용할 경우
										심혈관계 혈전반응, 심근경색증 및 뇌졸중 위험을 증가시킬 수 있다</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">프로펜정</td>
									<td style="vertical-align: middle;">알러지</td>
									<td style="vertical-align: middle;">증상 발생 시</td>
									<td style="text-align: left;">위장장애, 부신피질기능부전, 골다공증, 감염증
										악화, 당뇨병 등이 나타날 수 있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">카토피렌</td>
									<td style="vertical-align: middle;">안구이물감</td>
									<td style="vertical-align: middle;">2시간 간격</td>
									<td style="text-align: left;">입마름</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4 form-group" style="margin: auto;">
				<input type="button" class="btn btn-primary" name="move_edit_page"
					id="move_edit_page" value="처방약 수정"
					onclick="location='/medicineEdit'"
					style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="medicineDelete"
					id="medicineDelete" value="처방약 삭제"
					style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;"
					onclick="location='/medicineList'">
			</div>			
		</div>
	</main>
	<!-- End #main -->

	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>