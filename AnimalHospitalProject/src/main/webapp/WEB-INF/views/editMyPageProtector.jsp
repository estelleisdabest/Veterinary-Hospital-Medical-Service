<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>내 정보 수정</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">


<!-- Tables - SB Admin -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>


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
					<br />
					<p style="font-size: 11pt;">회원정보를 수정할 수 있습니다.</p>
					<p style="font-size: 11pt; color: red; display: inline;">이름,
						ID, 생년월일</p>
					<p style="font-size: 11pt; display: inline;">은 수정할 수 없습니다.</p>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<form action="">
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="name" id="name" disabled="disabled">
							<div id="uneditableName" style="font-size: 9pt; color: red;"></div>
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="id">ID</label> <input type="text"
								class="form-control" name="id" id="id" disabled="disabled">
							<div id="uneditableId" style="font-size: 9pt; color: red;"></div>
							<div class="validate"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="password">비밀번호</label>
							<div class="wrap">
								<input type="password" class="form-control" name="password"
									id="pw" placeholder="수정할 비밀번호를 입력해주세요."> <input
									type="hidden">
								<div id="uneditablePassword" style="font-size: 9pt; color: red;"></div>
							</div>
							<div class="validate" id="passMessage"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="birth">생년월일</label> <input type="text"
								class="form-control" name="birthday" id="birthday"
								disabled="disabled">
							<div id="uneditableBirthday" style="font-size: 9pt; color: red;"></div>
						</div>
						<div class="validate"></div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="phone">전화번호</label>
							<div class="wrap">
								<input type="text" class="form-control" name="phone"
									id="phoneNum" placeholder="수정할 전화번호를 입력해주세요." maxlength="13"
									data-rule="age" data-msg="필수입력 항목입니다."> &nbsp;<input
									type="button" value="인증번호" class="btn btn-primary" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
								<div id="uneditablePhone" style="font-size: 9pt; color: red;"></div>
							</div>
							<div class="validate" id="phoneMessage"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="cNum">인증번호 확인</label> 
						<input type="number" class="form-control" name="confirm_certificationNumber" id="cNum" placeholder="인증번호를 입력해주세요." data-rule="text" required="required">							
						<div class="validate" id="cNumMessage"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="address1">주소</label>
							<div class="wrap">
								<input type="text" class="form-control" readonly="readonly"
									id="address1" placeholder="주소찾기 버튼을 눌러주세요"> &nbsp; <input
									type="button" name="address_kakao" id="address_kakao"
									onclick="sample4_execDaumPostcode()" class="btn btn-primary"
									value="주소찾기"
									style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
							</div>
							<div class="validate" id="ad1Message"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 form-group mt-3">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group mt-3">
							<label for="address2">상세주소</label> <input type="text"
								class="form-control" name="address2" id="address2"
								placeholder="수정할 상세주소를 입력해주세요.">
							<div class="validate" id="ad2Message"></div>
						</div>
					</div>
					<div class="row">
						<p></p>
						<p>
						<div class="col-md-4 form-group" style="margin: auto;">
							<input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/myPageProtector'"
								style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
							<input type="button" class="btn btn-primary" name="updateMyInfo"
								id="updateMyInfo" value="수정하기"
								style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
						</div>
					</div>

				</form>
			</div>
		</section>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="js/jsp/editMyPageProtector.js"></script>
<script type="text/javascript">
$(function(){
	$('#updateMyInfo').on('click', function() {
		var address1 = $('#address1').val();
		var address2 = $('#address2').val();
		var pw = $('#pw').val();
		var phoneNum = $('#phoneNum').val();
		var cNum = $('#cNum').val();
		if(pw==null||pw.trim().length==0){
			$('#pw').attr('style','border-color: #dc3545;');
			$('#pw').val('');
			$('#passMessage').html('<div id="warning1"><b style="color: red;">수정할 비밀번호를 입력해주세요.</b></div>');
			$('#pw').focus();
		}else if(phoneNum==null||phoneNum.trim().length==0){
			$('#phoneNum').attr('style','border-color: #dc3545;');
			$('#phoneNum').val('');
			$('#phoneMessage').html('<div id="warning2"><b style="color: red;">수정할 전화번호를 입력해주세요.</b></div>');
			$('#phoneNum').focus();
		}else if(cNum==null||cNum.trim().length==0){
			$('#cNum').attr('style','border-color: #dc3545;');
			$('#cNum').val('');
			$('#cNumMessage').html('<div id="warning3"><b style="color: red;">인증번호를 입력해주세요.</b></div>');
			$('#cNum').focus();
		}else if(address1==null||address1.trim().length==0){
			$('#address1').attr('style','border-color: #dc3545;');
			$('#address1').val('');
		    $('#ad1Message').html('<div id="warning4"><b style="color: red;">수정할 주소를 입력해주세요.</b></div>');
		    $('#address1').focus();
		}else if(address2==null||address2.trim().length==0){
			$('#address2').attr('style','border-color: #dc3545;');
			$('#address2').val('');
			$('#ad2Message').html('<div id="warning5"><b style="color: red;">수정할 상세주소를 입력해주세요.</b></div>');
			$('#address2').focus();
		}else{
			var result = window.confirm('작성한 내용을 수정하시겠습니까?');
			if(result) {
		     	alert('정상적으로 수정되었습니다.');
				location.href='/myPageProtector';
			}
		}
	});
});
$('#pw').on('input',function(){
	if($('#pw').val() !=''){
		$('#pw').attr('style','border-color : #ced4da;');
		$('#warning1').remove();
	}
});
$('#phoneNum').on('input',function(){
	if($('#phoneNum').val() !=''){
		$('#phoneNum').attr('style','border-color : #ced4da;');
		$('#warning2').remove();
	}
});
$('#cNum').on('input',function(){
	if($('#cNum').val() !=''){
		$('#cNum').attr('style','border-color : #ced4da;');
		$('#warning3').remove();
	}
});
$('#address1').on('input',function(){
	if($('#address1').val() !=null){
		$('#address1').attr('style','border-color : #ced4da;');
		$('#warning4').remove();
	}
});
$('#address2').on('input',function(){
	if($('#address2').val() !=null){
		$('#address2').attr('style','border-color : #ced4da;');
		$('#warning5').remove();
	}
});
</script>
</html>