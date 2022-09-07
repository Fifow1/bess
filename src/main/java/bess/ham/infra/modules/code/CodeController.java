package bess.ham.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/code")
public class CodeController {
		
	@Autowired
	CodeServiceImpl service;
	

	
	@RequestMapping(value = "codeList")
	public String codeList(Model model) throws Exception {

		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	
	
	@RequestMapping(value = "codeForm")
	public String codeFrom(Model model) throws Exception{
		
		List<Code> list = service.groupList();
		
		model.addAttribute("groupList", list);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeIsrt")
	public String codeIsrt(Code dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("result:" + result);
		return "redirect:/code/codeList";
	}
		

}
