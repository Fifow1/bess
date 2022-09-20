package bess.ham.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bess.ham.infra.modules.codegroup.CodeGroup;
import bess.ham.infra.modules.codegroup.CodeGroupVo;


@Controller
@RequestMapping(value = "/code")
public class CodeController {
		
	@Autowired
	CodeServiceImpl service;
	

	public void setSearchAndPaging(CodeVo vo) throws Exception{
		
	//	vo.setShOption(vo.getShOption() == 	null ? 2 : vo.getShOption());
		vo.setShDelYn(vo.getShDelYn() == null ? 1 : vo.getShDelYn());
		
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		System.out.println("C: " + vo.getShSeq());
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	
	
	



	@RequestMapping(value = "codeForm")
	public String codeFrom(@ModelAttribute("vo") CodeVo vo,Model model) throws Exception{
		
		List<Code> list1 = service.groupList();
		List<Code> list = service.selectList(vo);
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeIsrt")
	public String codeIsrt(CodeGroupVo vo,Code dto, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("result:" + result);
		return "redirect:/code/codeForm";
	}
		
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo,Code dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/code/codeForm";
	}
	


}
