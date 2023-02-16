package kr.human.anihospital.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.PostscriptSaveService;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j

public class PostscriptSaveController {
	@Autowired
	PostscriptSaveService postscriptSaveService;
	
	@PostMapping("/postscriptSave")
	public String insertPostscript(@RequestParam Map<String, String> postscriptMap, Model model) throws Exception{
		log.info("화면에서 넘어온 값1(컨트롤러) : {}",postscriptMap);
		PostscriptVO postscriptVO = new PostscriptVO();
		postscriptVO.setSeqDoctor(1);
		postscriptVO.setSeqProtector(1);
		postscriptVO.setSeqDiagnosis(91);
		postscriptVO.setSeqAnimal(1);
		postscriptVO.setPostscriptContent(postscriptMap.get("postscriptContent"));
		postscriptVO.setPostscriptSatisfactionrating(Integer.parseInt(postscriptMap.get("postscriptSatisfaction").trim()));
		
		postscriptSaveService.insertPostscriptInfo(postscriptVO);
		
		log.info("서비스에서 넘어온 값2(컨트롤러) : {}",postscriptMap);
		return "diagnosis";
		
		
	}
	
	
	
}
