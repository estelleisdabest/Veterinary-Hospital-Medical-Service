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
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<style>
input[name="doctor_address"] {
	width: 70%;
	height: 38px;
	border: 1px solid #ced4da;
	padding-left: 5px;
	display: inline;
}

input[name="searching_address"] {
	width: 30%;
	height: 38px;
	display: inline;
	margin-left: -5px;
}

input[name="doctor_phoneNumber"] {
	width: 70%;
	height: 38px;
	border: 1px solid #ced4da;
	padding-left: 5px;
	display: inline;
}

input[name="send_certificationNumber"] {
	width: 30%;
	height: 38px;
	display: inline;
	margin-left: -5px;
}

.doctorFile img {
	width: 1000px;
	height: 200px;
	display: inline;
}

input[name="pictureAdd"] {
	width: 30%;
	height: 38px;

}

.btn btn-secondary {
	text-align: center;
}

.btn btn-primary {
	display: inline-block;
}

.FileBtn label {
	margin-left: 240px;
	margin-top: -210px;
	display: inline-block;
	padding: .5em .75em;
	width: 95px;
	color: #ffffff;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #0d6efd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #0d6efd;
	border-radius: .4em;
}

/*파일선택시 선택된 파일명이 붙는것을 가려준다*/
.FileBtn input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
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
					<h2 style="font-weight: bold; font-size: 30px;">의사전용 회원가입</h2>
					<br />
					<p>
						동물병원에 근무하고 계시는 <b>수의사 전용 회원가입 폼</b>입니다. <br>보호자이신 분들은 <b>뒤로
							가기 -> 보호자에 체크한 상태</b>에서 회원가입하기 버튼을 눌러주세요.
					</p>
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
							<label for="email">아이디</label> <input type="email"
								class="form-control" name="email" id="email"
								placeholder="이메일을 입력해주세요" data-rule="email"
								data-msg="이메일은 필수입력 항목입니다.">
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="email">비밀번호</label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="비밀번호를 입력해주세요." data-rule="password"
								data-msg="비밀번호는 필수입력 항목입니다."
								style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="email">비밀번호 재확인</label> <input type="password"
								class="form-control" name="passwordCheck" id="passwordCheck"
								placeholder="비밀번호를 다시 입력해주세요." data-rule="passwordCheck"
								data-msg="비밀번호 재확인은 필수입력 항목입니다."
								style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="text">이름</label> <input type="text"
								class="form-control" name="doctor_id" id="doctor_id"
								placeholder="이름을 입력해주세요" data-rule="doctor_id"
								data-msg="이름은 필수입력 항목입니다.">
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="text">성별</label><br> <select
								name="doctor_gender" id="doctor_gender" class="form-select">
								<option value="">성별을 선택해주세요.</option>
								<option value="1">여자</option>
								<option value="2">남자</option>
							</select>
							<div class="validate"></div>
						</div>
					</div>
					<div class="row"
						style="margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;">
						<div class="col-md-2 form-group mt-3">
							<label for="text">생년월일</label> <input type="datetime"
								name="doctor_year" class="form-control datepicker"
								id="doctor_year" placeholder="년도">
							<div class="validate"></div>
						</div>
						<div class="col-md-2 form-group mt-3">
							<label for="text"></label> <select name="doctor_month"
								id="doctor_month" class="form-select">
								<option value="">월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<div class="validate"></div>
						</div>
						<div class="col-md-2 mt-3">
							<label for="text"></label> <input type="datetime"
								class="form-control datepicker" name="doctor_date"
								id="doctor_date" placeholder="일">
							<div class="validate"></div>
						</div>
					</div>
					<div class="row"
						style="margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;">
						<div class="col-md-2 form-group mt-3">
							<label for="text">면허취득일</label> 
							<input type="datetime"
								name="doctor_license_year" class="form-control datepicker"
								id="doctor_license_year" placeholder="년도">
							<div class="validate"></div>
						</div>
						<div class="col-md-2 form-group mt-3">
							<label for="text"></label> <select name="doctor_license_month"
								id="doctor_license_month" class="form-select">
								<option value="">월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<div class="validate"></div>
						</div>
						<div class="col-md-2 mt-3">
							<label for="text"></label> <input type="datetime"
								class="form-control datepicker" name="doctor_license_date"
								id="doctor_license_date" placeholder="일">
							<div class="validate"></div>
						</div>
					</div>
						<div class="row">
					        <div class="col-md-4 form-group mt-3">
					          <div class="validate"></div>
					        </div>
					        <div class="col-md-4 form-group mt-3">
					           <label for="text">의사 등록번호</label>
					          <input type="int" class="form-control" name="doctor_license_seq" id="doctor_license_seq" placeholder="의사 등록번호를 입력해주세요." data-rule="text" required="required">
					          <div class="validate"></div>
					        </div>
				        </div>
					<div class="row">
				        <div class="col-md-4 form-group mt-3">
				          <div class="validate"></div>
				        </div>
				        <div class="col-md-6 form-group mt-3">
				           <label for="email">주소</label><br>
				          <input type="text" class="form-control" name="doctor_address" id="doctor_address" placeholder="주소를 입력해주세요." data-rule="text">
				          &nbsp;&nbsp;<input type="button" class="btn btn-primary" name="searching_address" value="주소검색" style="width: 140px; text-align: center;">
				        </div>
			        </div>
			        <div class="row">
				        <div class="col-md-4 form-group mt-3">
				          <div class="validate"></div>
				        </div>
				        <div class="col-md-6 form-group mt-3">
				           <label for="email">핸드폰번호</label><br>
							<input type="text" class="form-control" name="doctor_phoneNumber" id="doctor_phoneNumber" placeholder="전화번호를 입력해주세요." data-rule="text">
					         &nbsp;&nbsp;<input type="button" class="btn btn-primary" name="send_certificationNumber" value="인증번호 받기" style="width: 140px; text-align: center;">
					        </div>
				        </div>
						<div class="row">
					        <div class="col-md-4 form-group mt-3">
					          <div class="validate"></div>
					        </div>
					        <div class="col-md-4 form-group mt-3">
					           <label for="email">인증번호 확인</label>
					          <input type="int" class="form-control" name="confirm_certificationNumber" id="confirm_certificationNumber" placeholder="인증번호를 입력해주세요." data-rule="text" required="required">
					          <div class="validate"></div>
					        </div>
				        </div>
				        <div class="row">
					        <div class="col-md-4 form-group mt-3">
					          <div class="validate"></div>
					        </div>
					        <div class="col-md-4 form-group mt-3">
					           <label for="email">이메일</label>
					          <input type="text" class="form-control" name="confirm_emailUser" id="confirm_emailUser" placeholder="you@example.com" data-rule="text" required="required">
					          <div class="validate"></div>
					        </div>
				        </div>
				        <br />
				    <div class="col-md-2 form-group mt-3" style="margin-left: 34%;">
				    	<div class="doctorFile" style="width: 200px; height: 200px; background-color: #ddd">
							<img alt="의사" src="img/doctors/doctors-1.jpg"
								style="width: 200px; height: 200px;"> <br />
						<div class="FileBtn">
							<label for="myFileUp">사진추가</label> 
							<input type="file" id="myFileUp">
						</div>
					</div>
					      <br />
					</div>
					<div class="col-md-4 form-group mt-3" style="margin: auto;">
						<label for="text">인사말</label>
						<textarea class="form-control" name="message" rows="3" placeholder="인사말을 입력해주세요."></textarea>
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3"style="margin: auto;">
						<label for="text">이력</label>
						<textarea class="form-control" name="message" rows="3"
							placeholder="이력을 입력해주세요."></textarea>
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3"style="margin: auto;">
						<label for="text">학력</label>
						<textarea class="form-control" name="message" rows="3"
							placeholder="학력을 입력해주세요."></textarea>
						<div class="validate"></div>
					</div>
					<br />
					 <div class="row">
			            <div class="col-md-12 form-group" style="text-align: center;">
						      <a href="/roleCheck" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" >이전페이지</a>
						      <a href="/" class="btn btn-primary" name="join_membership_doctor" id="join_membership_doctor">회원가입</a>
			              <div class="validate"></div>
			            </div>
					</div>
		</section>
		<!-- End Appointment Section -->
	</main>
	<!-- End #main -->

	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>

</html>