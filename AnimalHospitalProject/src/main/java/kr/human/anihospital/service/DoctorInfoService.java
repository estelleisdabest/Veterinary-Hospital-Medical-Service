package kr.human.anihospital.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.DoctorInfoMapper;
import kr.human.anihospital.vo.DoctorVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class DoctorInfoService {

	@Autowired
	DoctorInfoMapper doctorInfoMapper;

	public Map<String, Object> viewMyInfoDoctor(int seq) {
		Map<String, Object> viewMyInfoDoctorMap = new HashMap<>();
		DoctorVO doctorVO = new DoctorVO();
		try {
			doctorVO = doctorInfoMapper.viewMyInfoDoctor(seq);
			viewMyInfoDoctorMap.put("seqDoctor", doctorVO.getSeqDoctor());
			viewMyInfoDoctorMap.put("doctorId", doctorVO.getDoctorId());
			viewMyInfoDoctorMap.put("doctorGender", doctorVO.isDoctorGender());
			viewMyInfoDoctorMap.put("doctorName", doctorVO.getDoctorName());
			viewMyInfoDoctorMap.put("doctorAge", doctorVO.getDoctorAge());
			viewMyInfoDoctorMap.put("doctorWorkYear", doctorVO.getDoctorWorkYear());
			viewMyInfoDoctorMap.put("doctorRegNo", doctorVO.getDoctorRegistrationNumber());
			viewMyInfoDoctorMap.put("doctorPhoneNo", doctorVO.getDoctorPhoneNo());
			viewMyInfoDoctorMap.put("doctorAddress", doctorVO.getDoctorAddress());
			viewMyInfoDoctorMap.put("doctorEducation", doctorVO.getDoctorEducation());
			viewMyInfoDoctorMap.put("doctorWorkSpace", doctorVO.getDoctorWorkSpace());
			viewMyInfoDoctorMap.put("doctorSay", doctorVO.getDoctorSay());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return viewMyInfoDoctorMap;
	}

	public void editMyInfoDoctor(Map<String, Object> map) {
		map.put("doctorAddress", (String.valueOf(map.get("inputKakao"))+ " " + String.valueOf(map.get("address"))));
		log.info("Edit Map : {}", map);
		try {
			doctorInfoMapper.editMyInfoDoctor(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("정보 수정 성공");
	}
}
