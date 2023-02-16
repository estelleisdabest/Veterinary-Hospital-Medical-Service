package kr.human.anihospital.mapper;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.DoctorVO;

@Mapper
public interface DoctorInfoMapper {
	DoctorVO viewMyInfoDoctor(int seq) throws SQLException;

	void editMyInfoDoctor(Map<String, Object> map) throws SQLException;
}
