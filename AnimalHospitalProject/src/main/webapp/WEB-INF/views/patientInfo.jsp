<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>환자 정보 및 이전진료내역</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
	#gridContainer {
		display: grid;
		grid-auto-rows: minmax(100px, auto);
		grid-template-columns: 2fr 1fr;
	}
	tr, td {
		text-align: left;
	}
	h4 {
		display: inline;
		margin: auto;
	}
	textarea {
		resize: none;
		height: 150px;
		text-align: left;
	}
	input[name="medicineAdd"] {
		height: 38px;
		display: inline;
		float: right;
		margin-top: 4px;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	input[name="medicineEdit"] {
		height: 38px;
		display: inline;
		float: right;
		margin-top: 4px;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	label[id="recoFeedAdd_input"] {
		height: 38px;
		display: inline;
		float: right;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	input[name="recoFeed_excel_download"] {
		height: 38px;
		display: inline;
		float: right;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	img {
		width: 200px;
		height: 200px; 
		display : block;
		border-radius:10%;
		object-fit: cover;
		border: 3px solid #F5F5F5;
	}
</style>
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<script type="text/javascript">
</script>
</head>
<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">환자 정보 및 이전진료내역</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="container" style="position: static;">
				<div id="gridContainer">
					<div id="mainContainer">
						<h4>
							<b>환자 정보</b> 
							<button type="button" class="btn btn-primary bt-sm" name="patientInfoEditDoctor" onclick="location='patientInfoEditDoctor'" style="border-radius:50px;">수정</button>
						</h4>
						<br />
						<br />
						<img src="img/dog.jpg" alt="...">
						<div class="row"></div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="name">이름</label>
								<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
								<input type="text" class="form-control" name="name" id="name"
									value="두둥" data-rule="name" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="species">종</label>
								<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
								<input type="text" class="form-control" name="species"
									id="species" value="말티즈" data-rule="species" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="size">크기</label>
								<%-- 환자정보 추가 및 수정했을 때 입력된 정보를 띄움 --%>
								<input type="text" class="form-control" name="size" id="size"
									value="소형" data-rule="size" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="age">나이</label>
								<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
								<input type="number" min="1" class="form-control" name="age"
									id="age" value="3" data-rule="age" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="age">성별</label> <br />
								<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
								<input type="radio" name="gender" id="Female" data-rule="gender"
									value="Female" checked onClick="return false;"> <label
									for="Female"> Female</label> <input type="radio" name="gender"
									id="Male" data-rule="gender" value="Male" readonly
									onClick="return false;"> <label for="Male">
									Male</label>
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-8 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-8 form-group">
								<label for="weight">몸무게</label>
								<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
								<input type="number" min="1" class="form-control" name="weight" step="0.1"
									id="weight" value="5" data-rule="weight" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
						<br />
					</div>
					<div id="rightContainer">
					<button type="button" class="btn btn-primary bt-sm" name="diagnosisAdd" onclick="location='diagnosisAdd'" style="border-radius:50px; float: right;">진료내용 작성</button>
					<br /><br />
						<div id="lastDiagnosis">
							<div>
								<div
									style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 350px; margin-left: auto;">
									<h5>
										<b>이전 진료 내역</b>
									</h5>
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
									<br />
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