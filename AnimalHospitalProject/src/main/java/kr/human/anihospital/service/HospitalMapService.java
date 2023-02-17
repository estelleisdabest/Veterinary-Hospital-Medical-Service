package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.HospitalMapMapper;
import kr.human.anihospital.vo.AnimalHospitalVO;

@Service
public class HospitalMapService {

	@Autowired
	HospitalMapMapper hospitalMapMapper;
	
	public List<AnimalHospitalVO> selectMap(){
		List<AnimalHospitalVO> list = null;
		try {
			list = hospitalMapMapper.selectMap();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
