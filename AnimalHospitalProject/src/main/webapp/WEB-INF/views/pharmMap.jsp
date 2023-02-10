<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">


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
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

	<br />
		<div class="section-title">
		<h2 style="font-weight: bold; font-size: 30px;">약국 위치 조회</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
    <!-- 지도 검색 -->
    <br /><br /><br /><br />
		<div class="col-sm-5" style="padding-left:6%;">
			<div class="wrap">
				<input type="text" class="form-control" readonly="readonly"
					id="inputKakao" placeholder="주소찾기 버튼을 눌러주세요"> &nbsp;&nbsp;<input
					type="button" name="address_kakao" id="address_kakao"
					onclick="sample4_execDaumPostcode()"
					class="btn btn-primary btn-sm" value="주소찾기"
					style="border-radius: 50px; width: 110px; text-align: center; float: right; color: white;">
			</div>
			<div class="validate"></div>
		</div>
	<br />
	<div class=container >
		<div class=row>
			<div class=col-12>
				<div class=mapouter>
					<div class=gmap_canvas>
						<iframe width="100%" height=500 id=gmap_canvas
							src="https://maps.google.com/maps?q=New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
							frameborder=0 scrolling=no marginheight=0 marginwidth=0></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
			<p></p>
			<p>
				<br />
			<div class="col-md-4 form-group" style="margin: auto;">
				<input type="button" class="btn btn-primary" name="move_pre_page"
					id="move_pre_page" value="추가하기" onclick="location='/pharmacyInfoAdd'"
					style="border-radius: 50px; width: 110px; text-align: center; color: white;">
				<input type="button" class="btn btn-primary" name="notice_add"
					id="notice_add" value="수정하기" onclick="location='/pharmacyInfoEdit'"
					style="border-radius: 50px; width: 110px; text-align: center; float: right; color: white;">
			</div>
	</div>
	
    <section class="inner-page">
      <div class="container">
      </div>
    </section>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
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
</html>