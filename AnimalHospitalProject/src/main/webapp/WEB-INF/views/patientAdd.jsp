<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>환자 추가</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

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
	input[name="ageDate"] {
		width: 70%;
		height: 38px;
		border: 1px solid #ced4da;
		padding-left: 5px;
		display: inline;
	}
	input[name="ageCheckBtn"] {
		width: 30%;
		height: 38px;
		display: inline;
		margin-left: -5px;
	}
	  img {
	    width: 200px;
	    height: 200px;
	    display: block;
	    border-radius: 10%;
	    object-fit: cover;
	    border: 3px solid #F5F5F5;
	    text-align: center;
   		font-size: 9pt;
	  }
	  video {
	    width: 300px;
	    height: 200px;
	    margin: auto;
	    border-radius: 10%;
	    object-fit: cover;
	    border: 3px solid #F5F5F5;
	  }
	  .no_content_img {
	    width: 300px;
	    height: 200px;
	    margin: auto;
	    object-fit: cover;
	    border: 3px solid #F5F5F5;
	    text-align: center;
	    font-size: 9pt;
	  }
	  .no_content_video {
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
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">환자 추가</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<form method="post">
		<section class="inner-page">
			<div class="container">
				<div class="contact-form pt-20"></div>
				<div id="contentBox" >
				<!-- https://kuzuro.blogspot.com/2018/10/12.html랑 https://madinthe90.tistory.com/39 참고 -->
				<br/>
				<table>
					<tr>
						<td class="no_content_img" id="no_content_img">
							<i class="bi bi-x-circle"></i> 등록된 파일이 없습니다.
						</td>
						<td id="imgTd">
							<img id="img" src="" onerror="this.onerror=null; this.src='img/errorFile.png'" alt="dfdfdf"/>
						</td>
						<td class="no_content_video" id="no_content_video">
							<i class="bi bi-x-circle"></i> 등록된 파일이 없습니다.
						</td>
						<td id="videoTd">
							<video id="video" src="" controls="controls" onerror="this.onerror=null; this.src='img/errorFile.png'"></video>
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							<br/><label class="btn btn-primary" for="imgFile" style="border-radius: 50px; width: 98px">사진등록</label>
						</td>
						<td style="text-align: center;">
							<br/><label class="btn btn-primary" for="videoFile" style="border-radius: 50px; width: 110px">동영상등록</label>
						</td>
					</tr>
					<tr>
						<td>
							<input type="file" class="form-control" name="file" id="imgFile" style="display: none;" accept="image/*" >
						</td>
						<td>
							<input type="file" class="form-control" name="file" id="videoFile" style="display: none;"  accept="video/*">
						</td>				
					</tr>
				</table>
				</div>
				 <br/>	
				 <br/>	
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4">
						<label for="name">이름</label> <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요." data-rule="name">
						<div class="validate" id="val01"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="species">종</label> 
						<input type="text" class="form-control" name="species" id="species" placeholder="종을 입력해주세요." data-rule="species">
						<div class="validate" id="val02"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="size">크기</label>
						<%-- 환자정보 추가했을 때 입력된 정보를 띄움 --%>
						<select class="form-control" id="sizeBox" name="sizeBox">
							<option value="small">소형</option>
							<option value="medium">중형</option>
							<option value="large">대형</option>
						</select>
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="age">나이</label>
						<br/>
						<input type="date" class="form-control" name="ageDate" id="ageDate">
						<input type="button" name="ageCheckBtn" id="ageCheckBtn"
							class="btn btn-primary btn-sm" value="나이확인"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
						<div id="ageYearBox" >
							<input type="number" class="form-control" id="ageYear" name="ageYear" readonly="readonly" style="width:70%; display: inline;">&nbsp;살
						</div>
						<div id="ageMonthBox">
							<input type="number" class="form-control" id="ageMonth" name="ageMonth" readonly="readonly" style="width:70%; display: inline;">&nbsp;개월
						</div>
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="age">성별</label> <br /> 
						<input type="radio" name="gender" id="Female" data-rule="gender" value="Female" checked onClick="return false;"> 
						<label for="Female">Female</label> 
						<input type="radio" name="gender" id="Male" data-rule="gender" value="Male" readonly onClick="return false;">
						<label for="Male"> Male</label>
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="weight">몸무게</label> <input type="number" min="0" class="form-control" name="weight" id="weight" step="0.1" placeholder="몸무게를 입력해주세요." data-rule="weight">
						<div class="validate" id="val03"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="etc">특이사항</label> <input type="text" class="form-control" name="etc" id="etc" placeholder="특이사항을 입력해주세요.">
						<div class="validate"></div>
					</div>
				</div>
				<div class="row">
					<p></p>
					<p>
						<br />
					<div class="col-md-4 form-group" style="margin: auto;">
						<input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="history.go(-1)" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
						<input type="button" class="btn btn-primary" name="patient_add" id="patient_add" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;" value="환자추가">
					</div>
				</div>
			</div>
			<p></p>
		</section>
	</form>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
$("#imgTd").hide();
$("#videoTd").hide();
//사진 미리보기
$("#imgFile").on("change", function(event) {
	$("#imgTd").show();
    var imgfile = event.target.files[0];
    var reader = new FileReader(); 
    reader.onload = function(e) {
		$("#no_content_img").hide();
        $("#img").attr("src", e.target.result);
    }
    reader.readAsDataURL(imgfile);
});
// 동영상 미리보기
$("#videoFile").on('change', function(){
	$("#no_content_video").hide();
	$("#videoTd").show();
	file = this.files[0];
	$('#video').attr('src', URL.createObjectURL(file));
	
});
// 환자 추가 버튼 이벤트
$(function() {
	$('#patient_add').on('click',
					function() {
						var name = $('#name').val();
						var species = $('#species').val();
						var age = $('#age').val();
						var gender = $('#gender').val();
						var weight = $('#weight').val();
						var weightReg = /^\d{1,3}\.\d{0,1}$/;
						var etc = $('#etc').val();

						if (name.length == 0 || name.trim().length == 0
								|| name.includes(' ')) {
							$('#name').focus();
							$('#name').attr('style',
									'border-color: #dc3545;');
							$('#name').val('');
							$('#val01')
									.html(
											'<div id="warning"><b style="color: red;">이름을 입력해주세요.</b></div>');
						} else if (species == null
								|| species.trim().length == 0
								|| species.includes(' ')) {
							$('#species').focus();
							$('#species').attr('style',
									'border-color: #dc3545;');
							$('#species').val('');
							$('#val02')
									.html(
											'<div id="warning"><b style="color: red;">종을 입력해주세요.</b></div>');
						} else if (weight == null|| weight.trim().length == 0|| weight.includes(' ')||!weightReg.test(weight)) {
							$('#weight').focus();
							$('#weight').attr('style',
									'border-color: #dc3545;');
							$('#weight').val('');
							$('#val03')
									.html(
											'<div id="warning"><b style="color: red;">몸무게를 입력해주세요. <br/>숫자, 소수점 첫째짜리까지 기입 가능합니다.</b></div>');
						} else {
							var result = window
									.confirm('작성한 내용을 추가하시겠습니까?');

							if (result) {
								alert('추가되었습니다.');
								location.href = '/myPageProtector';
							}
						}
					})
});
$('#name').on('input', function() {
	if ($('#name').val() != '') {
		$('#name').attr('style', 'border-color:#ced4da');
		$('#warning').remove();
	}
})
$('#species').on('input', function() {
	if ($('#species').val() != 'border-color:#ced4da') {
		$('#species').attr('style', '');
		$('#warning').remove();
	}
})
$('#age').on('input', function() {
	if ($('#age').val() != '') {
		$('#age').attr('style', 'border-color:#ced4da');
		$('#warning').remove();
	}
})
$('#weight').on('input', function() {
	if ($('#weight').val() != '') {
		$('#weight').attr('style', 'border-color:#ced4da');
		$('#warning').remove();
	}
})

// 나이 달력 이벤트 및 게산
$(function() {
	$("#ageYearBox").hide();
	$("#ageMonthBox").hide();
	// 생년월일 기본값 현재날짜로 설정, 현재날짜 이후는 선택 불가능하게 함
	today = new Date();
	today = today.toISOString().slice(0, 10);
	bir = document.getElementById("ageDate");
	bir.value = today;
	document.getElementById("ageDate").setAttribute("max", today);

});

// 나이확인 버튼 클릭시 이벤트
$("#ageCheckBtn").click(function() {
	const now = new Date();
	const today_age = new Date($('#ageDate').val());
	const ageTime = now.getTime() - today_age.getTime();
	const ageMonth = Math.round(ageTime / (30 * 24 * 60 * 60 * 1000));
	const ageYear = Math.round(ageTime / (12 * 30 * 24 * 60 * 60 * 1000));

	if (ageYear > 0) {
		$("#ageYearBox").show();
		$("#ageYear").val(ageYear);
	} else {
		$("#ageMonthBox").show();
		$("#ageMonth").val(ageMonth);
	}
});
</script>
</html>