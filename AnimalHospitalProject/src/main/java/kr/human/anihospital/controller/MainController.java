package kr.human.anihospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	// 메인 페이지
	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("inner")
	public String inner() {
		return "inner";
	}

	// 로그인 페이지
	@GetMapping("/signin")
	public String signin() {
		return "signin";
	}

	// 후기 작성
	@GetMapping("/postscriptSave")
	public String postscriptSave() {
		return "postscriptSave";
	}

	// 후기 수정
	@GetMapping("/postscriptUpdate")
	public String postscriptUpdate() {
		return "postscriptUpdate";
	}
	
	@GetMapping("/postscript_update")
	public String postscript_update() {
		return "postscript_update";
	}

	// 공지 사항
	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}

	// 공지 사항 추가
	@GetMapping("/noticeAdd")
	public String noticeAdd() {
		return "noticeAdd";
	}

	// 공지 사항 수정 및 삭제
	@GetMapping("/noticeModify")
	public String noticeModify() {
		return "noticeModify";
	}

	// 환자 정보 수정 (의사 용)
	@GetMapping("/patientInfoEditDoctor")
	public String patientInfoEditDoctor() {
		return "patientInfoEditDoctor";
	}

	// 환자 조회 페이지
	@GetMapping("/animallookup")
	public String animallookup() {
		return "animallookup";
	}

	// 환자 조회 (한 환자의 진료 이력 리스트)
	@GetMapping("/animallookupdetail")
	public String animallookupdetail() {
		return "animallookupdetail";
	}

	// 진료 내역
	@GetMapping("/diagnosis")
	public String diagnosis() {
		return "diagnosis";
	}

	// 약관동의 및 역할 체크
	@GetMapping("/roleCheck")
	public String roleCheck() {
		return "roleCheck";
	}

	// 의사 전용 회원가입
	@GetMapping("/doctorMemberJoin")
	public String doctorMemberJoin() {
		return "doctorMemberJoin";
	}

	// 보호자 전용 회원가입
	@GetMapping("/protectorMemberJoin")
	public String protectorMemberJoin() {
		return "protectorMemberJoin";
	}

	// 내 정보 수정 (보호자 용)
	@GetMapping("/editMyPageProtector")
	public String editMyPageProtector() {
		return "editMyPageProtector";
	}

	// 내 정보
	@GetMapping("/myPageProtector")
	public String myPageProtector() {
		return "myPageProtector";
	}

	// 서비스 소개
	@GetMapping("/serviceIntroduce")
	public String serviceIntroduce() {
		return "serviceIntroduce";
	}

	// 스케줄 관리
	@GetMapping("/scheduleDoctor")
	public String scheduleDoctor() {
		return "scheduleDoctor";
	}

	// 나의 예약 정보
	@GetMapping("/scheduleProtector")
	public String scheduleProtector() {
		return "scheduleProtector";
	}

	// 환자 추가
	@GetMapping("/patientAdd")
	public String patientAdd() {
		return "patientAdd";
	}

	// 담당 환자 전체 조회
	@GetMapping("/patientList")
	public String patientList() {
		return "patientList";
	}

	// 동물 병원 위치 조회
	@GetMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}
	
	// 약국 위치 조회
	@GetMapping("/pharmMap")
	public String pharmMap() {
		return "pharmMap";
	}
	
	// 환자 정보 및 이전 진료 내역
	@GetMapping("/patientInfo")
	public String patientInfo() {
		return "patientInfo";
	}

	// 내 정보
	@GetMapping("/doctorInfo")
	public String doctorInfo() {
		return "doctorInformation";
	}

	// 내 정보 수정 (의사 용)
	@GetMapping("/doctorInfoEdit")
	public String doctorInfoEdit() {
		return "doctorInfoEdit";
	}

	// 약 처방 페이지
	@GetMapping("/medicineAdd")
	public String medicineAdd() {
		return "medicineAdd";
	}
	
	// 처뱡약 리스트 페이지
	@GetMapping("/medicineList")
	public String medicineList() {
		return "medicineList";
	}
	
	// 병원 정보 추가
	@GetMapping("/hospitalAdd")
	public String hospitalAdd() {
		return "hospitalAdd";
	}
	
	// 병원 정보 수정
	@GetMapping("/hospitalEdit")
	public String hospitalEdit() {
		return "hospitalEdit";
	}

	// 환자 정보 수정 (보호자 용)
	@GetMapping("/patientInfoEditGuardian")
	public String patientInfoEditGuardian() {
		return "patientInfoEditGuardian";
	}
	
	// 약국 정보 추가
	@GetMapping("/pharmacyInfoAdd")
	public String pharmacyInfoAdd() {
		return "pharmacyInfoAdd";
	}
	
	// 약국 정보 수정
	@GetMapping("/pharmacyInfoEdit")
	public String pharmacyInfoEdit() {
		return "pharmacyInfoEdit";
	}
}
