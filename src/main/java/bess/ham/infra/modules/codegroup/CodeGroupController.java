package bess.ham.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/codeGroup") //*********
public class CodeGroupController {
	
	
	// New
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		

		List<CodeGroup> list = service.selectList(vo);
		
		model.addAttribute("list", list);
		
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
	@RequestMapping(value = "codeGroupForm")
	
	public String codeGroupForm(Model model, CodeGroupVo vo) throws Exception {
		

		List<CodeGroup> list = service.selectList(vo);
		
		model.addAttribute("list", list);
		
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupIsrt")
	
	public String codeGroupIsrt(CodeGroup dto) throws Exception{
		
		System.out.println("dto.getGroupName(): " + dto.getGroupName());
		
		int result = service.insert(dto);
		System.out.println("controller result:"+result);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	
	
}