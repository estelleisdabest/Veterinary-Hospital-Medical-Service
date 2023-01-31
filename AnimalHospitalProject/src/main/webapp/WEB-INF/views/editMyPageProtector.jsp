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
</head>

<body>

  <%@ include file="/WEB-INF/includes/header.jsp" %>

  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

	<br />
		<div class="section-title">
          <h2>내 정보 수정</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
  
		<form action="edit">
		<table align="center">
			<tr> 
				<th>이름</th>
					<td><input type="text" name="name" id="name" readonly="readonly" size="30" ></td>
			</tr>
			<tr> 
				<th>ID</th>
					<td><input type="text" name="id" id="id" readonly="readonly" size="30"></td>
			</tr>
			<tr> 
				<th>비밀번호</th>
					<td><input type="password" name="password" id="password" required="required" placeholder="수정할 비밀번호를 입력해주세요." size="30"></td>
			</tr>
			<tr> 
				<th>생년월일</th>
					<td><input type="text" name="birthday" id="birth" readonly="readonly" size="30"></td>
			</tr>
			<tr> 
				<th>전화번호</th>
					<td><input type="text" name="phone" id="phone" size="30" placeholder="수정할 전화번호를 입력해주세요."></td>
			</tr>
			<tr>
	            <th>주소</th>
	            <td><input type="text" id="address_kakao" name="address" readonly="readonly" size="30" placeholder="클릭시 주소가 검색됩니다."/></td>
	        </tr>
    	    <tr>
	            <th>상세 주소</th>
	            <td><input type="text" name="address_detail" size="30" placeholder="상세주소를 입력해주세요"/></td>
	        </tr>
 		</table>
 		<hr/>
  			 <div style="text-align: center"><input class="btn btn-primary btn-sm" type="submit" value="수정" size="30"></div>
		</form>

      </div>
    </section>

  </main><!-- End #main -->


  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
</html>