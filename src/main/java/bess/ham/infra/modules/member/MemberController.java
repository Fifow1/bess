

package bess.ham.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/member") //*********
public class MemberController {

		
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "memberLogin")
	public String memberLogin(Model model) throws Exception {

		
		return "infra/member/user/memberLogin";
	}
	
	@RequestMapping(value = "memberRegForm")
	public String memberRegForm(Model model) throws Exception {

		
		return "infra/member/user/memberRegForm";
	}
// ----------------------------------------아이디 찾기-----------------------------------------------------
	
	@RequestMapping(value = "memberFindId_email")
	public String memberFindId_email(Model model) throws Exception {

		
		return "infra/member/user/memberFindId_email";
	}
	
	@RequestMapping(value = "memberFindId_phone")
	public String memberFindId_phone(Model model) throws Exception {

		
		return "infra/member/user/memberFindId_phone";
	}
	
	@RequestMapping(value = "memberFindId_result")
	public String memberFindId_result(Model model) throws Exception {

		
		return "infra/member/user/memberFindId_result";
	}
// ------------------------------------------비밀번호 찾기---------------------------------------------------
	
	@RequestMapping(value = "memberFindPwd_phone")
	public String memberFindPwd_phone(Model model) throws Exception {

		
		return "infra/member/user/memberFindPwd_phone";
	}
	
	@RequestMapping(value = "memberFindPwd_email")
	public String memberFindPwd_email(Model model) throws Exception {

		
		return "infra/member/user/memberFindPwd_email";
	}
	
	@RequestMapping(value = "memberFindPwd_result")
	public String memberFindPwd_result(Model model) throws Exception {

		
		return "infra/member/user/memberFindPwd_result";
	}
	
// ----------------------------------------------마이페이지-----------------------------------------------
	
	@RequestMapping(value = "memberMypage_myinfo")
	public String memberMypage_myinfo(Model model) throws Exception {

		
		return "infra/member/user/memberMypage_myinfo";
	}
	
	@RequestMapping(value = "memberMypage_order")
	public String memberMypage_order(Model model) throws Exception {

		
		return "infra/member/user/memberMypage_order";
	}
	
	@RequestMapping(value = "memberMypage_qa")
	public String memberMypage_qa(Model model) throws Exception {

		
		return "infra/member/user/memberMypage_qa";
	}
}


