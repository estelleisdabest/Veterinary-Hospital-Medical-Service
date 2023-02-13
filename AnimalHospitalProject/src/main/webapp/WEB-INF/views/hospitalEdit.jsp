<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>병원 정보 수정</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
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
					<h2 style="font-weight: bold; font-size: 30px;">병원 정보 수정</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="hospitalName">병원 이름</label>
					<input type="text" class="form-control" name="hospitalName" id="hospitalName"
						data-rule="hospitalName" data-msg="필수입력 항목입니다."
						onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="address">주소</label>
					<div class="wrap">
						<input type="text" class="form-control" readonly="readonly"
							name="address" id="address" placeholder="주소찾기 버튼을 눌러주세요" data-rule="address"
							data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
						&nbsp;
						<input type="button" name="address_kakao" id="address_kakao"
							onclick="sample4_execDaumPostcode()" class="btn btn-primary btn-sm"
							value="주소찾기" style="border-radius: 50px; width: 110px; margin: auto;
							text-align: center; float: right; color: white;">
					</div>
					<div class="validate"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="addressDetail">상세주소</label>
					<input type="text" class="form-control" name="addressDetail" id="addressDetail"
						placeholder="나머지 상세주소를 입력해 주세요" data-rule="addressDetail"
						data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="phone">전화번호</label>
					<input type="text" class="form-control" name="phone" id="phone" placeholder="대표 전화번호를 입력해 주세요"
						data-rule="phone" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="hospital_location_latitude">위도</label>
					<input type="text" class="form-control" name="hospital_location_latitude"
						id="hospital_location_latitude" data-rule="hospital_location_latitude"
						data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate"></div>
				</div>
			</div>		
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="hospital_location_longitude">경도</label>
					<input type="text" class="form-control" name="hospital_location_longitude"
						id="hospital_location_longitude" data-rule="hospital_location_longitude"
						data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate"></div>
				</div>
			</div>		
			<div class="row">
				<p></p>
				<p></p>
				<div class="col-md-4 form-group" style="margin: auto;">
					<input type="button" class="btn btn-secondary" name="move_pre_page"
						id="move_pre_page" value="이전페이지"
						onclick="location='/hosMap'"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; color: white;">
					<input type="button" class="btn btn-primary"
						name="join_membership_protector" id="join_membership_protector"
						value="병원정보 수정" style="border-radius: 50px; width: 130px; margin: auto;
						text-align: center; float: right; color: white;"
						onclick="location='/hospitalMap'">
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document.getElementById("address_kakao")
				.addEventListener("click", function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							var width = 500; //팝업의 너비
							var height = 600; //팝업의 높이
							new daum.Postcode(
									{
										width : width, //생성자에 크기 값을 명시적으로 지정
										height : height,
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("inputKakao").value = data.address; // 주소 넣기
										}
									}).open({
									    left: (window.screen.width / 2) - (width / 2),
									    top: (window.screen.height / 2) - (height / 2)
									});
						});
	}
</script>
</html>