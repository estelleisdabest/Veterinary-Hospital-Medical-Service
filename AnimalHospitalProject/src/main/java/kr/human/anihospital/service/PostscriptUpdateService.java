package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PostscriptUpdateMapper;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PostscriptUpdateService {

	@Autowired
	PostscriptUpdateMapper postscriptUpdateMapper;
	
	public void updatePostscriptInfo(PostscriptVO postscriptVO) {
		try {
			log.info("서비스 받은 값 : {}",postscriptVO);
			postscriptUpdateMapper.updatePostscript(postscriptVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
}
