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
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
  <!-- Tables - SB Admin -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
  <link href="css/styles.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">
  
  <style type="text/css">
	
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
          <h2>환자 정보 수정</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
      <div class="main">
		<form action="">
		<table align="center">
			<tr>
				<th>사진수정</th>
					<td><input type="file" id="photo" name="photo"></td>
			</tr>
			<tr>
				<th>동영상 수정</th>
					<td><input type="file" id="movie" name="movie"></td>
			</tr>
			<tr>
				<th>이름</th>
					<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<th>나이</th>
					<td><input type="number" id="age" name="age" > 살</td>
			</tr>
			<tr>
				<th>동물종</th>
					<td>
						<input type="text" id="type1" name="type1" autocomplete="on" list="keywords1">
						<datalist id="keywords1">
							<option value="강아지"></option>
							<option value="고양이"></option>
							<option value="새"></option>
							<option value="토끼"></option>
							<option value="햄스터"></option>
						</datalist>
					</td>
			</tr>
			<tr>
				<th>품종</th>
					<td><input type="text" id="type2" name="type2"></td>
			</tr>
			<tr>
				<th>동물크기</th>
					<td>
						<input type="text" id="height" name="height" autocomplete="on" list="keyword2">
						<datalist id="keyword2">
							<option value="대형"/>
							<option value="중형"/>
							<option value="소형"/>
						</datalist>
						</td>
			</tr>
			<tr>
				<th>동물몸무개</th>
					<td><input type="number" id="weight" name="weight"> g</td>
			</tr>
			<tr>
				<th>특이 사항</th>
					<td><textarea type="text" id="name" name="name" style="width: 185px;"></textarea></td>
			</tr>

      </table>
	  <hr/>
  	  		<div style="text-align: center"><input class="btn btn-primary btn-sm" type="submit" value="수정"></div>
      
      </form>
      </div>
      </div>
    </section>

  </main><!-- End #main -->


  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>

</body>

</html>