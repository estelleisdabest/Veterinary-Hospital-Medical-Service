<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>진료내역</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
	#gridContainer {
		display: grid;
		grid-auto-rows: minmax(100px, auto);
		grid-template-columns: 2fr 1fr;
	}
	
	#mainContent {
		grid-row: 1/5;
		grid-column: 1/3;
	}
	
	#rightContent {
		grid-row: 1/4;
		grid-column: 3/4;
		text-align: center;
	}
	
	#Postscript {
		padding: 10px;
		margin-bottom: 10px;
		margin-left: auto;
		border: 1px solid #DDDDDD;
		border-radius: 10px;
		width: 350px;
	}
	
	#PostscriptBold{
		font-weight: bold;
		margin-top: 10px;
	}
	
	#PostscriptContent{
		padding: 10px;
		margin-top: 10px;
		margin-bottom: 10px;
		margin-left: auto;
		border: 1px solid #DDDDDD;
		border-radius: 10px;
		width: 320px;
		height: auto;
	}
	
	h5 {
		margin-left: 10px;
		margin-bottom: 10px;
		font-weight: bold;
	}
	
	h6 {
		margin-left: 10px;
	}
	
	img {
		width: 300px;
		height: 150px;
		object-fit: cover;
		object-position: 50% 50%;
	}
	
	tr, td {
		text-align: left;
	}
	
	h3 {
		display: inline;
	}
	
	#MedicineList{
      width:70%;
      height:38px;
      padding-left: 10px;
      display:inline;
	  margin-bottom: 10px;
	  font-size: 20px;
	  font-weight: bold;
    }
    
    input[name="DownloadPDF"]{
      height: 38px;
      display:inline;
      margin-left: 3px;
    }
    
	#MedicineListUl li{
		font-size: 13px;
	} 
	
</style>
<script type="text/javascript">
// 해당 일자에 후기 내용이 없을 경우 수정하기 버튼이 보이지않고 작성하기 버튼이 보여야 한다.
// 해당 일자에 후기 내용이 있을 경우 작성하기 버튼은 보이지 않으며 수정하기 버튼을 보여야 한다.
</script>
</head>
<%@ include file="/WEB-INF/includes/header.jsp"%>
<body class="sb-nav-fixed">
	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">
			<br />
			<div class="section-title">
				<h2 style="font-weight: bold; font-size: 30px;">
					<br />진료내역
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->
	<section class="inner-page">
		<main>
			<div class="container">
				<div id="gridContainer">
					<div id="mainContent">
						<div style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 95%;">
							<h4 style="margin:10px; margin-top:10px; font-weight: bold">상세 진료내역</h4>
							<p/>
							<div class="diagnosis">
							 	<h6>진료번호 : 226<!-- {$diagnosisVO.seqDiagnosis } --> </h6>
							 	<h6>진료일 : 2022.09.30<!-- {$diagnosisVO.diagnosisDate } --> </h6> 
							 	<h6>진료병원 : 사랑별동물병원<!-- {$animalHospital.animalHospitalName } --> </h6> 
							 	<h6>의사번호 : 2<!-- {$diagnosisVO.seqDoctor } --> </h6> 
							 	<h6>의사명 : 김OO<!-- {$diagnosisVO.doctorName } --> </h6> 
							 	<h6>환자명 : 토리<!-- {$diagnosisVO.animalName } --> </h6> 
						 	<hr />
						 		<h5> 진료내용</h5>
						 		&nbsp;&nbsp;건강검진 <!-- {$diagnosisVO.diagnosisSymptom } --> 
						 	</div>
						 	<hr />
						 	<div id="MedicineList" style="margin-top: 10px;">처방목록</div> 
						 	<input type="button" name="DownloadPDF" value="PDF다운" class="btn btn-primary bt-sm"
						 		style="border-radius: 50px; margin-right: 10px; color: white; margin-top: -8px;"/>
							 	<h6 style="margin-left: 10px; font-size: 16px;">약품명<!-- {$ medicineVO.medicineName} --></h6>
							 	<ul id="MedicineListUl">
							 		<!-- <dd id="Medicine_detail"></dd> -->
							 		<li id="Medicine_detail">제조회사: <!-- {$ medicineVO.medicineManufactureCompany} --></li>
							 		<li id="Medicine_detail">제조날짜: <!-- {$ medicineVO.medicineManufactureDate} --></li>
							 		<li id="Medicine_detail">약품상세명: <!-- {$ medicineVO.medicineDetailName} --></li>
							 		<li id="Medicine_detail">복약안내: <!-- {$ medicineVO.medicinemedicationGuide} --></li>
							 		<li id="Medicine_detail">부작용: <!-- {$ medicineVO.medicineSideEffect} --></li>
							 	</ul>
							 	<!-- {$diagnosisVO.seqDiagnosis } --> 
							 	<!-- div로 hidden 줘서 수정하지 않았을 경우 뜨지 않게 한다. 암튼 hidden 이용해야함 -->
						</div>
						<br />
					</div>
					<div id="rightContent">
					<!-- 후기 -->
						<div id="Postscript">
							<h5 style="margin-top: 10px;">후기</h5>
								<hr />
							<table>
								<tr>
									<td>작성일 : 2023년 01월 31일</td>
								</tr>
								<tr>
									<td>진료병원 : A동물병원</td>
								</tr>
								<tr>
									<td id="PostscriptBold">별점 : ★★★★★</td>
								</tr>
								<tr>
									<td>
										<div id="PostscriptBold">내용</div>
										<!-- 내용 길 경우 자바스크립트 이용해서 자동줄바꿈 -->
											<div id="PostscriptContent">
												의사 선생님이 너무 친절했어요~!.....
										</div>
									</td>
								</tr>
							</table>
						</div>
						<div align="right" >
						<!-- <input type="button" class="btn btn-primary btn" id="saveBtn"
									onclick="location.href='/postscriptSave'" value="작성하기" 
										style="border-radius: 50px; margin-right: 10px; color: white;"/> --> 
						<input type="button" class="btn btn-primary btn" id="updateBtn"
									onclick="location.href='/postscriptUpdate'" value="수정하기" 
										style="border-radius: 50px; margin-right: 10px; color: white;"/>
						</div>
						<p/>
						<!-- 환자 정보 -->
						<div class="card mb-3" style="width: 350px;">
							<div class="row g-0">
								<div class="col-md-4" >
									<img src="img/dog-unsolicited.jpg" class="img-fluid rounded-start"
										alt="..." style="width: 100%; height: 100%;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="animalName" style="text-align: center;">두둥</h5>
								<hr />
										<p class="card-text">
											나이 : 3살 <br /> 품종 : 멀티즈<br /> 사이즈 : 소형<br /> 몸무게 : 5kg<br />
										</p>
									</div>
								</div>
							</div>
						</div>
						<div align="right">
							<a href="/scheduleProtector" class="btn btn-primary bt-sm"
								style="border-radius: 50px; margin-right: 10px; color: white;">예약확인</a>
						</div>
					</div>
				</div>
			</div>
		</main>
	</section>
</body>
<!-- Template Main JS File -->
<%@ include file="/WEB-INF/includes/footer.jsp"%>
</html>