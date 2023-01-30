<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
</head>

<body>

	<%@ include file="/WEB-INF/includes/header.jsp"%>

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center"></section>
	<!-- End Hero -->

	<main id="main">
		<!-- ======= Appointment Section ======= -->
		<section id="appointment" class="appointment section-bg">
			<div class="container">

				<div class="section-title">
					<h2>약관동의 및 역할체크</h2>
				</div>
				<div>
					<span class="input_chk" style="text-align: center; display: inline-block; margin: auto; width: 250px; line-height: 50px;">
						<input type="checkbox" id="using_check" name="using_check" class="using_check" value="3">
						<label for="using_check">
							이용약관 동의
						</label>
					</span>
				</div>
				<div class="terms_box" tabindex="0" id="divPrivacy" style="position: relative;width:1000px; overflow: auto;height: 200px;margin:auto; margin-top: 8px;padding: 12px;border: 1px solid #dadada;background: #fff;box-sizing: border-box;">
					<div class="article">
						<h3 class="article__title">회원 이용약관</h3>
						<p class="article__text">
							제 1 조 (목적)
						</p>
							이 약관은 주식회사 aaa(이하 “회사”라 함)가 제공하는   서비스 이용과 관련하여 회사와 이용자(이라 “회원”이라 함)간에 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
						<p>
						</p>
						<p class="article__text">
							제 2 조 (정의)
						</p>
						<p>
							이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
						</p>
						<p>
							1.	“서비스”라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 “회원”이 이용할 수 있는  과 관련 제반 서비스를 의미합니다. <br>
							i.	  서비스 <br>
							ii.	기타 회사가 정하는 서비스 <br>
							2.	”  서비스”라 함은   모바일 접수/예약, 대기현황, 결제 서비스 등 “회사”가 ”회원”에게 제공하는 서비스를 말합니다 <br>
							3.	“회원”이라 함은 이 약관에 동의하고, 이용계약(이하 “회원가입”이라 함)을 하여 따라 “회사”와 이용계약을 체결하고 “회사”가 제공하는 제반 서비스를 이용할 수 있는 자격을 부여 받은 자를 뜻합니다. <br>
							4.	”기타 회사가 정하는 서비스”라 함은 “회사”가 추가 개발하거나 다른 회사와의 제휴 계약 등을 통해 “회원”에게 제공하는 일체 서비스를 의미합니다. <br>
							5.	“아이디(ID)”라 함은 “회원”의 식별과 “  서비스” 이용을 위하여 “회원”이 정하고 “회사”가 승인하는 문자와 숫자의 조합을 이메일 또는 간편로그인 계정을 의미합니다. <br>
							6.	“비밀번호”라 함은 “회원”이 부여 받은 “아이디와 일치되는 ”회원“임을 확인하고 비밀보호를 위해 ”회원“자신이 정한 문자 또는 숫자의 조합을 의미합니다. <br>
							7.	“단말기”’라 함은 서비스에 접속하기 위해 회원이 이용하는 개인용 컴퓨터, PDA, 휴대전화, 태블릿PC 등의 전산장치를 말합니다. <br>
							8.	“해지”라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다. <br>
							9.	”게시물“이라 함은 ”회원“이 ”서비스“를 이용함에 있어 서비스 상에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. <br>
						</p>
						<p class="article__text">
							제 3 조 (약관의 게시와 개정)
						</p>
						<p>
							1.	“회사”는 이 약관의 내용을 “회원”이 쉽게 알 수 있도록 서비스 내 페이지 화면에 게시합니다. <br>
							2.	“회사”는 “약관의 규제에 관한 법률”, “정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ”정보통신망법“)” 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br>
							3.	“회사”가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제 1 항 규정에 따라 그 개정약관의 적용일자 14일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 중요한 약관을 개정하는 경우에는 개정약관의 적용일자 30일전부터 적용일자까지 공지합니다. <br>
							4.	회사가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다. <br>
							5.	회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다. <br>
						</p>
					</div>
				</div>
				<div>
					<span class="input_chk"
						style="text-align: center; display: inline-block; margin: auto; width: 700px; line-height: 50px;">
						<input type="checkbox" id="roll_doctor" name="roll_doctor"
						class="check_roll" value="1"> <label for="roll_doctor">의사</label>
					</span> <span class="input_chk"> <input type="checkbox"
						id="roll_protector" name="roll_protector" class="check_roll"
						checked="checked" value="2"> <label for="roll_protector">보호자</label>
					</span>
				</div>
			</div>
		</section>
		<!-- End Appointment Section -->
	</main>
	<!-- End #main -->

	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>

</html>