

package bess.ham.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping(value = "/member") //*********
public class MemberController {

// xdimn
	@Autowired
	MemberServiceImpl service;
	private Member dto;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception{
		
		//	vo.setShOption(vo.getShOption() == 	null ? 2 : vo.getShOption());
			vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
			
			
			vo.setParamsPaging(service.selectOneCount(vo));
		}
	

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	
	
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		List<Member> list = service.selectList(vo);
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", list);
		
		System.out.println("memberFormControllerShSeq: " + vo.getShSeq());
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/member/xdmin/memberForm";
	}
	
	
	
	@RequestMapping(value = "memberIsrt")
	public String memberIsrt(MemberVo vo,Member dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		
		return "redirect:/member/memberForm";
	}
	
	
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo,Member dto, RedirectAttributes redirectAttributes) throws Exception{
		
		
		service.update(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/member/memberForm";
	}

	
// user
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	
	@RequestMapping(value = "userLogin")
	public String memberLogin(Model model) throws Exception {

		
		return "infra/member/user/memberLogin";
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				/*
				 * if(dto.getAutoLogin() == true) {
				 * UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(),
				 * Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE); }
				 * else { // by pass }
				 */
				
				/* httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); */ // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				/* httpSession.setAttribute("sessName", rtMember2.getIfmame()); */

				
				 rtMember2.setIflgResultNy(1);
				 

				/*
				 * Date date = rtMember2.getIfmmPwdModDate(); LocalDateTime
				 * ifmmPwdModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(),
				 * ZoneId.systemDefault());
				 */
				/*
				 * if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime,
				 * UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
				 * returnMap.put("changePwd", "true"); }
				 */

				returnMap.put("rt", "success");
			} else {
				/*
				 * dto.setIfmmSeq(rtMember.getIfmmSeq()); dto.setIflgResultNy(0);
				 * service.insertLogLogin(dto);
				 */

				returnMap.put("rt", "fail");
			}
		} else {
			/*
			 * dto.setIflgResultNy(0); service.insertLogLogin(dto);
			 */

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	
	
	
	
	@RequestMapping(value = "userRegForm")
	public String memberRegForm(Member dto,Model model) throws Exception {
		
		return "infra/member/user/memberRegForm";
	}
	
	@RequestMapping(value = "userIsrt")
	public String userIsrt(Member dto,Model model) throws Exception {
		service.insertUser(dto);
		
		return "redirect:/member/userLogin";
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


