<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>의사전용 회원가입</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<script type="text/javascript" src="js/jsp/doctorMemberJoin.js"></script>
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
							<label for="email">아이디</label> 
							<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력해주세요." data-rule="email" data-msg="이메일은 필수입력 항목입니다.">
							<div class="validate" id="email_val"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="email">비밀번호</label> 
							<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요." data-rule="password" data-msg="비밀번호는 필수입력 항목입니다." style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
							<div class="validate" id="password_val"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="email">비밀번호 재확인</label> 
							<input type="password" class="form-control" name="passwordCheck" id="passwordCheck" placeholder="비밀번호를 다시 입력해주세요." data-rule="passwordCheck" data-msg="비밀번호 재확인은 필수입력 항목입니다." style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
							<div class="validate" id="passwordCheck_val"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="text">이름</label> 
							<input type="text" class="form-control" name="doctor_id" id="doctor_id" placeholder="이름을 입력해주세요." data-rule="doctor_id" data-msg="이름은 필수입력 항목입니다.">
							<div class="validate" id="doctor_id_val"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="text">성별</label><br> 
							<select name="doctor_gender" id="doctor_gender" class="form-select">
								<option value="">성별을 선택해주세요.</option>
								<option value="1">여자</option>
								<option value="2">남자</option>
							</select>
							<div class="validate" id="doctor_gender_val"></div>
						</div>
					</div>
					<div class="row"
						style="margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;">
						<div class="col-md-2 form-group mt-3">
							<label for="text">생년월일</label> 
							<input type="datetime" name="doctor_year" class="form-control datepicker" id="doctor_year" placeholder="년도">
							<div class="validate" id="doctor_year_val"></div>
						</div>
						<div class="col-md-2 form-group mt-3">
							<label for="text"></label> 
							<select name="doctor_month" id="doctor_month" class="form-select">
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
							<div class="validate" id="doctor_month_val"></div>
						</div>
						<div class="col-md-2 mt-3">
							<label for="text"></label> 
							<input type="datetime" class="form-control datepicker" name="doctor_date" id="doctor_date" placeholder="일">
							<div class="validate" id="doctor_date_val"></div>
						</div>
					</div>
					<div class="row"
						style="margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;">
						<div class="col-md-2 form-group mt-3">
							<label for="text">면허취득일</label> 
							<input type="datetime" name="doctor_license_year" class="form-control datepicker" id="doctor_license_year" placeholder="년도">
							<div class="validate" id="doctor_license_year_val"></div>
						</div>
						<div class="col-md-2 form-group mt-3">
							<label for="text"></label> 
							<select name="doctor_license_month" id="doctor_license_month" class="form-select">
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
							<div class="validate" id="doctor_license_month_val"></div>
						</div>
						<div class="col-md-2 mt-3">
							<label for="text"></label> 
							<input type="datetime" class="form-control datepicker" name="doctor_license_date" id="doctor_license_date" placeholder="일">
							<div class="validate" id="doctor_license_date_val"></div>
						</div>
					</div>
						<div class="row">
					        <div class="col-md-4 form-group mt-3">
					          <div class="validate"></div>
					        </div>
					        <div class="col-md-4 form-group mt-3">
					           <label for="number">의사 등록번호</label>
					          <input type="number" class="form-control" name="doctor_license_seq" id="doctor_license_seq" placeholder="의사 등록번호를 입력해주세요." data-rule="text" required="required">
					          <div class="validate" id="doctor_license_seq_val"></div>
					        </div>
				        </div>
					<div class="row">
				        <div class="col-md-4 form-group mt-3">
				          <div class="validate"></div>
				        </div>
				        <div class="col-md-6 form-group mt-3">
				           <label for="address">주소</label><br>
				          <input type="text" class="form-control" name="doctor_address" id="doctor_address" placeholder="주소를 입력해주세요." data-rule="text">
				          &nbsp;&nbsp;
				          <input type="button" class="btn btn-primary" id="searching_address" name="searching_address" value="주소검색" style="width: 140px; text-align: center; border-radius: 50px;">
				          <div class="validate" id="doctor_address_val"></div>
				        </div>
			        </div>
			        <div class="row">
				        <div class="col-md-4 form-group mt-3">
				          <div class="validate"></div>
				        </div>
				        <div class="col-md-6 form-group mt-3">
				           <label for="phone number">핸드폰번호</label><br>
							<input type="text" class="form-control" name="doctor_phoneNumber" id="doctor_phoneNumber" placeholder="전화번호를 입력해주세요." data-rule="text">
					         &nbsp;&nbsp;
					        <input type="button" class="btn btn-primary" id="send_certificationNumber" name="send_certificationNumber" value="인증번호 받기" style="width: 140px; text-align: center; border-radius: 50px;">
					         <div class="validate" id="doctor_phoneNumber_val"></div>
					        </div>
				        </div>
						<div class="row">
					        <div class="col-md-4 form-group mt-3">
					          <div class="validate" ></div>
					        </div>
					        <div class="col-md-4 form-group mt-3">
					           <label for="number">인증번호 확인</label>
					          <input type="number" class="form-control" name="confirm_certificationNumber" id="confirm_certificationNumber" placeholder="인증번호를 입력해주세요." data-rule="text" required="required">
					          <div class="validate" id="confirm_certificationNumber_val"></div>
					        </div>
				        </div>
				        <br />
				    <div class="col-md-2 form-group mt-3" style="margin-left: 34%;">
				    	<div class="doctorFile" style="width: 200px; height: 200px; background-color: #ddd">
							<img alt="의사" src="img/doctors/doctors-1.jpg" style="width: 200px; height: 200px;"> <br />
						<div class="FileBtn">
							<label for="myFileUp" style="border-radius: 50px;">사진추가</label> 
							<input type="file" id="myFileUp">
						</div>
					</div>
					      <br />
					</div>
					<div class="col-md-4 form-group mt-3" style="margin: auto;">
						<label for="text">인사말</label>
						<textarea class="form-control" name="message" id="message1" rows="3" placeholder="인사말을 입력해주세요." style="resize: none;"></textarea>
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3"style="margin: auto;">
						<label for="text">이력</label>
						<textarea class="form-control" name="message" id="message2" rows="3" placeholder="이력을 입력해주세요." style="resize: none;"></textarea>
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3"style="margin: auto; ">
						<label for="text">학력</label>
						<textarea class="form-control" name="message" id="message3" rows="3" placeholder="학력을 입력해주세요." style="resize: none;"></textarea>
						<div class="validate"></div>
					</div>
					<br />
					<br>
					 <div class="row">
			            <div class="col-md-4 form-group" style="margin: auto;">
						      <a href="/roleCheck" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" style="border-radius:50px;width: 110px;text-align: center;color: white;" >이전페이지</a>
						      <a class="btn btn-primary" name="join_membership_doctor" id="join_membership_doctor" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white;">회원가입</a>
			              <div class="validate"></div>
			            </div>
					</div>
					</div>
		</section>
		<br>
		<!-- End Appointment Section -->
	</main>
	<!-- End #main -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#join_membership_doctor').on('click', function() {
          var email = $('#email').val();
          var password = $('#password').val();
          var passwordCheck = $('#passwordCheck').val();
          var doctor_id = $('#doctor_id').val();
          var doctor_gender = $('#doctor_gender').val();
          var doctor_year = $('#doctor_year').val();
          var doctorYearRegEx = /^[0-9]{4}$/;
          var doctor_month = $('#doctor_month').val();
          var doctor_date = $('#doctor_date').val();
          var doctorDateRegEx = /^[0-9]{1,2}$/;
          var doctor_license_year = $('#doctor_license_year').val();
          var doctorLicenseYearRegEx = /^[0-9]{4}$/;
          var doctor_license_month = $('#doctor_license_month').val();
          var doctor_license_date = $('#doctor_license_date').val();
          var doctorLicenseDateRegEx = /^[0-9]{1,2}$/;
          var doctor_license_seq = $('#doctor_license_seq').val();
          var doctorLicenseSeqRegEx = /^[0-9]{4,6}$/;
          var doctor_address = $('#doctor_address').val();
          var doctor_phoneNumber = $('#doctor_phoneNumber').val();
          var confirm_certificationNumber = $('#confirm_certificationNumber').val();
          if(email.length==0||email.trim().length==0||email.includes(' ')){
               $('#email').focus();
               $('#email').attr('style','border-color: #dc3545;');
           	   $('#email').val('');
           	   $('#email_val').html('<div id="email_warning"><b style="color: red;">올바른 이메일을 입력해주세요.</b></div>');
          }else if(password.length==0||password.trim().length==0||password.includes(' ')){
               $('#password').focus();
               $('#password').attr('style','border-color: #dc3545;');
           	   $('#password').val('');
           	   $('#password_val').html('<div id="password_warning"><b style="color: red;">비밀번호를 입력해주세요.</b></div>');
           }else if(passwordCheck!=password){
        	   $('#passwordCheck').focus();
               $('#passwordCheck').attr('style','border-color: #dc3545;');
           	   $('#passwordCheck').val('');
           	   $('#passwordCheck_val').html('<div id="passwordCheck_warning"><b style="color: red;">같은 비밀번호를 입력해주세요.</b></div>');
           }else if(doctor_id==null||doctor_id.trim().length==0||doctor_id.includes(' ')){
        	   $('#doctor_id').focus();
               $('#doctor_id').attr('style','border-color: #dc3545;');
           	   $('#doctor_id').val('');
           	   $('#doctor_id_val').html('<div id="doctor_id_warning"><b style="color: red;">이름을 입력해주세요.</b></div>');
           }else if(doctor_gender==''){
        	   $('#doctor_gender').focus();
               $('#doctor_gender').attr('style','border-color: #dc3545;');
           	   $('#doctor_gender').val('');
           	   $('#doctor_gender_val').html('<div id="doctor_gender_warning"><b style="color: red;">성별을 선택해주세요.</b></div>');
           }else if(!doctorYearRegEx.test(doctor_year)){
        	   $('#doctor_year').focus();
               $('#doctor_year').attr('style','border-color: #dc3545;');
           	   $('#doctor_year').val('');
           	   $('#doctor_year_val').html('<div id="doctor_year_warning"><b style="color: red; font-size:6pt;">년도를 입력해주세요.</b></div>');
           }else if(doctor_month==''){
        	   $('#doctor_month').focus();
               $('#doctor_month').attr('style','border-color: #dc3545;');
           	   $('#doctor_month_val').html('<div id="doctor_month_warning"><b style="color: red; font-size:6pt;">월을 입력해주세요.</b></div>');
           }else if(!doctorDateRegEx.test(doctor_date)){
        	   $('#doctor_date').focus();
               $('#doctor_date').attr('style','border-color: #dc3545;');
           	   $('#doctor_date_val').html('<div id="doctor_date_warning"><b style="color: red; font-size:6pt;">날짜를 입력해주세요.</b></div>');
           }else if(doctor_license_year==''||doctor_license_year.trim().length==0||doctor_license_year.includes(' ')){
        	   $('#doctor_license_year').focus();
               $('#doctor_license_year').attr('style','border-color: #dc3545;');
           	   $('#doctor_license_year').val('');
           	   $('#doctor_license_year_val').html('<div id="doctor_license_year_warning"><b style="color: red; font-size:6pt;">년도를 입력해주세요.</b></div>');
           }else if(doctor_license_month==''){
        	   $('#doctor_license_month').focus();
               $('#doctor_license_month').attr('style','border-color: #dc3545;');
           	   $('#doctor_license_month').val('');
           	   $('#doctor_license_month_val').html('<div id="doctor_license_month_warning"><b style="color: red; font-size:6pt;">월을 입력해주세요.</b></div>');
           }else if(doctor_license_date==''||doctor_license_date.trim().length==0||doctor_license_date.includes(' ')){
        	   $('#doctor_license_date').focus();
               $('#doctor_license_date').attr('style','border-color: #dc3545;');
           	   $('#doctor_license_date').val('');
           	   $('#doctor_license_date_val').html('<div id="doctor_license_date_warning"><b style="color: red; font-size:6pt;">날짜를 입력해주세요.</b></div>');
           }else if(!doctorLicenseSeqRegEx.test(doctor_license_seq)){
        	   $('#doctor_license_seq').focus();
               $('#doctor_license_seq').attr('style','border-color: #dc3545;');
           	   $('#doctor_license_seq').val('');
           	   $('#doctor_license_seq_val').html('<div id="doctor_license_seq_warning"><b style="color: red;">올바른 등록번호를 입력해주세요.</b></div>');
           }else if(doctor_address==null||doctor_address.trim().length==0){
        	   $('#doctor_address').focus();
               $('#doctor_address').attr('style','border-color: #dc3545;');
           	   $('#doctor_address').val('');
           	   $('#doctor_address_val').html('<div id="doctor_address_warning"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else if(doctor_phoneNumber==null||doctor_phoneNumber.trim().length==0||doctor_phoneNumber.includes(' ')){
        	   $('#doctor_phoneNumber').focus();
               $('#doctor_phoneNumber').attr('style','border-color: #dc3545;');
           	   $('#doctor_phoneNumber').val('');
           	   $('#doctor_phoneNumber_val').html('<div id="doctor_phoneNumber_warning"><b style="color: red;">올바른 핸드폰 번호를 입력해주세요.</b></div>');
           }else if(confirm_certificationNumber==null||confirm_certificationNumber.trim().length==0||confirm_certificationNumber.includes(' ')){
        	   $('#confirm_certificationNumber').focus();
               $('#confirm_certificationNumber').attr('style','border-color: #dc3545;');
           	   $('#confirm_certificationNumber').val('');
           	   $('#confirm_certificationNumber_val').html('<div id="confirm_certificationNumber_warning"><b style="color: red;">올바른 인증번호를 입력해주세요.</b></div>');
           }else{
        		var result = window.confirm('작성한 내용대로 가입하시겠습니까?');
      			if(result) {
      				alert('정상적으로 처리되었습니다.');
      				location.href='/';
      			}
           }
       });
 });
$('#email').on('input',function(){
	if($('#email').val() !=''){
		$('#email').attr('style','border-color : #ced4da;');
		$('#email_warning').remove();
	}
})
$('#password').on('input',function(){
	if($('#password').val() !=''){
		$('#password').attr('style','border-color : #ced4da;');
		$('#password_warning').remove();
	}
})
$('#passwordCheck').on('input',function(){
	if($('#passwordCheck').val() !=''){
		$('#passwordCheck').attr('style','border-color : #ced4da;');
		$('#passwordCheck_warning').remove();
	}
})
$('#doctor_id').on('input',function(){
	if($('#doctor_id').val() !=''){
		$('#doctor_id').attr('style','border-color : #ced4da;');
		$('#doctor_id_warning').remove();
	}
})
$('#doctor_gender').on('input',function(){
	if($('#doctor_gender').val() !=''){
		$('#doctor_gender').attr('style','border-color : #ced4da;');
		$('#doctor_gender_warning').remove();
	}
}) 
$('#doctor_year').on('input',function(){
	if($('#doctor_year').val() !=''){
		$('#doctor_year').attr('style','border-color : #ced4da;');
		$('#doctor_year_warning').remove();
	}
})
$('#doctor_month').on('input',function(){
	if($('#doctor_month').val() !=null){
		$('#doctor_month').attr('style','border-color : #ced4da;');
		$('#doctor_month_warning').remove();
	}
})
$('#doctor_date').on('input',function(){
	if($('#doctor_date').val() !=''){
		$('#doctor_date').attr('style','border-color : #ced4da;');
		$('#doctor_date_warning').remove();
	}
})
$('#doctor_license_year').on('input',function(){
	if($('#doctor_license_year').val() !=''){
		$('#doctor_license_year').attr('style','border-color : #ced4da;');
		$('#doctor_license_year_warning').remove();
	}
})
$('#doctor_license_month').on('input',function(){
	if($('#doctor_license_month').val() !=null){
		$('#doctor_license_month').attr('style','border-color : #ced4da;');
		$('#doctor_license_month_warning').remove();
	}
})
$('#doctor_license_date').on('input',function(){
	if($('#doctor_license_date').val() !=''){
		$('#doctor_license_date').attr('style','border-color : #ced4da;');
		$('#doctor_license_date_warning').remove();
	}
})
$('#doctor_license_seq').on('input',function(){
	if($('#doctor_license_seq').val() !=''){
		$('#doctor_license_seq').attr('style','border-color : #ced4da;');
		$('#doctor_license_seq_warning').remove();
	}
})
$('#doctor_phoneNumber').on('input',function(){
	if($('#doctor_phoneNumber').val() !=''){
		$('#doctor_phoneNumber').attr('style','border-color : #ced4da;');
		$('#doctor_phoneNumber_warning').remove();
	}
}) 
$('#confirm_certificationNumber').on('input',function(){
	if($('#confirm_certificationNumber').val() !=''){
		$('#confirm_certificationNumber').attr('style','border-color : #ced4da;');
		$('#confirm_certificationNumber_warning').remove();
	}
}) 
</script>
</html>