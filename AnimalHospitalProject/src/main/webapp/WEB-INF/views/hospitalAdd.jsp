<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>병원 정보 추가</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

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
					<h2 style="font-weight: bold; font-size: 30px;">병원 정보 추가</h2>
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
					<div class="validate" id="val01"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="address">주소</label>
					<div class="wrap">
						<input type="text" class="form-control" readonly="readonly" name="address"
							id="address" placeholder="주소찾기 버튼을 눌러주세요." data-rule="address"
							data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
						&nbsp; <input type="button" name="address_kakao" id="address_kakao"
							onclick="sample4_execDaumPostcode()" class="btn btn-primary btn-sm" value="주소찾기"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
					</div>
					<div class="validate" id="val02"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="addressDetail">상세주소</label>
					<input type="text" class="form-control" name="addressDetail" id="addressDetail"
						placeholder="나머지 상세주소를 입력해 주세요." data-rule="addressDetail" data-msg="필수입력 항목입니다."
						onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="val03"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="phone">전화번호</label>
					<input type="text" class="form-control" name="phone" id="phone"
						placeholder="대표 전화번호를 입력해 주세요." data-rule="phone" data-msg="필수입력 항목입니다."
						onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="val04"></div>
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
					<div class="validate" id="val05"></div>
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
					<div class="validate" id="val06"></div>
				</div>
			</div>
			<div class="row">
				<p></p>
				<p></p>
				<div class="col-md-4 form-group" style="margin: auto;">
					<input type="button" class="btn btn-secondary" name="move_pre_page"
						id="move_pre_page" value="이전페이지" onclick="location='/hospitalMap'"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; color: white;">
					<input type="button" class="btn btn-primary" name="hospitalAdd" id="hospitalAdd"
						value="병원 추가"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; float: right; color: white;">
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/jsp/hospitalAdd.js"></script>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#hospitalAdd').on('click', function() {
          var hospitalName = $('#hospitalName').val();
          var address = $('#address').val();
          var addressDetail = $('#addressDetail').val();
          var phone = $('#phone').val();
          var hospital_location_latitude = $('#hospital_location_latitude').val();
          var hospital_location_longitude = $('#hospital_location_longitude').val();
          var locationRegEx = /\d{2}\.\d{8}/;
          if(hospitalName.length==0||hospitalName.trim().length==0||hospitalName.includes(' ')){
               $('#hospitalName').focus();
               $('#hospitalName').attr('style','border-color: #dc3545;');
           	   $('#hospitalName').val('');
           	   $('#val01').html('<div id="warning01"><b style="color: red;">올바른 병원 이름을 입력해주세요.</b></div>');
           }else if(address==null||address.trim().length==0){
        	   $('#address').focus();
               $('#address').attr('style','border-color: #dc3545;');
           	   $('#address').val('');
           	   $('#val02').html('<div id="warning02"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else if(addressDetail==null||addressDetail.trim().length==0){
        	   $('#addressDetail').focus();
               $('#addressDetail').attr('style','border-color: #dc3545;');
           	   $('#addressDetail').val('');
           	   $('#val03').html('<div id="warning03"><b style="color: red;">유효한 상세주소를 입력해주세요.</b></div>');
           }else if(phone==null||phone.trim().length==0){
        	   $('#phone').focus();
               $('#phone').attr('style','border-color: #dc3545;');
           	   $('#phone').val('');
           	   $('#val04').html('<div id="warning04"><b style="color: red;">전화번호를 입력해주세요.</b></div>');
           }else if(!locationRegEx.test(hospital_location_latitude)){
        	   $('#hospital_location_latitude').focus();
               $('#hospital_location_latitude').attr('style','border-color: #dc3545;');
           	   $('#val05').html('<div id="warning05"><b style="color: red;">유효한 위도를 입력해주세요.</b></div>');
           }else if(!locationRegEx.test(hospital_location_longitude)){
        	   $('#hospital_location_longitude').focus();
               $('#hospital_location_longitude').attr('style','border-color: #dc3545;');
           	   $('#val06').html('<div id="warning06"><b style="color: red;">유효한 경도를 입력해주세요.</b></div>');
           }else{
        	   var result = window.confirm('작성한 내용을 추가하시겠습니까?');
   			
   			if(result) {
   				alert('정상적으로 처리되었습니다.');
   				location.href='/hospitalMap';
   			}
           }
       });
 });
$('#hospitalName').on('input',function(){
	if($('#hospitalName').val() !=''){
		$('#hospitalName').attr('style','border-color : #ced4da;');
		$('#warning01').remove();
	}
})
$('#addressDetail').on('input',function(){
	if($('#addressDetail').val() !=''){
		$('#addressDetail').attr('style','border-color : #ced4da;');
		$('#warning03').remove();
	}
})
$('#phone').on('input',function(){
	if($('#phone').val() !=''){
		$('#phone').attr('style','border-color : #ced4da;');
		$('#warning04').remove();
	}
})
$('#hospital_location_latitude').on('input',function(){
	if($('#hospital_location_latitude').val() !=''){
		$('#hospital_location_latitude').attr('style','border-color : #ced4da;');
		$('#warning05').remove();
	}
})
$('#hospital_location_longitude').on('input',function(){
	if($('#hospital_location_longitude').val() !=''){
		$('#hospital_location_longitude').attr('style','border-color : #ced4da;');
		$('#warning06').remove();
	}
})
 </script>
</html>