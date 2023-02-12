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
							name="address" id="address" placeholder="주소찾기 버튼을 눌러주세요." data-rule="address"
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
						placeholder="나머지 상세주소를 입력해 주세요." data-rule="addressDetail"
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
					<input type="text" class="form-control" name="phone" id="phone" placeholder="대표 전화번호를 입력해 주세요."
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
						onclick="location='/hospitalMap'"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; color: white;">
					<input type="button" class="btn btn-primary"
						name="hospitalAdd" id="hospitalAdd"
						value="병원 추가" style="border-radius: 50px; width: 130px; margin: auto;
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
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#hospitalAdd').on('click', function() {
          var hospitalName = $('#password').val();
          var inputKakao = $('#inputKakao').val();
          var addressDetail = $('#addressDetail').val();
          var phone = $('#phone').val();
          var hospital_location_latitude = $('#hospital_location_latitude').val();
          var hospital_location_longitude = $('#hospital_location_longitude').val();
          if(hospitalName.length==0||hospitalName.trim().length==0||hospitalName.includes(' ')){
               $('#hospitalName').focus();
               $('#hospitalName').attr('style','border-color: #dc3545;');
           	   $('#hospitalName').val('');
           	   $('#hospitalName').after('<div id="Notice"><b style="color: red;">병원 이름을 입력해주세요.</b></div>');
           }else if(inputKakao==null||inputKakao.trim().length==0){
        	   $('#inputKakao').focus();
               $('#inputKakao').attr('style','border-color: #dc3545;');
           	   $('#inputKakao').val('');
           	   $('#1111').after('<div id="Notice"><b style="color: red;">주소를 입력해주세요.</b></div>');
           }else if(address==null||address.trim().length==0){
        	   $('#addressDetail').focus();
               $('#addressDetail').attr('style','border-color: #dc3545;');
           	   $('#addressDetail').val('');
           	   $('#addressDetail').after('<div id="Notice"><b style="color: red;">상세주소를 입력해주세요.</b></div>');
           }else if(phone==null||phone.trim().length==0){
        	   $('#phone').focus();
               $('#phone').attr('style','border-color: #dc3545;');
           	   $('#phone').val('');
           	   $('#phone').after('<div id="Notice"><b style="color: red;">전화번호를 입력해주세요.</b></div>');
           }else if(hospital_location_latitude==null||hospital_location_latitude.trim().length==0){
        	   $('#hospital_location_latitude').focus();
               $('#hospital_location_latitude').attr('style','border-color: #dc3545;');
           	   $('#hospital_location_latitude').val('');
           	   $('#hospital_location_latitude').after('<div id="Notice"><b style="color: red;">위도를 입력해주세요.</b></div>');
           }else if(hospital_location_longitude==null||hospital_location_longitude.trim().length==0){
        	   $('#hospital_location_longitude').focus();
               $('#hospital_location_longitude').attr('style','border-color: #dc3545;');
           	   $('#hospital_location_longitude').val('');
           	   $('#hospital_location_longitude').after('<div id="Notice"><b style="color: red;">경도를 입력해주세요.</b></div>');
           }else{
        	   $('#hospitalAdd').attr('onclick',"location='/hospitalMap'");
           }
       });
 });
$('#hospitalName').on('input',function(){
	if($('#hospitalName').val() !=''){
		$('#hospitalName').attr('style','');
		$('#Notice').remove();
	}
})
$('#inputKakao').on('input',function(){
	var inputKakao = $('#inputKakao').val();
		$('#inputKakao').attr('value',inputKakao);
	if($('#inputKakao').val() !=null){
		$('#inputKakao').attr('style','');
		$('#Notice').remove();
	}
})
$('#addressDetail').on('input',function(){
	if($('#addressDetail').val() !=''){
		$('#addressDetail').attr('style','');
		$('#Notice').remove();
	}
})
$('#phone').on('input',function(){
	if($('#phone').val() !=''){
		$('#phone').attr('style','');
		$('#Notice').remove();
	}
})
$('#hospital_location_latitude').on('input',function(){
	if($('#hospital_location_latitude').val() !=''){
		$('#hospital_location_latitude').attr('style','');
		$('#Notice').remove();
	}
})
$('#hospital_location_longitude').on('input',function(){
	if($('#hospital_location_longitude').val() !=''){
		$('#hospital_location_longitude').attr('style','');
		$('#Notice').remove();
	}
})
 </script>
</html>