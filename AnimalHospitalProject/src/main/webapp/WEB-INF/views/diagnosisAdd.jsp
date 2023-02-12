<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>진료내용 작성</title>
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
	
	h4 {
		display: inline;
		margin: auto;
	}
	
	input[name="medicine_add"] {
		display: inline;
		float: right;
		margin-top: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	
	label[id="recoFeedAdd_input"] {
		height: 38px;
		display: inline;
		float: right;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	
	input[name="recoFeed_excel_download"] {
		height: 38px;
		display: inline;
		float: right;
		margin-right: 5px;
		font-size: 10pt;
		border-radius:50px;
	}
	
	img {
		width: 200px;
		height: 200px; 
		display : block;
		border-radius:10%;
		object-fit: cover;
		border: 3px solid #F5F5F5;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">진료내용 작성</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="container" style="position: static;">
				<div id="gridContainer">
					<div id="mainContainer">
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<h5>
								<b>
								보호자 주의사항</b>
								</h5>								
								<input type="text" class="form-control" name="protectorImpt" id="protectorImpt"
									data-rule="protectorImpt" placeholder="보호자의 특징 및 주의해야 할 사항을 적어주세요." required="required">
								<div class="validate"></div>
							</div>
						</div>
							<br /><br />
						<h4>
							<b>환자 정보</b> 
						</h4>
						<br />
						<br />
						<img src="img/dog.jpg" alt="...">
						<div class="row"></div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="name">이름</label>
								<input type="text" class="form-control" name="name" id="name"
									value="두둥" data-rule="name" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="species">종</label>
								<input type="text" class="form-control" name="species"
									id="species" value="말티즈" data-rule="species" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="size">크기</label>
								<input type="text" class="form-control" name="size" id="size"
									value="소형" data-rule="size" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="age">나이</label>
								<input type="number" min="1" class="form-control" name="age"
									id="age" value="3" data-rule="age" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="age">성별</label> <br />
								<input type="radio" name="gender" id="Female" data-rule="gender"
									value="Female" checked onClick="return false;"> <label
									for="Female"> Female</label> <input type="radio" name="gender"
									id="Male" data-rule="gender" value="Male" readonly
									onClick="return false;"> <label for="Male">
									Male</label>
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="weight">몸무게</label>
								<input type="number" min="1" class="form-control" name="weight"
									id="weight" value="5" data-rule="weight" readonly
									style="background-color: #F5F5F5">
								<div class="validate"></div>
							</div>
						</div>
							<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="visitdate">내원일</label>
								<%-- 현재날짜를 띄움 --%>
								<input type="date" class="form-control" id="visitDate" />
								<div class="validate"></div>
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="nextVisitDate">다음내원 예정일</label> 
								<input type="date" class="form-control" id="nextVisitDate" />
								<div class="validate"></div>
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="symptom">증상</label>
								<%-- 의사가 진단한 내용 띄움 --%>
								<input type="text" class="form-control" name="symptom"
									id="symptom" data-rule="species" placeholder="증상을 입력해주세요.">
								<div class="validate"></div>
							</div>
						</div>
						<br />
						
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="medicine">처방</label>
								<div class="form-control" >
					        <div class="col-md-11 ">
					           <label for="medicine_name">약품명</label> 
					           <!-- 약품명을 선택하면 약품상세명과 복약안내가 자동으로 입력되도록 할것 -->
					          <input type="text" class="form-control" list="medicine_name_option" placeholder="약품명을 입력하세요." data-rule="text" required="required">
					          <datalist id="medicine_name_option">
					          	<option class="form-control" value="세라치오펩티다제">
					          	<option class="form-control" value="올로원스점안액">
					          	<option class="form-control" value="파로나인정">
					          	<option class="form-control" value="옵틱플루점안액">
					          	<option class="form-control" value="미프론정">
					          </datalist>
					          <div class="validate"></div>
					           <label for="medicine_detail">약품상세명</label>
					          <input type="text" class="form-control" list="medicine_detail_option" data-rule="text" required="required">
					          <datalist id="medicine_detail_option">
					          	<option class="form-control" value="소염효소제">
					          	<option class="form-control" value="항히스타민&항알러지약">
					          	<option class="form-control" value="Eye steriods&antiallergics">
					          	<option class="form-control" value="부신피질호르몬">
					          	<option class="form-control" value="위장운동조절 및 진경제">
					          </datalist>
					          <div class="validate"></div>
					           <label for="medication_guide">복약안내</label>
					          <input type="text" class="form-control" list="medication_guide_option" data-rule="text" required="required">
					          <datalist id="medication_guide_option">
					          	<option class="form-control" value="하루 3회 / 식후 30분">
					          	<option class="form-control" value="하루 3회 / 식전 30분">
					          	<option class="form-control" value="하루 2회 / 기상 후, 취침 전">
					          	<option class="form-control" value="하루 1회 / 취침 전">
					          	<option class="form-control" value="증상 발생 시 수시">
					          </datalist>
							<div>
							<!-- 입력 후 '처방약 추가'버튼을 누르면 아래 리스트에 처방약이 추가된다.-->
								<input type="button" class="btn btn-primary" name="medicine_add" id="medicine_add" value="처방약 추가" onclick="" />
							</div>
					          <div class="validate"></div>
							<br />
								</div>
					         <br /><br />
					          <table style="text-align: left; font-size: 10pt;"class="form-control" >
							<thead>
								<tr style="border-bottom: 1px solid #F5F5F5;">
									<th style="width: 30%">약품명</th>
									<th style="width: 30%">약품상세명</th>
									<th style="width: 40%">복약안내</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr style="border-bottom: 1px solid #F5F5F5;">
									<td style="vertical-align: middle;">세라치오펩티다제</td>
									<td style="vertical-align: middle;">소염효소제</td>
									<td style="text-align: left;">하루 3회 / 식후 30분</td>
									<td><i class="bi bi-x-square"></i></td>
								</tr>
								<tr style="border-bottom: 1px solid #F5F5F5;">
									<td style="vertical-align: middle;">올로원스점안액</td>
									<td style="vertical-align: middle;">Eye steriods&antiallergics</td>
									<td style="text-align: left;">증상 발생 시 수시</td>
									<td><i class="bi bi-x-square"></i></td>
								</tr>
								<tr style="border-bottom: 1px solid #F5F5F5;">
									<td style="vertical-align: middle;">옵틱플루점안액</td>
									<td style="vertical-align: middle;">Eye steriods&antiallergics</td>
									<td style="text-align: left;">증상 발생 시 수시</td>
									<td><i class="bi bi-x-square"></i></td>
								</tr>
							</tbody>
					          </table>
					          <br />
								</div>
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-md-10 form-group">
								<div class="validate"></div>
							</div>
							<div class="col-md-10 form-group">
								<label for="recoFeed">추천사료 및 영양제</label>
								<%-- 의사가 추가한 엑셀파일 목록을 띄움 --%>
								<div class="form-control"  style="margin-bottom: 4px;">
								<ul id="recoFeed_list">
									<li>신장질환 추천 사료(소형견).xlsx</li>
									<li>소형견 추천 영양제.xlsx	</li>
								</ul>
								</div>
								<input type="button" class="btn btn-primary" name="recoFeed_excel_download" id="recoFeed_excel_download" value="양식 다운받기" onclick="" />
								<label for="recoFeedAdd" class="btn btn-primary" id="recoFeedAdd_input"  style="border-radius:50px;">추가(Excel)</label>
								<input type="file" name="recoFeedAdd" id="recoFeedAdd" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" style="display: none; " />
								<div class="validate"></div>
							</div>
						</div>
					</div>
					
					<div id="rightContainer">
						<div id="lastDiagnosis">
							<div>
								<div
									style="padding: 10px; margin-bottom: 10px; border: 1px solid #DDDDDD; border-radius: 10px; width: 350px; margin-left: auto;">
									<h5>
										<b>이전 진료 내역</b>
									</h5>
									<table>
										<tr>
											<td>진료병원 : A동물병원</td>
										</tr>
										<tr>
											<td>질료 일 : 2023년 1월 30일</td>
										</tr>
										<tr>
											<td>증상 : 건강검진</td>
										</tr>
									</table>

									<br />
									<table>
										<tr>
											<td>진료병원 : A동물병원</td>
										</tr>
										<tr>
											<td>질료 일 : 2023년 1월 30일</td>
										</tr>
										<tr>
											<td>증상 : 건강검진</td>
										</tr>
									</table>

									<br />
									<table>
										<tr>
											<td>진료병원 : A동물병원</td>
										</tr>
										<tr>
											<td>질료 일 : 2023년 1월 30일</td>
										</tr>
										<tr>
											<td>증상 : 건강검진</td>
										</tr>
									</table>

									<br />
									<table>
										<tr>
											<td>진료병원 : A동물병원</td>
										</tr>
										<tr>
											<td>질료 일 : 2023년 1월 30일</td>
										</tr>
										<tr>
											<td>증상 : 건강검진</td>
										</tr>
									</table>
									<br />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br />
		<div style="text-align: center;">
               <input type="button" class="btn btn-primary" name="diagnosis_add" id="diagnosis_add" value="작성 완료" onclick="location='/patientInfo'" style="border-radius:50px;width: 110px;text-align: center; color: white;">
			</div>
            <br />
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
</html>