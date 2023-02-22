package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.PostscriptService;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j

public class PostscriptController {
	// selectAll 서비스
	@Autowired
	PostscriptService postscriptService;
	
	//----------------------------------------------------------------------------------------------------
	// 후기를 추가할 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping("/postscriptSave")
	public String insertPostscript(@RequestParam Map<String, String> postscriptMap, Model model) throws Exception{
		// 화면에서 넘어온 데이터 찍어보기
		log.info("받은 값1 : {}",postscriptMap);
		// 화면에서 수정한 값 그릇에 담아 넘기기
		PostscriptVO postscriptVO = new PostscriptVO();
		postscriptVO.setSeqDoctor(Integer.parseInt(postscriptMap.get("seqDoctor").trim()));
		postscriptVO.setSeqProtector(Integer.parseInt(postscriptMap.get("seqProtector").trim()));
		postscriptVO.setSeqDiagnosis(Integer.parseInt(postscriptMap.get("seqDiagnosis").trim()));
		postscriptVO.setSeqAnimal(Integer.parseInt(postscriptMap.get("seqAnimal").trim()));
		postscriptVO.setPostscriptContent(postscriptMap.get("postscriptContent"));
		// 필요한 데이터 준비하기
		postscriptVO.setPostscriptSatisfactionrating(Integer.parseInt(postscriptMap.get("postscriptSatisfaction").trim()));
		postscriptService.insertPostscriptInfo(postscriptVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("서비스에서 넘어온 값1(컨트롤러) : {}",postscriptVO);
		return "diagnosis";
	}
	//----------------------------------------------------------------------------------------------------
	// 후기를 수정할 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping("/postscriptUpdate")
	public String updatePostscript(@RequestParam Map<String, String> postscriptMap, Model model) throws Exception{
		// 화면에서 넘어온 데이터 찍어보기
		log.info("받은 값2 : {}", postscriptMap);
		// 화면에서 수정한 값 그릇에 담아 넘기기
		PostscriptVO postscriptVO = new PostscriptVO();
		//postscriptVO.setSeqPostscript(Integer.parseInt(postscriptMap.get("seqPostscript")));
		postscriptVO.setSeqPostscript(Integer.parseInt(postscriptMap.get("seqPostscript").trim()));
		postscriptVO.setPostscriptContent(postscriptMap.get("postscriptContent"));
		// 필요한 데이터 준비하기
		postscriptVO.setPostscriptSatisfactionrating(Integer.parseInt(postscriptMap.get("postscriptSatisfaction").trim()));
		postscriptService.updatePostscriptInfo(postscriptVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("서비스에서 넘어온 값2(컨트롤러) : {}",postscriptVO);
		return "diagnosis";
	}
}
