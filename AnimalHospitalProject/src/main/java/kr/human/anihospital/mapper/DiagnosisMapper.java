package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.DiagnosisAnimalVO;

@Mapper
public interface DiagnosisMapper {
	
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDignosis) throws SQLException;
}
