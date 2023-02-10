<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>처뱡약 리스트</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">


<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">

<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
	
<style type="text/css">
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
					<h2 style="font-weight: bold; font-size: 30px;">처방약 리스트</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">

		<!-- table section -->
		<div class="col-md-8" style="margin: auto;">
			<div class="white_shd full margin_bottom_30">
				<div class="full graph_head"></div>
				<div class="table_section padding_infor_info">
					<div class="table-responsive-sm">
						<b style="font-size: 20px;">환자명 : 토리</b>
						<br><br>
						<table class="table table-hover" style="text-align: center">
							<thead>
								<tr>
									<th class="check" width="30" style="width: 5%"><input type="checkbox" id="checkall" /></th>
									<th style="width: 10%">처방일자</th>
									<th style="width: 15%">약재명</th>
									<th style="width: 15%">효능</th>
									<th style="width: 80%">주의사항</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2023-02-10</td>
									<td style="vertical-align: middle;">세라치오펩티다제</td>
									<td style="vertical-align: middle;">심장사상충 예방</td>
									<td style="text-align: left;">올로파타딘염산염, 수산화나트륨,
										에데트산나트륨수화물, 염화나트륨 등 이 약의 주성분 또는 구서성분에 과민증 환자에 경우 안과장애가 일어날 수
										있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2023-01-15</td>
									<td style="vertical-align: middle;">올로원스점안액</td>
									<td style="vertical-align: middle;">세균감염</td>
									<td style="text-align: left;">올로파타딘염산염, 수산화나트륨,
										에데트산나트륨수화물, 염화나트륨 등 이 약의 주성분 또는 구서성분에 과민증 환자에 경우 안과장애가 일어날 수
										있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2022-12-31</td>
									<td style="vertical-align: middle;">황산네오마이신</td>
									<td style="vertical-align: middle;">식욕부진</td>
									<td style="text-align: left;">케토롤락트로메타민염제제를 같이 복용할 경우 심혈관계
										혈전반응, 심근경색증 및 뇌졸중 위험을 증가시킬 수 있다</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2022-12-24</td>
									<td style="vertical-align: middle;">아사로핀정</td>
									<td style="vertical-align: middle;">가려움</td>
									<td style="text-align: left;">비스테로이드성 소염진통제를 같이 복용할 경우
										심혈관계 혈전반응, 심근경색증 및 뇌졸중 위험을 증가시킬 수 있다</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2022-09-20</td>
									<td style="vertical-align: middle;">프로펜정</td>
									<td style="vertical-align: middle;">알러지</td>
									<td style="text-align: left;">위장장애, 부신피질기능부전, 골다공증, 감염증
										악화, 당뇨병 등이 나타날 수 있습니다.</td>
								</tr>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox" /></td>
									<td style="vertical-align: middle;">2022-08-10</td>
									<td style="vertical-align: middle;">카토피렌</td>
									<td style="vertical-align: middle;">안구이물감</td>
									<td style="text-align: left;">입마름</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<br>
			
			<nav aria-label="Page navigation example" style="margin: auto;">
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
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
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
			</nav>	
					
			<div class="pagination" style="margin: auto;">
				<input type="button" class="btn btn-secondary" name="move_pre_page"
					id="move_pre_page" value="이전페이지" onclick="location='#'"
					style="border-radius: 50px; width: 130px; margin: auto; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="move_edit_page"
					id="move_edit_page" value="처방약 수정" onclick="location='/medicineAdd'"
					style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="medicineDelete"
					id="medicineDelete" value="처방약 삭제" onclick="location='/medicineList'"
					style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
			</div>			
		</div>
		
		</section>		
		
	</main>
	<!-- End #main -->

	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>