package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.PostscriptUpdateService;
import kr.human.anihospital.vo.PostscriptVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PostscriptUpdateController {

	@Autowired
	PostscriptUpdateService postscriptUpdateService;
	
	@PostMapping("/diagnosis")
	public String updatePostscript(@RequestParam Map<String, String> postscriptMap,Model model) throws Exception{
		log.info("받은 값 : {}", postscriptMap);
		PostscriptVO postscriptVO = new PostscriptVO();
		//postscriptVO.setSeqPostscript(Integer.parseInt(postscriptMap.get("seqPostscript")));
		postscriptVO.setSeqPostscript(61);
		postscriptVO.setPostscriptContent(postscriptMap.get("postscriptContent"));
		postscriptVO.setPostscriptSatisfactionrating(Integer.parseInt(postscriptMap.get("postscriptSatisfaction")));
		postscriptUpdateService.updatePostscriptInfo(postscriptVO);
		return "성공";
	}
}
