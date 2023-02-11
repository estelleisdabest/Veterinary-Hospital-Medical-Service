<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>나의 스케줄(의사)</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!-- Tables - SB Admin -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<style type="text/css">
#gridContainer {
	display: grid;
	grid-auto-rows: minmax(100px, auto);
	grid-template-columns: 75% 25%;
	position: static;
}
#do {
	padding: 10px;
	margin-bottom: 10px; 
	border: 1px solid #CCCCFF; 
	border-radius: 10px;
	background-color: transparent;
    box-shadow: 2px 2px 5px 0px rgba(200,200,200,1);
}
#today{
	display: inline;
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
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">스케줄 관리</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="container">
				<div id="gridContainer">
					<div id="mainContainer">
						<h4 style="text-align: center;"><b>나의 스케줄</b></h4>
						<iframe src="https://calendar.google.com/calendar/embed?src=75e1efd2c444b0e1d243b7fe83e3e542f03f13b5b91f3b49d8aef1660d7b819d%40group.calendar.google.com&ctz=Asia%2FSeoul" style="border: 0" width="95%" height="600" frameborder="0" scrolling="no"></iframe>
					</div>
					<div id="rightContainer">
						<div id="toDoList">
							<h4 style="text-align: center;"><b>to do list</b></h4>
							<div id="do">
								<p id="today"><b>오늘의 할 일</b></p> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-primary btn-sm" style="border-radius: 50px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  										<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
									</svg>
									추가하기
								</button>
								<hr/>
								<p style="text-align: center; font-size: 10.5pt;" >등록되지 않았습니다.</p>
							</div>
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