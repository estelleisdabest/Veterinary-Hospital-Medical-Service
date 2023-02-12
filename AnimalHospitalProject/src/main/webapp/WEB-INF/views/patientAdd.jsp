<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>환자 추가</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
	input::-webkit-input-placeholder {
		background-image: background-size: contain;
	    background-position: 1px center;
	    background-repeat: no-repeat;
	    text-align: left;
	    text-indent: 0;
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
					<h2 style="font-weight: bold; font-size: 30px;">환자 추가</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="container">
				<div class="contact-form pt-20"></div>
				<form id="contact-form" action="assets/contact.php" method="post"
					data-toggle="validator"></form>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" name="name" id="name"
							placeholder="이름을 입력해주세요." data-rule="name" data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="species">종</label> <input type="text"
							class="form-control" name="species" id="species"
							placeholder="종을 입력해주세요." data-rule="species"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="age">나이</label> <input type="number" min="1"
							class="form-control" name="age" id="age" placeholder="나이를 입력해주세요."
							data-rule="age" data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="weight">몸무게</label> <input type="number" min="1"
							class="form-control" name="weight" id="weight"
							placeholder="몸무게를 입력해주세요." data-rule="weight"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="etc">특이사항</label> <input type="text"
							class="form-control" name="etc" id="etc"
							placeholder="특이사항을 입력해주세요.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="pic">사진 추가</label> <input type="file" accept="image/*"
							class="form-control" name="pic" id="pic" placeholder="">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="vid">동영상 추가</label> <input type="file"
							accept="video/*" class="form-control" name="vid" id="vid"
							placeholder="">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<p></p>
					<p><br />
					<div class="col-md-4 form-group" style="margin: auto;">
						<input type="button" class="btn btn-secondary"
							name="move_pre_page" id="move_pre_page" value="이전페이지"
							onclick="location.href='/myPageProtector'"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
						<input type="button" class="btn btn-primary"
							name="mypage_protector" id="mypage_protector" value="환자추가"
							onclick="location.href='/myPageProtector'"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
					</div>
				</div>
			</div>
			<p></p>
		</section>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
</html>