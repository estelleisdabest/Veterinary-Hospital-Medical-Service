<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>공지사항 수정</title>
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
	#test{
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
</head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">
        <form method="post" action="noticeEdit" id="noticeEditSubmit">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
		<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">공지사항 수정</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="inner-page">
      <div class="container">
        <div id="test">       
         <div class="col-md-4 form-group" style="margin: auto;">  
	          작성자 <br />
	          <input id="username" class="form-control"  type="text" name="username" value="김아무개" disabled="disabled" style="width: 700px;"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
	          진료병원 <br />
	          <input id="animalHospital" class="form-control"  type="text" name="animalHospital" value="A동물병원" disabled="disabled" style="width: 700px;"/> <br /> <%-- 회원가입했을 때 입력된 정보를 띄움 --%>
	          작성일 <br />
	          <input type="date" class="form-control"  id="writeDate" value="2023-01-30" disabled="disabled" style="width: 700px;" /> <br />  <%-- 수정한날짜로 띄운 후 변경 --%>
	          제목 <br />
	          <textarea id="noticeSubject" class="form-control" name="noticeSubject" rows="1" cols="100" maxlength="50" required="required" style="width: 700px;"> 01월 30일 휴무 안내</textarea> <br /> <%-- 작성했던 글을 불러와 열람/ 수정 및 삭제 --%>
	          내용 <br />
	          <textarea id="noticeContent" class="form-control" name="noticeContent" rows="20" cols="100" maxlength="500" required="required" style="width: 700px;"> 01월 30일 휴무 안내드립니다.</textarea> <br /> <%-- 작성했던 글을 불러와 열람/ 수정 및 삭제 --%>
	      </div>
        </div>
            <div class="col-md-4 form-group" style="margin: auto;">
               <input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/noticeDetail'" style="border-radius:50px;width: 110px;text-align: center;color: white;">
               <input type="button" class="btn btn-primary" name="notice_edit" id="notice_edit" value="확인" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white; mar">
            </div>
      </div>
    </section>
        </form>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
       $('#notice_edit').on('click', function() {
          var noticeSubject = $('#noticeSubject').val();
          var noticeContent = $('#noticeContent').val();
          if(noticeSubject==null||noticeSubject.trim().length==0){
               $('#noticeSubject').focus();
               $('#noticeSubject').attr('style','border-color: #dc3545; margin:auto;width:700px;');
           	   $('#noticeSubject').val('');
           	   $('#noticeSubject').after('<div id="warning" style=" width:700px;"><b style="color: red; width:700px;">제목을 입력해주세요</b></div>');
           }else if(noticeContent==null||noticeContent.trim().length==0){
        	   $('#noticeContent').focus();
               $('#noticeContent').attr('style','border-color: #dc3545; margin:auto; width:700px; height: 500px;');
           	   $('#noticeContent').val('');
           	   $('#noticeContent').after('<div id="warning" style=" width:700px;"><b style="color: red; width:700px;">내용을 입력해주세요.</b></div>');
           }else{
				var result = window.confirm('작성한 내용으로 수정하시겠습니까?');
				if (result) {
					alert('정상적으로 처리되었습니다.');
					$("#noticeEditSubmit").submit();
				} else if (!result) {
					alert('취소되었습니다.');
				}
           }
       });
});       
$('#noticeSubject').on('input',function(){
	if($('#noticeSubject').val() !=''){
		$('#noticeSubject').attr('style','width:700px;');
		$('#warning').remove();
	}
})
$('#noticeContent').on('input',function(){
	if($('#noticeContent').val() !=''){
		$('#noticeContent').attr('style','width:700px;');
		$('#warning').remove();
	}
})
</script>
</html>