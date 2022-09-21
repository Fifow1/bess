package bess.ham.infra.modules.codegroup;

import java.util.List;

import org.apache.taglibs.standard.tag.el.sql.SetDataSourceTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;





@Controller
@RequestMapping(value = "/codeGroup") //*********
public class CodeGroupController {
	
	// New
	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception{
		
	//	vo.setShOption(vo.getShOption() == 	null ? 2 : vo.getShOption());
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
		
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		

			setSearchAndPaging(vo);
		
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
			System.out.println("C shd: " + vo.getShDelYn());
			
			
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	
	

	
	
	
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		
		List<CodeGroup> list = service.selectList(vo);
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", list);
		System.out.println("getSeq: " + vo.getSeq());
		System.out.println("getShSeq: " + vo.getShSeq());
		
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	

	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model,CodeGroupVo vo) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		System.out.println("c:"+result);
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupIsrt")
	public String codeGroupIsrt(CodeGroupVo vo,CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo,CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		
		service.update(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}