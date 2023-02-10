<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="animalHospital@example.com">animalHospital@example.com</a>
        <i class="bi bi-phone"></i> 031) 111 - 1111
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Medilab</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto" href="/">메인페이지</a></li>
          <li><a class="nav-link scrollto" href="/serviceIntroduce">서비스소개</a></li>
          <li class="dropdown"><a href="#"><span>수의사 전용 페이지</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/patientList">전체환자 조회</a></li>
              <li><a href="/scheduleDoctor">스게줄 관리</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>보호자 전용 페이지</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/animallookup">환자 조회</a></li>
              <li><a href="/scheduleProtector">예약 확인</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="/notice">공지리스트</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
  </header><!-- End Header -->