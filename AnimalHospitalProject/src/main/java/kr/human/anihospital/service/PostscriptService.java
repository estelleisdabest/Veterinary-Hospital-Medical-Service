package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PostscriptMapper;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PostscriptService {
	// selectAll 매퍼
	@Autowired
	PostscriptMapper postscriptMapper;
	
	// 후기 추가 메서드
	public void insertPostscriptInfo (PostscriptVO postscriptVO) {
		try {
			// insert하려는 데이터가 잘 넘어오고 있는지 로그로 확인해보기
			log.info("컨트롤러에서 넘어온 값(서비스) : {}", postscriptVO);
			// insert를 실행할 mapper부르기
			postscriptMapper.insertPostscript(postscriptVO);
			log.info("매퍼에서 넘어온 값1(서비스) : {}", postscriptVO);
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	
	// 후기 수정 메서드
	public void updatePostscriptInfo(PostscriptVO postscriptVO) {
		try {
			// 수정할 내용을 mapper에 넘겨주기
			postscriptMapper.updatePostscript(postscriptVO);
			// mapper가 실행되고 나서 가져온 데이터 확인하기
			log.info("매퍼에서 넘어온 값2(서비스) : {}",postscriptVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
}
