<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>약 처방</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">

<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">약 처방</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		
		<section class="inner-page">

		<div class="contact-form pt-20"></div>
		<form id="contact-form" action="assets/contact.php" method="post"
			data-toggle="validator"></form>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="date">처방 일자</label> <input type="date"
					class="form-control" name="currentDate" id="currentDate"
					data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
			<script>
				document.getElementById('currentDate').value = new Date()
						.toISOString().substring(0, 10);
			</script>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="name">환자명</label> <input type="text"
					class="form-control" name="name" id="name" placeholder="토리"
					data-rule="name" data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="guardianName">보호자명</label> <input type="text"
					class="form-control" name="guardianName" id="guardianName"
					placeholder="홍길동" data-rule="guardianName" data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="age">나이</label> <input type="number" min="1"
					class="form-control" name="age" id="age" placeholder="1"
					data-rule="age" data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="weight">몸무게</label> <input type="number" min="1"
					class="form-control" name="weight" id="weight" placeholder="3"
					data-rule="weight" data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="symptom">증상 (진료내역)</label> <input type="text"
					class="form-control" name="symptom" id="symptom"
					list="symptom-list" data-rule="symptom" data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<datalist id="symptom-list">
					<option>감기</option>
					<option>구토</option>
					<option>털빠짐</option>
					<option>결막염</option>
					<option>알러지</option>
					<option>가려움</option>
					<option>심장 사상충 예방</option>
					<option>관절염</option>
				</datalist>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="weight">제조회사</label> <input type="text"
					class="form-control" name="medicineCompany" id="medicineCompany"
					list="medicineCompany-list" data-rule="medicineCompany"
					data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<datalist id="medicineCompany-list">
					<option>한림제약주식회사</option>
					<option>하온제약주식회사</option>
					<option>파아로제약주식회사</option>
					<option>MDC제약주식회사</option>
				</datalist>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="weight">약재명</label> <input type="text"
					class="form-control" name="medicineName" id="medicineName"
					list="medicineName-list" data-rule="medicineName"
					data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<datalist id="medicineName-list">
					<option>파로나인정</option>
					<option>세라치오펩티다제</option>
					<option>살리노마이신</option>
					<option>황산네오마이신</option>
				</datalist>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="medicineDetail">효능</label> <input type="text"
					class="form-control" name="medicineDetail" id="medicineDetail"
					placeholder="비스테로이드성 소염진통제" data-rule="medicineDetail"
					data-msg="필수입력 항목입니다."
					onFocus="this.style.backgroundImage='url(none)';">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="medicationMethod">급여 방법</label>
					<input type="text"
						class="form-control" name="medicationMethod" id="medicationMethod"
						list="medicationMethod-list" data-rule="medicationMethod" data-msg="필수입력 항목입니다."
						onFocus="this.style.backgroundImage='url(none)';">
				<datalist id="medicationMethod-list">
					<option>하루 3회 / 식후 30분</option>
					<option>하루 3회 / 식전 30분</option>
					<option>하루 2회 / 기상 후, 취침 전</option>
					<option>하루 1회 / 취침 전</option>
					<option>증상 발생 시 수시</option>
					<option>2시간 간격</option>
				</datalist>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="medicinemedicationGuide">의약품 안내</label>
				<textarea class="form-control" name="medicinemedicationGuide"
					id="medicinemedicationGuide" rows="3"
					placeholder="조화관 운동을 촉진시켜 오심, 구토 등의 증상을 치료하며 복부 경련 및 그에 의한 통증을 완화시키는 약물"></textarea>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for=""medicineSideEffect"">약 부작용</label>
				<textarea class="form-control" name="medicineSideEffect"
					id="medicineSideEffect" rows="5"
					placeholder="올로파타딘염산염, 수산화나트륨, 에데트산나트륨수화물, 염화나트륨 등 이 약의 주성분 또는 구서성분에 과민증 환자에 경우 안과장애가 일어날 수 있습니다."></textarea>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<br><br><br><br><br><br><br>
			<div class="col-md-4 form-group" style="margin: auto;">
				<input type="button" class="btn btn-secondary" name="move_pre_page"
					id="move_pre_page" value="이전페이지"
					onclick="location='/patientInfo'"
					style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
				<input type="button" class="btn btn-primary"
					name="join_membership_protector" id="join_membership_protector"
					value="약 추가" style="border-radius: 50px; width: 110px; margin: auto;
					text-align: center; float: right; color: white;"
					onclick="location='/medicineList'">
			</div>
		</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>

</html>