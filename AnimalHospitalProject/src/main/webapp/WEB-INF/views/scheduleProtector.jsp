<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Medilab Bootstrap Template - Index</title>
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
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Tables - SB Admin -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">

var fileform=document.getElementById("file");
/*結果出力用の要素*/
var result=document.getElementById("result");
/*ファイル変更のイベントハンドラ*/
fileform.addEventListener("change", (e) => {
  if (window.File) {
    // 指定したファイルの情報を取得
    var inputfile = fileform.files[0];
    // 最後に、反映
    result.text = inputfile.name;
  }
});
</script>
<style type="text/css">
#gridContainer {
	display: grid;
	grid-auto-rows: minmax(100px, auto);
	grid-template-columns: 75% 25%;
	position: static;
}

::placeholder {
	font-size: 12px;
}

input[type=file]::file-selector-button {
  width: 100px;
  height: 35px;
  background: #0066FF;
  color: white;
  font-size: 10.5pt;
  border-radius: 5px;
  cursor: pointer;  
}


</style>
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<%@ include file="/WEB-INF/includes/header.jsp"%>

	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container" >

				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">나의 예약 정보</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<div id="gridContainer" >
					<div id="mainContainer">
					<p>병원을 선택한 후 날짜를 선택하면 진료 예약을 할 수 있습니다.</p>
							<select>
								<option value="myCalendar" >나의 달력</option>
								<option value="" selected="selected">병원선택하기</option>
								<option value="a" >A동물병원</option>
								<option value="b" >B동물병원</option>
								<option value="c" >C동물병원</option>
								<option value="d" >D동물병원</option>
							</select>
							<a onclick="location.href='/map'" class="btn btn-primary btn-sm">병원찾기</a>
							<br/>
						<iframe src="https://calendar.google.com/calendar/embed?src=75e1efd2c444b0e1d243b7fe83e3e542f03f13b5b91f3b49d8aef1660d7b819d%40group.calendar.google.com&ctz=Asia%2FSeoul" style="border: 0" width="95%" height="100%" frameborder="0" scrolling="no"></iframe>
					</div>
					<div id="rightContainer">
						<div id="reservation">
							<h5><b>예약 확인</b></h5>
							<div align="right">
							<select name="patient">
								<option value="" selected="selected">환자선택하기</option>
								<option value="patient1">두둥</option>
								<option value="patient2">나비</option>
								<option value="patient3">초코</option>
							</select>
							</div>
						</div>
						<hr style="border: none; border-top: 1px dashed gray;"/>
						<div>
							<table>
								<tr>
									<td>A동물 병원</td>
								</tr>
								<tr>
									<td>2023년 3월 2일 15:00</td>
								</tr>
								<tr>
									<td>내원이유 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" value="예약수정" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
								<input type="button" class="btn btn-primary btn-sm" value="예약취소" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
							</div>
						<hr style="border: none; border-top: 1px dashed gray;"/>
						</div>
						<hr style="border: none; height: 30px; box-shadow:0 30px 30px -30px inset;"/>
						<%-- 여기까지가 예약 확인 --%>
						<div>
							<form action="">
							<h5><b>예약하기</b></h5>
							<select>
								<option value="" selected="selected">환자선택하기</option>
								<option value="patient1" >두둥</option>
								<option value="patient2" >나비</option>
								<option value="patient3" >초코</option>
							</select>
							<input type="button" class="btn btn-primary btn-sm" onclick="location.href='/patientAdd'"
										value="환자추가" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;" />
							<br/>
							<br/>
							<textarea style="width: 100%" rows="5" cols="30" placeholder="증상을 입력한 후 올리기 버튼을 눌러주세요"></textarea>							
							<div align="right">
								<div>
									<input type="submit" class="btn btn-outline-primary btn-sm" value="증상올리기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center;">
								</div>
								<br/>
								<div align="left">
									<input type="file" class="form-control" name="file" id="file1">
								</div>
							</div>
							<hr style="border: none; border-top: 1px dashed gray;"/>
							<h6 style="text-align: center;"><b>예약내역 확인</b></h6>
							<table>
								<tr>
									<td>선택 병원 : A동물병원</td> 
								</tr>
								<tr>
									<td>선택 일자 : 2023년 3월 4일</td>  <%-- 자동입력 필요  --%>
								</tr>
								<tr>
									<td>선택 시간 : 15:00</td> <%-- 자동입력 필요  --%>
								</tr>
								<tr>
									<td>내원 이유 : 정밀검사</td> <%-- 자동입력 필요  --%>
								</tr>
								<tr>
									<td>사진 및 동영상 : </td><%-- 자동입력 필요 js or jquery  --%>
								</tr>
							</table>
							<br/>
							<div align="right">
								<input type="submit" class="btn btn-primary btn-sm" value="예약하기" style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->


	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>