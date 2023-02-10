<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>환자 정보 수정(보호자 용)</title>
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
input::-webkit-input-placeholder {
	background-image: background-size: contain;
	background-position: 1px center;
	background-repeat: no-repeat;
	text-align: left;
	text-indent: 0;
}

select option[value=""][disabled] {
	display: none;
}

img {
	width: 200px;
	height: 200px;
	display: block;
	border-radius: 10%;
	object-fit: cover;
	border: 3px solid #F5F5F5;
}

video {
	width: 300px;
	height: 200px;
	margin: auto;
	border-radius: 10%;
	object-fit: cover;
	border: 3px solid #F5F5F5;
}

.no_content {
	width: 300px;
	height: 200px;
	margin: auto;
	object-fit: cover;
	border: 3px solid #F5F5F5;
	text-align: center;
	font-size: 9pt;
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
					<h2 style="font-weight: bold; font-size: 30px;">환자 정보 수정</h2>
					<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
		<br><br>
		<%-- 사진 및 동영상 모두 등록되어 있을 경우--%>
		<div class="contact-form pt-20"></div>
		<br />
		<table>
			<tr>
				<td ><img src="img/dog.jpg" /></td>
				<td><video controls="controls">
						<source src="videos/dog.mp4" type="video/mp4">
					</video></td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<label class="btn btn-primary" for="file1" style="border-radius: 50px; width: 90px">수정</label>
				</td>
				<td style="text-align: center;">
					<label class="btn btn-primary" for="file2" style="border-radius: 50px; width: 90px">수정</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="file" class="form-control" name="file" id="file1" style="display: none;" accept="image/*">
				</td>
				<td>
					<input type="file" class="form-control" name="file" id="file2" style="display: none;"  accept="video/*">
				</td>				
			</tr>
		</table>
		
		<br><br>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="name">이름</label>
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<input type="text" class="form-control" name="name" id="name"
					value="두둥" data-rule="name" data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="species">종</label>
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<input type="text" class="form-control" name="species" id="species"
					value="말티즈" data-rule="species" data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="size">크기</label>
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<select class="form-control" id="size" name="size">
					<option value="" disabled selected>소형</option>
					<option value="소형">소형</option>
					<option value="중형">중형</option>
					<option value="대형">대형</option>
					<option value="기타">기타</option>
				</select>
				<%-- 상단의 select box에서 '기타'을 선택하면 나타날 인풋박스 --%>
				<input type="text" class="form-control" id="sizeDirect" name="size"
					id="size" placeholder="직접입력" data-rule="size"
					data-msg="필수입력 항목입니다." />
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="age">나이</label>
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<input type="number" min="1" class="form-control" name="age"
					id="age" value="3" data-rule="age" data-msg="필수입력 항목입니다.">
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
					value="Female" checked> <label for="Female"> Female</label>
				<input type="radio" name="gender" id="Male" data-rule="gender"
					value="Male"> <label for="Male"> Male</label>

				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="weight">몸무게</label>
				<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
				<input type="number" min="1" class="form-control" name="weight"
					id="weight" value="5" data-rule="weight" data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="visitdate">내원일</label>
				<%-- 진료날짜를 띄움 --%>
				<input type="date" class="form-control" id="visitDate"
					value="2023-01-30" />
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="nextVisitDate">다음내원 예정일</label> <input type="date"
					class="form-control" id="nextVisitDate" />
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="symptom">증상</label>
				<%-- 의사가 진단한 내용 띄움 --%>
				<input type="text" class="form-control" name="symptom" id="symptom"
					value="신장질환" data-rule="species" data-msg="필수입력 항목입니다.">
				<div class="validate"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="etc">특이사항</label> <input type="text"
					class="form-control" name="etc" id="etc" placeholder="특이사항을 입력해주세요">
				<div class="validate"></div>
			</div>
		</div>
		
		<div class="row">
			<p></p><p></p>
			<br />
			<div class="col-md-4 form-group" style="margin: auto;">
				<input type="button" class="btn btn-secondary" name="move_pre_page"
					id="move_pre_page" value="이전페이지" onclick="location='/myPageProtecto'"
					style="border-radius: 50px; width: 110px; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="notice_add" id="notice_add"
					value="확인" onclick="location='/myPageProtecto'" style="border-radius: 50px;
					width: 110px; text-align: center; float: right; color: white;">
               </div>
            </div>
		
			<div class="container">
			
			</div>
		</section>

	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>
