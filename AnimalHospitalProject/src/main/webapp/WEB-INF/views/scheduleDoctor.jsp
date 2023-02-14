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
	input[name="toDoTime"] {
		width: 50%;
		height: 38px;
		border: 1px solid #ced4da;
		margin-right:10px;
		border-radius: 5px;
	}
	input[name="updateTime"] {
		width: 50%;
		height: 38px;
		border: 1px solid #ced4da;
		margin-right:10px;
		border-radius: 5px;
	}
	input[name="toDoSubject"] {
		width: 100%;
		height: 38px;
		border: 1px solid #ced4da;
		margin-right:10px;
		border-radius: 5px;
	}
	input[name="toDoContent"] {
		width: 100%;
		height: 38px;
		border: 1px solid #ced4da;
		margin-right:10px;
		border-radius: 5px;
	}
	.checked {
  		text-decoration: line-through;
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
								<button type="button" class="btn btn-primary" style="border-radius: 50px; float: right;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  										<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
									</svg>
									등록하기
								</button>
								<!-- Modal -->
								<form action="">
								<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h1 class="modal-title fs-5" id="staticBackdropLabel">오늘의 할 일</h1>
								        <button type="button" class="btn-close" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								      	<div>
									      	시간<input type="time" class="form-control" name="toDoTime" id="toDoTime">
								      	</div>
								      	<div id="timeMessage"></div>
								      	<br/>
								      	<div>
											제목<input type="text" class="form-control" name="toDoSubject" id="toDoSubject" maxlength="50">
								      	</div>
								      	<div id="subjectMessage"></div>
								      	<br/>
								      	<div>
								      		<label>내용
									      		<textarea rows="4px" cols="100%" class="form-control" id="toDoContent" maxlength="100"></textarea>
								      		</label>
								      	</div>
								      	<div id="contentMessage"></div>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" style="border-radius: 50px;" data-bs-dismiss="modal">취소하기</button>
								        <button type="button" class="btn btn-primary" id="insertToDo" style="border-radius: 50px;">등록하기</button>
								      </div>
								    </div>
								  </div>
								</div>
								</form>
								<br/>
								<hr/>
								<div class="form-check" id="toDoCheck">
								<div>
									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
									<label class="form-check-label for="flexCheckDefault" id="toDoToday" title="A환자 진료보기">15:00 진료</label>						
									<input type="button" class="btn btn-primary"  style="border-radius: 50px; float: right;" value="수정하기" data-bs-toggle="modal" data-bs-target="#exampleModal">
								</div>
								<br/>
									<!-- Modal -->
									<div class="modal fade" id="exampleModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h1 class="modal-title fs-5" id="exampleModalLabel">수정하기</h1>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
										  <div class="modal-body">
									      	<div>
										      	시간<input type="time" class="form-control" name="updateTime" id="updateTime">
									      	</div>
									      	<div id="timeMessage2"></div>
									      	<br/>
									      	<div>
												제목<input type="text" class="form-control" name="updateSubject" id="updateSubject" maxlength="50">
										     </div>
										     <div id="subjectMessage2"></div>
										   		<br/>
										      <div>
										      	<label>내용
											      	<textarea rows="4px" cols="100%" class="form-control" id="updateContent" maxlength="100"></textarea>										      		
											     </label>
									      	</div>
									      	<div id="contentMessage2"></div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" style="border-radius: 50px;" data-bs-dismiss="modal">취소하기</button>
									        <button type="button" class="btn btn-primary" id="updateToDo" style="border-radius: 50px;">수정하기</button>
									      </div>
									    </div>
									  </div>
									</div>
								</div>
								<%-- <p style="text-align: center; font-size: 10.5pt;">등록된 내용이 없습니다</p>--%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#insertToDo').on('click', function() {
		var toDoTime = $('#toDoTime').val();
		var toDoSubject = $('#toDoSubject').val();
		var toDoContent = $('#toDoContent').val();
		if(toDoTime==null||toDoTime.trim().length==0){
			$('#toDoTime').attr('style','border-color: #dc3545;');
			$('#toDoTime').val('');
			$('#timeMessage').html('<div id="warning1"><b style="color: red;">시간을 입력해주세요.</b></div>');
			$('#toDoTime').focus();
		}else if(toDoSubject==null||toDoSubject.trim().length==0){
			$('#toDoSubject').attr('style','border-color: #dc3545;');
			$('#toDoSubject').val('');
			$('#subjectMessage').html('<div id="warning2"><b style="color: red;">제목을 입력해주세요.</b></div>');
			$('#toDoSubject').focus();
		}else if(toDoContent==null||toDoContent.trim().length==0){
			$('#toDoContent').attr('style','border-color: #dc3545;');
			$('#toDoContent').val('');
			$('#contentMessage').html('<div id="warning3"><b style="color: red;">내용을 입력해주세요.</b></div>');
			$('#toDoContent').focus();
		}else{
			var result = window.confirm('작성한 내용을 등록하시겠습니까?');
			if(result) {
		     	alert('정상적으로 등록되었습니다.');
				location.href='/scheduleDoctor';
			}
		}
	});
});
$('#toDoTime').on('input',function(){
	if($('#toDoTime').val() !=''){
		$('#toDoTime').attr('style','border-color : #ced4da;');
		$('#warning1').remove();
	}
});
$('#toDoSubject').on('input',function(){
	if($('#toDoSubject').val() !=''){
		$('#toDoSubject').attr('style','border-color : #ced4da;');
		$('#warning2').remove();
	}
});
$('#toDoContent').on('input',function(){
	if($('#toDoContent').val() !=''){
		$('#toDoContent').attr('style','border-color : #ced4da;');
		$('#warning3').remove();
	}
});
$(function(){
	$('#updateToDo').on('click', function() {
		var updateTime = $('#updateTime').val();
		var updateSubject = $('#updateSubject').val();
		var updateContent = $('#updateContent').val();
		if(updateTime==null||updateTime.trim().length==0){
			$('#updateTime').attr('style','border-color: #dc3545;');
			$('#updateTime').val('');
			$('#timeMessage2').html('<div id="warning1"><b style="color: red;">시간을 입력해주세요.</b></div>');
			$('#updateTime').focus();
		}else if(updateSubject==null||updateSubject.trim().length==0){
			$('#updateSubject').attr('style','border-color: #dc3545;');
			$('#updateSubject').val('');
			$('#subjectMessage2').html('<div id="warning2"><b style="color: red;">제목을 입력해주세요.</b></div>');
			$('#updateSubject').focus();
		}else if(updateContent==null||updateContent.trim().length==0){
			$('#updateContent').attr('style','border-color: #dc3545;');
			$('#updateContent').val('');
			$('#contentMessage2').html('<div id="warning3"><b style="color: red;">내용을 입력해주세요.</b></div>');
			$('#updateContent').focus();
		}else{
			var result = window.confirm('작성한 내용을 수정하시겠습니까?');
			if(result) {
		     	alert('정상적으로 수정되었습니다.');
				location.href='/scheduleDoctor';
			}
		}
	});
});
$('#updateTime').on('input',function(){
	if($('#updateTime').val() !=''){
		$('#updateTime').attr('style','border-color : #ced4da;');
		$('#warning1').remove();
	}
});
$('#updateSubject').on('input',function(){
	if($('#updateSubject').val() !=''){
		$('#updateSubject').attr('style','border-color : #ced4da;');
		$('#warning2').remove();
	}
});
$('#updateContent').on('input',function(){
	if($('#updateContent').val() !=''){
		$('#updateContent').attr('style','border-color : #ced4da;');
		$('#warning3').remove();
	}
});
$('#flexCheckDefault').on('click',function(){
	if($(this).is(':checked')){
		$('#toDoToday').attr('style','text-decoration: line-through;');
	}else{
		$('#toDoToday').attr('style','text-decoration: none;');
	}
});

</script>
</html>