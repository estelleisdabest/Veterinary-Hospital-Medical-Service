<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>약국 정보 추가</title>
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

  <!-- Tables - SB Admin -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

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
          <h2 style="font-weight: bold; font-size: 30px;">약국 정보 추가</h2>
          <br />
			<p>
				약국 정보 표시 화면에 표시할 약국 정보를 등록하는 화면입니다.<br>
				<b style="color: red;">위도, 경도</b> 값을 정확히 입력해주세요.
			</p>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
			<div class="container">
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="name">약국 이름</label> <input type="text"
							class="form-control" name="pharmacy_name" id="pharmacy_name" placeholder="약국이름을 입력해주세요">
						<div class="validate"></div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="address">약국 주소</label>
						<div class="wrap">
							<input type="text" class="form-control" readonly="readonly" id="input_pharmacy_address" placeholder="주소찾기 버튼을 눌러주세요"> &nbsp;
							<input type="button" name="pharmacy_address" id="pharmacy_address" onclick="sample4_execDaumPostcode()" class="btn btn-primary btn" value="주소찾기" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
						</div>
						<div class="validate"></div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="address">약국 상세주소</label> 
						<input type="text" class="form-control" name="pharmacy_address_detail" id="pharmacy_address_detail" placeholder="수정할 상세주소를 입력해주세요" data-rule="age" data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="phone">약국 전화번호</label> 
						<input type="text" class="form-control" name="pharmacy_phone" id="pharmacy_phone" placeholder="수정할 전화번호를 입력해주세요" data-rule="int" data-msg="필수입력 항목입니다.">
						<div class="validate"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="id">위도</label> <input type="text" class="form-control"
							name="pharmacy_location_latitude" id="pharmacy_location_latitude" data-rule="text"
							data-msg="필수입력 항목입니다." placeholder="위도를 입력해주세요">
						<div class="validate"></div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-4 form-group mt-3">
						<div class="validate"></div>
					</div>
					<div class="col-md-4 form-group mt-3">
						<label for="id">경도</label> <input type="text" class="form-control"
							name="pharmacy_location_longitude" id="pharmacy_location_longitude" data-rule="text"
							data-msg="필수입력 항목입니다." placeholder="경도를 입력해주세요">
						<div class="validate"></div>
					</div>
				</div>
				<br>
				<div class="row">
					<p></p>
					<p>
					<div class="col-md-4 form-group" style="margin: auto;">
						<input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/hosMap'" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; color: white;">
						<input type="button" class="btn btn-primary" name="hospital_info_add" id="hospital_info_add" value="추가하기" onclick="location='/hosMap'" style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
					</div>
				</div>
			</div>
		</section>
  </main><!-- End #main -->
  <br>
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("pharmacy_address")
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
													.getElementById("input_pharmacy_address").value = data.address; // 주소 넣기
										}
									}).open({
									    left: (window.screen.width / 2) - (width / 2),
									    top: (window.screen.height / 2) - (height / 2)
									});
						});
	}
</script>
</html>