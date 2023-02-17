package kr.human.anihospital.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalHospitalVO;

@Mapper
public interface HospitalMapMapper {
	List<AnimalHospitalVO> selectMap() throws SQLException;
}
