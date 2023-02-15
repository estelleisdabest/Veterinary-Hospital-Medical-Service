package kr.human.anihospital.service;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.human.anihospital.mapper.PharmacyInfoMapper;
import kr.human.anihospital.vo.PharmacyLocationVO;

@Service
@Transactional
public class PharmacyInfoService {

	@Autowired
	PharmacyInfoMapper pharmacyInfoMapper;

	// 약국을 신규 등록하는 Service.
	public void insertPharmacy(Map<String, String> map) {
		PharmacyLocationVO pharmacyLocationVO = new PharmacyLocationVO();
		pharmacyLocationVO.setAnimalPharmacyName(map.get("pharmacy_name"));
		pharmacyLocationVO
				.setAnimalPharmacyAddress(map.get("input_pharmacy_address") + " " + map.get("pharmacy_address_detail"));
		pharmacyLocationVO.setAnimalPharmacyPhoneNo(map.get("pharmacy_phone"));
		pharmacyLocationVO.setPharmacyLocationLatitude(map.get("pharmacy_location_latitude"));
		pharmacyLocationVO.setPharmacyLocationLongitude(map.get("pharmacy_location_longitude"));
		try {
			pharmacyInfoMapper.insertPharmacy(pharmacyLocationVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 약국을 수정하는 Service. 
	// 매개변수 seq를 필요로 하는 것은 추후 수정할 필요가 있습니다.
	public void updatePharmacy(Map<String, String> map, int seq) {
		PharmacyLocationVO pharmacyLocationVO = new PharmacyLocationVO();
		pharmacyLocationVO.setSeqPharmacyLocation(seq);
		pharmacyLocationVO.setAnimalPharmacyName(map.get("pharmacy_name"));
		pharmacyLocationVO
				.setAnimalPharmacyAddress(map.get("input_pharmacy_address") + " " + map.get("pharmacy_address_detail"));
		pharmacyLocationVO.setAnimalPharmacyPhoneNo(map.get("pharmacy_phone"));
		pharmacyLocationVO.setPharmacyLocationLatitude(map.get("pharmacy_location_latitude"));
		pharmacyLocationVO.setPharmacyLocationLongitude(map.get("pharmacy_location_longitude"));
		try {
			pharmacyInfoMapper.updatePharmacy(pharmacyLocationVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	};
}
