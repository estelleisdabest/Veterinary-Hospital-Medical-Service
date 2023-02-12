<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>공지사항 추가</title>
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

	textarea {
	border-radius: 5px;
	border: 1px solid gray;
	resize: none
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
          <h2 style="font-weight: bold; font-size: 30px;">
          <br /> 공지사항 추가</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="inner-page">
      <div class="container">
        <form class="noticeForm">  
        <div class="col-md-4 form-group" style="margin: auto;">      
          작성자 <br />
          <input id="writer" class="form-control" type="text" name="writer" value="김아무개" readonly style="width: 700px; background-color: #F5F5F5; '"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
          진료병원 <br />
          <input id="animalHospital" class="form-control" type="text" name="animalHospital" value="A동물병원" readonly style="width: 700px; background-color: #F5F5F5"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
          작성일 <br />
          <input id="writeDate" class="form-control" type="date" value="2023-01-30" style="width: 700px;"/> <br /> <%-- 현재날짜를 띄움 --%>
          제목 <br />
          <textarea id="subject" class="form-control" name="content" rows="1" maxlength="50" required="required" placeholder="제목을 입력해주세요." style="width: 700px;"></textarea> <br />
          내용 <br />
          <textarea id="content" class="form-control" name="content" rows="20" maxlength="500" required="required" placeholder="내용을 입력해주세요." style="width: 700px; height: 500px;"></textarea> <br />
        </div>
        </form>
            <div class="col-md-4 form-group" style="margin: auto;">
               <input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/notice'" style="border-radius:50px;width: 110px;text-align: center;color: white;">
               <input type="button" class="btn btn-primary" name="notice_add" id="notice_add" value="확인" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white;">
            </div>
      </div>
    </section>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#notice_add').on('click', function() {
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
        	   $('#notice_add').attr('onclick',"location='/notice'");
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