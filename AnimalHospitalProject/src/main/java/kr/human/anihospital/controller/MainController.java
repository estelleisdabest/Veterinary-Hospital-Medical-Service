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

	// 공지 사항
	//	@GetMapping("/notice")
	//	public String notice() {
	//		return "notice";
	//	}

	// 공지 사항 추가
	@GetMapping("/noticeAdd")
	public String noticeAdd() {
		return "noticeAdd";
	}

	// 공지 사항 수정 및 삭제
	@GetMapping("/noticeEdit")
	public String noticeEdit() {
		return "noticeEdit";
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

	/*
	 * // 내 정보 수정 (보호자 용)
	 * 
	 * @GetMapping("/editMyPageProtector") public String editMyPageProtector() {
	 * return "editMyPageProtector"; }
	 */

	/*
	 * // 내 정보
	 * 
	 * @GetMapping("/myPageProtector") public String myPageProtector() { return
	 * "myPageProtector"; }
	 */

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

	@GetMapping("/hospitalMap")
	public String hospitalMap() {
		return "hospitalMap";
	}

	@GetMapping("/hospitalAdd")
	public String hospitalAdd() {
		return "hospitalAdd";
	}

	@GetMapping("/hospitalEdit")
	public String hospitalEdit() {
		return "hospitalEdit";
	}

	// 약국 위치 조회
	@GetMapping("/pharmacyMap")
	public String pharmacyMap() {
		return "pharmacyMap";
	}

	// 약국 위치 추가
	@GetMapping("/pharmacyInfoAdd")
	public String pharmacyInfoAdd() {
		return "pharmacyInfoAdd";
	}

	// 약국 위치 수정
	@GetMapping("/pharmacyInfoEdit")
	public String pharmacyInfoEdit() {
		return "pharmacyInfoEdit";
	}

	// 환자 정보 및 이전 진료 내역
	@GetMapping("/patientInfo")
	public String patientInfo() {
		return "patientInfo";
	}

	// 내 정보
	@GetMapping("/doctorInfo")
	public String doctorInfo() {
		return "doctorInfo";
	}

	// 내 정보 수정 (의사 용)
	@GetMapping("/doctorInfoEdit")
	public String doctorInfoEdit() {
		return "doctorInfoEdit";
	}

	// 환자 정보 수정 (보호자 용)
	@GetMapping("/patientInfoEditProtector")
	public String patientInfoEditProtector() {
		return "patientInfoEditProtector";
	}

	// 진단서 작성
	@GetMapping("/diagnosisAdd")
	public String diagnosisAdd() {
		return "diagnosisAdd";
	}

	// 진단서 상세
	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		return "noticeDetail";
	}
}
