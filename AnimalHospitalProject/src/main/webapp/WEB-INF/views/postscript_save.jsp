<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Medilab Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
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

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
table {
	width: 800px;
	margin: auto;
	padding: 10px;
	border: 1px solid black;
}

tr {
	border:none ;
	padding: 10px;
	padding-bottom: 50px;
}

.title {
	text-align: center;
	font-size: 18pt;
	border: none;
}

.info {
	text-align: right;
	border: none;
}

.item {
	text-align: left;
	padding: 5px;
	border: 3px solid gray;
}

.item_title {
	text-align: left;
	background-color: silver;
	padding: 5px;
	border: 3px solid gray;
}

.page_list {
	text-align: center;
	font-size: 12pt;
	border: none;
}

.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 2.25rem;
	line-height: 3rem;
	justify-content: space-around;
	padding: 0 0.2em;
	text-align: left;
	width: 7em;
	left: -500px;
}

.star-rating input {
	display: none;
}

.star-rating label {
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 2.3px;
	-webkit-text-stroke-color: #2b2a29;
	cursor: pointer;
}

.star-rating :checked ~ label {
	-webkit-text-fill-color: gold;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	-webkit-text-fill-color: #fff58c;
}
.mb-3 tr{
  position : relative;
  border: solid black 1px;
  width : 800px;
  height : 40px;
  border-radius: 150px;
}

.mb-3 tr .starText{
  position : absolute;
  top : 0;
  left : 0;
  font-size : 20pt;
}

.mb-3 tr .star-rating{
  position : absolute;
  top : -6px;
  left : 60px;
  font-size : 20pt;
}
</style>
<script type="text/javascript">
	$(function() {
		// 폼 전송시 폼내용 검증
		$("#insertForm").submit(function() {
			var value = $("#content").val();
			if (value == null || value.trim().length == 0) {
				alert('내용을 넣으세요.');
				$("#content").val("");
				$("#content").focus();
				return false;
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<!-- ======= Hero Section ======= -->
	<section class="d-flex align-items-center">
		<div class="container"></div>
	</section>
	<!-- End Hero -->
	<main id="main">
		<!-- ======= Appointment Section ======= -->
		<section id="appointment" class="appointment section-bg">
			<div class="container">

				<div class="section-title">
					<h2>후기 작성</h2>
				</div>
				<form class="mb-3" name="myForm" id="myform" method="post">
					<table style="background-color: white;">
						<tr >
							<td style="font-size: 18pt;font-weight: bold;">별점 :</td>
							<td class="star-rating space-x-4 mx-auto">
								<input type="radio" id="5-stars" name="rating" value="5" /> 
								<label	for="5-stars" class="star pr-4">★</label> 
								<input type="radio"	id="4-stars" name="rating" value="4" /> 
								<label for="4-stars" class="star">★</label> 
								<input type="radio" id="3-stars" name="rating" value="3" /> 
								<label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rating" value="2" /> 
								<label for="2-stars" class="star">★</label> 
								<input type="radio" id="1-star" name="rating" value="1" /> 
								<label for="1-star"	class="star">★</label>
							</td>
						</tr>
					</table>
				</form>
				<form action="insertOk.jsp" method="post" id="insertForm">
					<table style="background-color: white;">
						<tr>
							<td class="title" colspan="4">
								<input type="hidden" name="c" value="1" /> 
								<input type="hidden" name="p" value="10" /> 
								<input type="hidden" name="b" value="10" />
							</td>
						</tr>
						<tr>
							<td align="left" valign="top" style="font-size: 18pt;font-weight: bold;">내용 :</td>
							<td colspan="4">
								<textarea name="content" id="content" rows="10" cols="90" required="required" ></textarea>
							</td>
						</tr>
						<tr>
							<td  align="right">
								<input type="button" a href="" class="btn btn-secondary"
									style="float: left; margin-left: 5%;" value="이 전" />
							</td>
							<td align="right">
								<input type="submit" a href="" class="appointment-btn scrollto"
									style="float: right; margin-right: 10px;" value="저장하기" />
							</td>
						</tr>
					</table>
				</form>
			</div>
		</section>
		<!-- End Appointment Section -->
	</main>
	<!-- End #main -->

	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
</html>