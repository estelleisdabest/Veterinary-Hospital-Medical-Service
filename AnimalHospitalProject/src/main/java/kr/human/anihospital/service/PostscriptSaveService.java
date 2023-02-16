package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PostscriptSaveMapper;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PostscriptSaveService {
	@Autowired
	PostscriptSaveMapper postscriptSaveMapper;
	
	public void insertPostscriptInfo (PostscriptVO postscriptVO) {
		try {
			log.info("컨트롤러에서 넘어온 값(서비스) : {}", postscriptVO);
			postscriptSaveMapper.insertPostscript(postscriptVO);
			log.info("매퍼에서 넘어온 값(서비스) : {}", postscriptVO);
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
