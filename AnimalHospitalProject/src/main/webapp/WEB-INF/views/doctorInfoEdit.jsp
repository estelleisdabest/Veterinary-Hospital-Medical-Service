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

textarea {
	width: 100%;
	height: 6.25em;
	resize: none;
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
					<br />
					<p style="font-size: 11pt;">회원정보를 수정할 수 있습니다.</p>
					<p style="font-size: 11pt; color: red; display: inline;">ID,
						성별, 이름, 생년월일</p>
					<p style="font-size: 11pt; display: inline;">은 수정할 수 없습니다.</p>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<div class="contact-form pt-20"></div>
		<br />
		<table>
			<tr>
				<td><img src="img/doctors/doctors-1.jpg" /></td>
			</tr>
			<tr>
				<td style="text-align: center;"><label class="btn btn-primary"
						for="file1" style="border-radius: 50px; width: 90px">수정</label></td>
			</tr>
			<tr>
				<td><input type="file" class="form-control" name="file"
						id="file1" style="display: none;" accept="image/*"></td>
			</tr>
		</table>
		<br /> <br />
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for=id>ID</label>
				<input type="text" class="form-control" name="id" id="id"
					value="Jake" data-rule="id" disabled="disabled"
					data-msg="필수입력 항목입니다.">
				<div class="validate" id="id_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for=password>비밀번호</label>
				<input type="password" class="form-control" name="password"
					id="password" value="" data-rule="password"
					data-msg="비밀번호는 필수입력 항목입니다.">

				<div class="validate" id="password_val"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="age">성별</label>
				<br />
				<input type="radio" name="gender" id="Female" data-rule="gender"
					value="Female" checked>
				<label for="Female"> 여자</label>
				<input type="radio" name="gender" id="Male" data-rule="gender"
					value="Male" disabled="disabled">
				<label for="Male"> 남자</label>

				<div class="validate" id="gender_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="name">이름</label>
				<input type="text" class="form-control" name="name" id="name"
					value="Jake" data-rule="name" data-msg="필수입력 항목입니다."
					disabled="disabled">
				<div class="validate" id="name_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="birth">생년월일</label>
				<input type="date" class="form-control" id="birth"
					value="1980-11-01" disabled="disabled" />
				<div class="validate" id="birth_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="license">면허취득일</label>
				<input type="date" class="form-control" id="license"
					value="2008-01-01" data-rule="license"
					data-msg="면허 취득일은 필수입력 항목입니다." />
				<div class="validate" id="license_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="doctorNumber">의사 등록번호</label>
				<input type="text" class="form-control" name="doctorNumber"
					id="doctorNumber" value="110011" data-rule="doctorNumber"
					data-msg="의사 등록번호는 필수입력 항목입니다.">
				<div class="validate" id="doctorNumber_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="phone">연락처</label>
				<input type="text" class="form-control" name="phone" id="phone"
					value="" data-rule="phone" placeholder="'-'을 넣어서 입력해주세요" data-msg="연락처는 필수입력 항목입니다.">
				<div class="validate" id="phone_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="email">이메일</label>
				<input type="text" class="form-control" name="email" id="email"
					value="you@example.com" data-rule="email"
					data-msg="이메일은 필수입력 항목입니다.">
				<div class="validate" id="email_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="inputKakao">주소</label>
				<div class="wrap">
					<input type="text" class="form-control" readonly="readonly"
						id="inputKakao" placeholder="주소찾기 버튼을 눌러주세요"
						oninput="myFunction()">
					&nbsp;
					<input type="button" name="address_kakao" id="address_kakao"
						onclick="sample4_execDaumPostcode()"
						class="btn btn-primary btn-sm" value="주소찾기"
						style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
				</div>
				<div class="validate" id="kakao_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="address">상세주소</label>
				<input type="text" class="form-control" name="address" id="address"
					placeholder="" data-rule="age" data-msg="필수입력 항목입니다.">
				<div class="validate" id="address_val"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 form-group mt-3">
				<div class="validate"></div>
			</div>
			<div class="col-md-4 form-group mt-3">
				<label for="education">학력</label>
				<br />
				<textarea rows="5" cols="55" placeholder="" id="education"
					style="border-color: #ced4da;"></textarea>
				<br />
				<label for="record">이력</label>
				<br />
				<textarea rows="5" cols="55" placeholder="" id="record"
					style="border-color: #ced4da;"></textarea>
				<br />
				<label for="greetings">인사말</label>
				<br />
				<textarea rows="5" cols="55" placeholder="" id="greetings"
					style="border-color: #ced4da;"></textarea>
				<br />
				<div class="validate"></div>
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
				<input type="button" class="btn btn-primary" name="doctorEditOk"
					id="doctorEditOk" value="수정하기"
					style="border-radius: 50px; width: 110px; text-align: center; float: right; color: white;">
			</div>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
													$('#inputKakao').attr('style','border-color : #ced4da;');
													$('#kakao_warning').remove();
										}
									}).open({
									    left: (window.screen.width / 2) - (width / 2),
									    top: (window.screen.height / 2) - (height / 2)
									});
						});
	}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#doctorEditOk').on('click', function() {
          var password = $('#password').val();
          var license = $('#license').val();
          var doctorNumber = $('#doctorNumber').val();
          var doctorNumberRegEx = /^[0-9]{4,6}$/;
          var phone = $('#phone').val();
          var phoneRegEx = /^\d{3}-\d{3,4}-\d{4}$/;
          var email = $('#email').val();
          var emailRegEx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
          var inputKakao = $('#inputKakao').val();
          var address = $('#address').val();
          if(password.length==0||password.trim().length==0||password.includes(' ')){
               $('#password').focus();
               $('#password').attr('style','border-color: #dc3545;');
           	   $('#password').val('');
           	   $('#password_val').html('<div id="password_warning"><b style="color: red;">올바른 비밀번호를 입력해주세요.</b></div>');
          }else if(license==null){
               $('#license').focus();
               $('#license').attr('style','border-color: #dc3545;');
           	   $('#license_val').html('<div id="license_warning"><b style="color: red;">면허취득일을 입력해주세요.</b></div>');
           }else if(!doctorNumberRegEx.test(doctorNumber)){
        	   $('#doctorNumber').focus();
               $('#doctorNumber').attr('style','border-color: #dc3545;');
           	   $('#doctorNumber_val').html('<div id="doctorNumber_warning"><b style="color: red;">올바른 의사 등록번호를 입력해주세요.</b></div>');
           }else if(!phoneRegEx.test(phone)){
        	   $('#phone').focus();
               $('#phone').attr('style','border-color: #dc3545;');
           	   $('#phone_val').html('<div id="phone_warning"><b style="color: red;">핸드폰번호를 입력해주세요.</b></div>');
           }else if(!emailRegEx.test(email)){
        	   $('#email').focus();
               $('#email').attr('style','border-color: #dc3545;');
           	   $('#email_val').html('<div id="email_warning"><b style="color: red;">올바른 이메일을 입력해주세요.</b></div>');
           }else if(inputKakao==null||inputKakao.trim().length==0){
        	   $('#inputKakao').focus();
               $('#inputKakao').attr('style','border-color: #dc3545;');
           	   $('#inputKakao').val('');
           	   $('#kakao_val').html('<div id="kakao_warning"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else if(address==null||address.trim().length==0){
        	   $('#address').focus();
               $('#address').attr('style','border-color: #dc3545;');
           	   $('#address_val').html('<div id="address_warning"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else{
        		var result = window.confirm('작성한 내용을 수정하시겠습니까?');
      			if(result) {
      				alert('정상적으로 처리되었습니다.');
      				location.href='/doctorInfo';
      			}
           }
       });
 });
$('#password').on('input',function(){
	if($('#password').val() !=''){
		$('#password').attr('style','border-color : #ced4da;');
		$('#password_warning').remove();
	}
})
$('#license').on('input',function(){
	if($('#license').val() !=''){
		$('#license').attr('style','border-color : #ced4da;');
		$('#license_warning').remove();
	}
})
$('#doctorNumber').on('input',function(){
	if($('#doctorNumber').val() !=''){
		$('#doctorNumber').attr('style','border-color : #ced4da;');
		$('#doctorNumber_warning').remove();
	}
})
$('#phone').on('input',function(){
	if($('#phone').val() !=''){
		$('#phone').attr('style','border-color : #ced4da;');
		$('#phone_warning').remove();
	}
})
$('#email').on('input',function(){
	if($('#email').val() !=''){
		$('#email').attr('style','border-color : #ced4da;');
		$('#email_warning').remove();
	}
})
$('#address').on('input',function(){
	if($('#address').val() !=''){
		$('#address').attr('style','border-color : #ced4da;');
		$('#address_warning').remove();
	}
})
</script>
</html>
