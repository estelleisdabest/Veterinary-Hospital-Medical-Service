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
<style type="text/css">
.wrap {
	display: flex;
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
					<h2 style="font-weight: bold; font-size: 30px;">내 정보 수정</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" name="name" id="name" readonly="readonly">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="id">ID</label> <input type="text" class="form-control"
							name="text" id="text" readonly="readonly" data-rule="id"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" name="password" id="password"
							placeholder="수정할 비밀번호를 입력해주세요" data-rule="species"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="">생년월일</label> <input type="text" class="form-control"
							name="name" id="name" readonly="readonly">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="phone">전화번호</label> <input type="text"
							class="form-control" name="phone" id="phone"
							placeholder="수정할 전화번호를 입력해주세요" data-rule="age"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="phone">주소</label>
						<div class="wrap">
							<input type="text" class="form-control" readonly="readonly"
								id="inputKakao" placeholder="주소찾기 버튼을 눌러주세요"> &nbsp;<input
								type="button" name="address_kakao" id="address_kakao"
								onclick="sample4_execDaumPostcode()"
								class="btn btn-primary btn-sm" value="주소찾기">
						</div>
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="address">상세주소</label> <input type="text"
							class="form-control" name="address" id="address"
							placeholder="수정할 상세주소를 입력해주세요" data-rule="age"
							data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>


				<div class="row">
					<p></p>
					<p>
					<div class="col-md-4 form-group" style="margin: auto;">
						<input type="button" class="btn btn-secondary"
							name="move_pre_page" id="move_pre_page" value="이전페이지"
							onclick="location='/myPageProtector'"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
						<input type="button" class="btn btn-primary"
							name="join_membership_protector" id="join_membership_protector"
							value="수정하기" onclick="location='/myPageProtector'"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
						<%-- JS alert로 '수정완료했습니다' 띄운 후 myPageProtector에 이동 --%>
					</div>
				</div>

			</div>
		</section>

	</main>
	<!-- End #main -->


	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("inputKakao").value = data.address; // 주소 넣기
										}
									}).open();
						});
	}
</script>
</html>