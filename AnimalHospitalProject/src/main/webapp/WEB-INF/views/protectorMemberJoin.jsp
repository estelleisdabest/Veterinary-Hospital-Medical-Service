<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>보호자 전용 회원가입</title>
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
<link href="css/style.css" rel="stylesheet">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
	input[name="protector_address"] {
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
	input[name="protector_phoneNumber"] {
		width: 70%;
		height: 38px;
		border: 1px solid #ced4da;
		padding-left: 5px;
		display: inline;
	}
	input[name="email"] {
		width: 65%;
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
	input[name="send_certificationEmail"] {
	width: 30%;
	height: 38px;
	display: inline;
	margin-left: -5px;
	}
	.btn btn-secondary {
		text-align: center;
	}
	.btn btn-primary {
		display: inline-block;
	}
</style>
</head>
<body>
	<main id="main">
		<%@ include file="/WEB-INF/includes/header.jsp"%>
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">보호자 전용 회원가입</h2>
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
					<div class="col-md-6 form-group mt-3">
						<label for="email">아이디</label> <br />
						<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력해주세요." data-rule="email" data-msg="아이디는 필수입력 항목입니다.">
					         &nbsp;&nbsp;
					        <input type="button" class="btn btn-primary" id="send_certificationEmail" name="send_certificationEmail" value="이메일 인증" style="width: 140px; text-align: center; border-radius: 50px;">
					         <div class="validate" id="doctor_email_val"></div>
					        </div>
				        </div>
					<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="email">이메일 본인확인</label> 
						<input type="text" class="form-control" name="confirm_emailUser" id="confirm_emailUser" placeholder="본인확인 번호를 입력해주세요." data-rule="text" required="required">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="email">비밀번호</label> 
						<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요." data-rule="password" style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="email">비밀번호 재확인</label> 
						<input type="password" class="form-control" name="password_reconfirm" id="password_reconfirm" placeholder="비밀번호를 재입력해주세요." data-rule="password" style="background-image: url(img/baseline_lock_black_18.png); background-position: right center; background-size: contain; background-repeat: no-repeat; text-align: left; text-indent: 0;">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="text">이름</label> 
						<input type="text" class="form-control" name="protector_name" id="protector_name" placeholder="이름을 입력해주세요." data-rule="text" required="required">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="gender">성별</label><br> 
						<select name="protector_gender" id="protector_gender" class="form-select">
							<option value="">성별을 선택해주세요.</option>
							<option value="1">여자</option>
							<option value="2">남자</option>
						</select>
						<div class="validate"></div>
					</div>
				</div>
				<div class="row" id="protector_yearmonthday" style="margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;">
					<div id="protector_yearDiv" class="col-md-2 form-group mt-3">
						<label for="text">생년월일</label> 
						<input type="datetime" name="protector_year" class="form-control datepicker" id="protector_year" placeholder="년도">
						<div class="validate"></div>
					</div>
					&nbsp;
					<div id="protector_monthDiv" class="col-md-2 form-group mt-3">
						<label for="text"></label> 
						<select name="protector_month" id="protector_month" class="form-select">
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
					&nbsp;
					<div id="protector_dayDiv" class="col-md-2 mt-3">
						<label for="text"></label> 
						<input type="datetime" class="form-control datepicker" name="protector_day" id="protector_day" placeholder="일">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-6 form-group mt-3">
						<label for="email">주소</label><br> 
						<input type="text" class="form-control" name="protector_address" id="protector_address" placeholder="주소를 입력해주세요." data-rule="text">
						&nbsp;&nbsp;
						<input type="button" class="btn btn-primary" name="searching_address" id="searching_address" value="주소검색" style="width: 140px; text-align: center; border-radius: 50px;">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-6 form-group mt-3">
						<label for="email">핸드폰번호</label><br> 
						<input type="text" class="form-control" name="protector_phoneNumber" id="protector_phoneNumber" placeholder="전화번호를 입력해주세요." data-rule="text"> 
							&nbsp;&nbsp;
						<input type="button" class="btn btn-primary" name="send_certificationNumber" value="인증번호 받기" style="width: 140px; text-align: center; border-radius: 50px;">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="email">인증번호 확인</label> 
						<input type="number" class="form-control" name="confirm_certificationNumber" id="confirm_certificationNumber" placeholder="인증번호를 입력해주세요." data-rule="text" required="required">
						<div class="validate"></div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="row">
			            <div class="col-md-4 form-group" style="margin: auto;">
						      <input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/roleCheck'" style="border-radius:50px;width: 110px;text-align: center;color: white;">
						      <input type="button" class="btn btn-primary" name="join_membership_protector" id="join_membership_protector" value="회원가입" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white;">
			              <div class="validate"></div>
			            </div>
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
<script type="text/javascript">
$(function(){
       $('#join_membership_protector').on('click', function() {
          var email = $('#email').val();
          var confirm_emailUser = $('#confirm_emailUser').val();
          var password = $('#password').val();
          var password_reconfirm = $('#password_reconfirm').val();
          var protector_name = $('#protector_name').val();
          var protector_gender = $('#protector_gender').val();
          var protector_yearmonthday = $('#protector_yearmonthday').val();
          var protector_year = $('#protector_year').val();
          var protector_month = $('#protector_month').val();
          var protector_date = $('#protector_date').val();
          var protector_address = $('#protector_address').val();
          var protector_phoneNumber = $('#protector_phoneNumber').val();
          var confirm_certificationNumber = $('#confirm_certificationNumber').val();
          if(email.length==0||email.trim().length==0||email.includes(' ')){
               $('#email').focus();
               $('#email').attr('style','border-color: #dc3545;');
           	   $('#email').val('');
           	   $('#email').after('<div id="warning"><b style="color: red;">올바른 아이디를 입력해주세요.</b></div>');
          }else if(confirm_emailUser==null||confirm_emailUser.trim().length==0){
        	   $('#confirm_emailUser').focus();
               $('#confirm_emailUser').attr('style','border-color: #dc3545;');
           	   $('#confirm_emailUser').val('');
           	   $('#confirm_emailUser').after('<div id="warning"><b style="color: red;">이메일에 전송된 본인확인 번호를 입력해주세요.</b></div>');
          }else if(password==null||password.trim().length==0){
               $('#password').focus();
               $('#password').attr('style','border-color: #dc3545;');
           	   $('#password').val('');
           	   $('#password').after('<div id="warning"><b style="color: red;">올바른 비밀번호를 입력해주세요.</b></div>');
           }else if(password_reconfirm==null||password_reconfirm.trim().length==0){
        	   $('#password_reconfirm').focus();
               $('#password_reconfirm').attr('style','border-color: #dc3545;');
           	   $('#password_reconfirm').val('');
           	   $('#password_reconfirm').after('<div id="warning"><b style="color: red;">올바른 비밀번호를 입력해주세요.</b></div>');
           }else if(protector_name==null||protector_name.trim().length==0){
        	   $('#protector_name').focus();
               $('#protector_name').attr('style','border-color: #dc3545;');
           	   $('#protector_name').val('');
           	   $('#protector_name').after('<div id="warning"><b style="color: red;">이름을 입력해주세요.</b></div>');
           }else if(protector_gender==null||protector_gender.trim().length==0){
        	   $('#protector_gender').focus();
               $('#protector_gender').attr('style','border-color: #dc3545;');
           	   $('#protector_gender').val('');
           	   $('#protector_gender').after('<div id="warning"><b style="color: red;">성별을 선택해주세요.</b></div>');
           }else if((protector_year==null||protector_year.trim().length==0)||(protector_month==null||protector_month.trim().length==0)||(protector_day==null||protector_day.trim().length==0)){
        	   $('#protector_year').focus();
               $('#protector_yearmonthday').attr('style','border-color: #dc3545; margin: auto; width: 800px; height: 100px; display: flex; justify-content: center;');
           	   $('#protector_year').val('');
           	   $('#protector_month').val('');
           	   $('#protector_day').val('');
           	   $('#protector_yearmonthday').after('<div id="warning"><b style="color: red; margin-left: 34%;">생년월일을 설정해주세요.</b></div>');
           }else if(protector_address==null||protector_address.trim().length==0){
        	   $('#protector_address').focus();
               $('#protector_address').attr('style','border-color: #dc3545;');
           	   $('#protector_address').val('');
           	   $('#protector_address').after('<div id="warning"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else if(protector_phoneNumber==null||protector_phoneNumber.trim().length==0){
        	   $('#protector_phoneNumber').focus();
               $('#protector_phoneNumber').attr('style','border-color: #dc3545;');
           	   $('#protector_phoneNumber').val('');
           	   $('#protector_phoneNumber').after('<div id="warning"><b style="color: red;">전화번호를 입력해주세요.</b></div>');
           }else if(confirm_certificationNumber==null||confirm_certificationNumber.trim().length==0){
        	   $('#confirm_certificationNumber').focus();
               $('#confirm_certificationNumber').attr('style','border-color: #dc3545;');
           	   $('#confirm_certificationNumber').val('');
           	   $('#confirm_certificationNumber').after('<div id="warning"><b style="color: red;">인증번호를 입력해주세요.</b></div>');
           }else{
        	   $('#join_membership_protector').attr('onclick',"location='/'");
           }
       });
 });
$('#email').on('input',function(){
	if($('#email').val() !=''){
		$('#email').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#confirm_emailUser').on('input',function(){
	if($('#confirm_emailUser').val() !=''){
		$('#confirm_emailUser').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#password').on('input',function(){
	if($('#password').val() !=''){
		$('#password').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#password_reconfirm').on('input',function(){
	if($('#password_reconfirm').val() !=''){
		$('#password_reconfirm').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#protector_name').on('input',function(){
	if($('#protector_name').val() !=''){
		$('#protector_name').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#protector_gender').on('input',function(){
	if($('#protector_gender').val() !=''){
		$('#protector_genderX').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#protector_year').on('input',function(){
	if($('#protector_year').val() !=''){
		$('#protector_year').attr('style','border-color:#ced4da;');		
		$('#protector_month').attr('style','border-color:#ced4da;');		
		$('#protector_day').attr('style','border-color:#ced4da;');		
		$('#warning').remove();
	}
})
$('#protector_month').on('input',function(){
	if($('#protector_month').val() !=''){
		$('#protector_year').attr('style','border-color:#ced4da;');		
		$('#protector_month').attr('style','border-color:#ced4da;');		
		$('#protector_day').attr('style','border-color:#ced4da;');		
		$('#warning').remove();
	}
})
$('#protector_day').on('input',function(){
	if($('#protector_day').val() !=''){
		$('#protector_year').attr('style','border-color:#ced4da;');		
		$('#protector_month').attr('style','border-color:#ced4da;');		
		$('#protector_day').attr('style','border-color:#ced4da;');		
		$('#warning').remove();
	}
})
$('#protector_address').on('input',function(){
	var searchingAddress = $('#searching_address').val();
		$('#searching_address').attr('value', searchingAddress);
	if($('#searching_address').val() !=null){
		$('#warning').remove();
	}
})
$('#protector_phoneNumber').on('input',function(){
	if($('#protector_phoneNumber').val() !=''){
		$('#protector_phoneNumber').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
$('#confirm_certificationNumber').on('input',function(){
	if($('#confirm_certificationNumber').val() !=''){
		$('#confirm_certificationNumber').attr('style','border-color:#ced4da;');
		$('#warning').remove();
	}
})
</script>
<script src="js/jsp/protectorMemberJoin.js"></script>
</html>