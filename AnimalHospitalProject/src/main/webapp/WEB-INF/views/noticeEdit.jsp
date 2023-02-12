<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>공지사항 수정 및 삭제</title>
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
	form{
	margin-bottom : 60px;
	margin-left : 15%;
	margin-right: 10%;
	width: 20%;
	}
	
	input{
	margin-bottom: 10px;
	border-radius: 5px;
	border: 1px solid gray;
	}
	
	textarea {
	border-radius: 5px;
	border: 1px solid gray;
	resize: none
	}
</style>
<script type="text/javascript">
	window.onload = function () {
		var delete_btn = document.getElementById('delete_btn');
		delete_btn.addEventListener('click', function () {
			var result = window.confirm('정말로 삭제하시겠습니까?');
			
			if(result) {
				alert('정상적으로 처리되었습니다.');
				location.href='/notice';
			}
		});
	};
</script>
</head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
		<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">공지사항 수정 및 삭제</h2>
          <%-- 보호자 또는 수의사로 수정이 아닌 열람만 할 시 if문 사용하여 보이는 제목 --%>
          <%--
          <h2 style="font-weight: bold; font-size: 30px;">공지사항</h2>
           --%>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
	<%-- 보호자 또는 수의사로 수정이 아닌 열람만 할 시 if문 사용하여 readonly --%>
    <section class="inner-page">
      <div class="container">
        <form>       
         <div class="col-md-4 form-group" style="margin: auto;">  
	          작성자 <br />
	          <input id="username" class="form-control"  type="text" name="username" value="김아무개" readonly style="background-color: #F5F5F5; width: 700px;"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
	          진료병원 <br />
	          <input id="animalHospital" class="form-control"  type="text" name="animalHospital" value="A동물병원" readonly style="background-color: #F5F5F5; width: 700px;"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
	          작성일 <br />
	          <input type="date" class="form-control"  id="writeDate" value="2023-01-30" readonly style="background-color: #F5F5F5; width: 700px;" /> <br />  <%-- 열람시에는 작성일, 글을 수정한다면 수정한날짜로 변경 --%>
	          제목 <br />
	          <textarea id="subject" class="form-control" name="subject" rows="1" cols="100" maxlength="50" required="required" style="width: 700px;"> 01월 30일 휴무 안내</textarea> <br /> <%-- 작성했던 글을 불러와 열람/ 수정 및 삭제 --%>
	          내용 <br />
	          <textarea id="content" class="form-control" name="content" rows="20" cols="100" maxlength="500" required="required" style="width: 700px;"> 01월 30일 휴무 안내드립니다.</textarea> <br /> <%-- 작성했던 글을 불러와 열람/ 수정 및 삭제 --%>
	      </div>
        </form>
        <div id="button">
        <button type="submit" id="modify_btn" name="modify_btn" class="btn btn-primary bt-sm" style="border-radius:50px;width: 110px; margin-left: 40%">수정</button>
        <button type="submit" id="delete_btn" name="delete_btn" class="btn btn-danger bt-sm" style="border-radius:50px;width: 110px;">삭제</button> <br />
        </div>
        <%-- 보호자로 로그인하여 열람만 할 시 if문 사용하여 보여줄 버튼 --%>
       <%--
        <div class="before-page" style="position: relative;">
        	<input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/notice'" style="border-radius:50px;width: 110px;margin: auto;text-align: center;color: white;">
        </div>
        --%>
      </div>
    </section>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#modify_btn').on('click', function() {
          var subject = $('#subject').val();
          var content = $('#content').val();
          if(subject==null||subject.trim().length==0){
               $('#subject').focus();
               $('#subject').attr('style','border-color: #dc3545; margin:auto;width:700px;');
           	   $('#subject').val('');
           	   $('#subject').after('<div id="warning" style=" width:700px;"><b style="color: red; width:700px;">제목을 입력해주세요</b></div>');
           }else if(content==null||content.trim().length==0){
        	   $('#content').focus();
               $('#content').attr('style','border-color: #dc3545; margin:auto; width:700px; height: 500px;');
           	   $('#content').val('');
           	   $('#content').after('<div id="warning" style=" width:700px;"><b style="color: red; width:700px;">내용을 입력해주세요.</b></div>');
           }else{
        	   $('#modify_btn').attr('onclick',"location='/notice'");
           }
       });
});       
$('#subject').on('input',function(){
	if($('#subject').val() !=''){
		$('#subject').attr('style','width:700px;');
		$('#warning').remove();
	}
})
$('#content').on('input',function(){
	if($('#content').val() !=''){
		$('#content').attr('style','width:700px;');
		$('#warning').remove();
	}
})
</script>
</html>