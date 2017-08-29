package noname.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import noname.common.common.CommandMap;
import noname.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	
	@RequestMapping(value="/sample/openSampleList.do")
	public ModelAndView openSampleList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/sample");
		
		System.out.println(commandMap.getMap());
		List<Map<String, Object>> list = sampleService.selectUserList(commandMap.getMap());
		mv.addObject("list", list);
		
		return mv;
	}

}
