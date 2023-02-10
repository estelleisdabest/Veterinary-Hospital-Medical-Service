<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>의사 정보 수정</title>
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
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<!-- <link -->

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
.wrap {
	display: flex;
}
img {
	width: 200px;
	height: 200px;
	display: block;
	border-radius: 10%;
	object-fit: cover;
	border: 3px solid #F5F5F5;
}

table {
	margin: auto;
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
					<h2 style="font-weight: bold; font-size: 30px;">내 정보</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<div class="contact-form pt-20"></div>
		<br />
		<table>
			<tr>
				<td ><img src="img/doctors/doctors-1.jpg" /></td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<label class="btn btn-primary" for="file1" style="border-radius: 50px; width: 90px">수정</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="file" class="form-control" name="file" id="file1" style="display: none;" accept="image/*">
				</td>				
			</tr>
		</table>

		<br /> <br />

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for=id>ID</label> <input type="text" class="form-control"
					name="id" id="id" value="Jake" data-rule="id" disabled="disabled"
					data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="age">성별</label> <br />
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<input type="radio" name="gender" id="Female" data-rule="gender"
					value="Female" checked> <label for="Female"
					disabled="disabled"> Female</label> <input type="radio"
					name="gender" id="Male" data-rule="gender" value="Male"
					disabled="disabled"> <label for="Male"> Male</label>

				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="name">이름</label> <input type="text" class="form-control"
					name="name" id="name" value="Jake" data-rule="name"
					data-msg="필수입력 항목입니다." disabled="disabled">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="birth">생년월일</label> <input type="date"
					class="form-control" id="birth" value="1980-11-01"
					disabled="disabled" />
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="license">면허취득일</label> <input type="date"
					class="form-control" id="license" value="2008-01-01"/>
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="doctorNumber">의사 등록번호</label> <input type="text"
					class="form-control" name="doctorNumber" id="doctorNumber"
					value="110011" data-rule="doctorNumber" data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="phone">연락처</label> <input type="text"
					class="form-control" name="phone" id="phone" value="010-1111-1111"
					data-rule="phone" data-msg="필수입력 항목입니다." >
				<div class="validate"></div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="email">이메일</label> <input type="text"
					class="form-control" name="email" id="email"
					value="you@example.com" data-rule="email" data-msg="필수입력 항목입니다.">
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
								class="btn btn-primary btn-sm" value="주소찾기"
								style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
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
					placeholder="" data-rule="age"
					data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="email">학력</label>
				<textarea rows="5" cols="55" style="width: 10; height: 10;"
					placeholder="" ></textarea>
				<label for="email">이력</label>
				<textarea rows="5" cols="55" style="width: 10; height: 10;"
					placeholder="" ></textarea>
				<label for="email">인사말</label>
				<textarea rows="5" cols="55" style="width: 10; height: 10;"
					placeholder=""></textarea>
			</div>
		</div>


		<div class="row">
			<p></p>
			<p>
				<br />
			<div class="col-md-4 form-group" style="margin: auto;">
				<input type="button" class="btn btn-secondary" name="move_pre_page"
					id="move_pre_page" value="이전페이지" onclick="location='/doctorInfo'"
					style="border-radius: 50px; width: 110px; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="notice_add"
					id="notice_add" value="수정하기" onclick="location='/doctorInfo'"
					style="border-radius: 50px; width: 110px; text-align: center; float: right; color: white;">
			</div>
			</p>
		</div>
		<section class="inner-page">
			<div class="container">
				<p></p>
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
