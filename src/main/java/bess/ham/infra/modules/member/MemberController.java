
package bess.ham.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bess.ham.infra.common.constants.Constants;
import bess.ham.infra.modules.product.Product;
import bess.ham.infra.modules.product.ProductServiceImpl;
import bess.ham.infra.modules.product.ProductVo;

@Controller
@RequestMapping(value = "/member") // *********
public class MemberController {

	
	@Autowired
	ProductServiceImpl serviceP;
// xdimn
	@Autowired
	MemberServiceImpl service;

	@Inject
	MailSendService mailSendService;  //@Service를 붙였었다.
	
	@RequestMapping("/join/mailAuth")
	@ResponseBody
	public String mailAuth(String mail, HttpServletResponse resp) throws Exception {
	    String authKey = mailSendService.sendAuthMail(mail); //사용자가 입력한 메일주소로 메일을 보냄
	    return authKey;
	}
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {

		// vo.setShOption(vo.getShOption() == null ? 2 : vo.getShOption());
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "memberXdminList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);

		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	//ajax List,Lita
	@RequestMapping(value = "memberAjaxList")
	public String nationalityAjaxList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);

		return "infra/member/xdmin/memberAjaxList";
	}
	
	@RequestMapping(value = "memberAjaxLita")
	public String nationalityAjaxLita(@ModelAttribute("vo") MemberVo  vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return "infra/member/xdmin/memberAjaxLita";
	}

	@RequestMapping(value = "memberXdminForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		List<Member> list = service.selectList(vo);
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", list);

		System.out.println("memberFormControllerShSeq: " + vo.getShSeq());
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/member/xdmin/memberForm";
	}

	@RequestMapping(value = "memberXdminIsrt")
	public String memberIsrt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberForm";
	}

	@RequestMapping(value = "memberXdminUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
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

	@RequestMapping(value = "xdminLogin")
	public String xdminLogin(Model model) throws Exception {

		return "infra/member/xdmin/xdminLogin";
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

				httpSession.setAttribute("sessAutgiruty", rtMember2.getAuthority());
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

	@RequestMapping(value = "test")
	public String ll(Member dto, Model model) throws Exception {

		return "infra/member/user/test";
	}

	@RequestMapping(value = "userRegForm")
	public String memberRegForm(Member dto, Model model) throws Exception {

		return "infra/member/user/memberRegForm";
	}

	@RequestMapping(value = "userRegFormSub")
	public String memberRegFormSub(Member dto, Model model) throws Exception {

		return "infra/member/user/memberRegFormSub";
	}

	@RequestMapping(value = "userIsrt")
	public String userIsrt(Member dto, Model model) throws Exception {
		service.insertUser(dto);
		/* service.insertUserAdress(dto); */
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
	public String memberMypage_myinfo(@ModelAttribute("vo") MemberVo vo, ProductVo voP, Member dto, Model model) throws Exception {
		Member result = service.selectOne(vo);
		List<Member> listAd = service.selectListAdress(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", listAd);
		return "infra/member/user/memberMypage_myinfo";
	}

	@RequestMapping(value = "memberMypage_order")
	public String memberMypage_order(Model model) throws Exception {

		return "infra/member/user/memberMypage_order";
	}

	@RequestMapping(value = "memberMypage_qa")
	public String memberMypage_qa(MemberVo vo, ProductVo voP, Member dto, Product dtoP,Model model) throws Exception {
		List<Product> listQa = serviceP.selectListQa(voP);
		model.addAttribute("listQa", listQa);
		return "infra/member/user/memberMypage_qa";
	}
	
	@ResponseBody
	@RequestMapping(value = "snsLoginProc")
	public Map<String, Object> snsLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
		Member snsLogin = service.snsLoginCheck(dto);
		if (snsLogin == null) {
			service.snsInst(dto);
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			session(snsLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getSeq());    
	     httpSession.setAttribute("sessId", dto.getId());
	     httpSession.setAttribute("sessEmail", dto.getEmail());
	     httpSession.setAttribute("sessSns", dto.getLoginType());
	 }
	 
	 
		/*
		 * @ResponseBody
		 * 
		 * @RequestMapping(value = "naverLoginProc") public Map<String, Object>
		 * naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
		 * Map<String, Object> returnMap = new HashMap<String, Object>();
		 * 
		 * Member kakaoLogin = service.snsLoginCheck(dto);
		 * 
		 * if (kakaoLogin == null) { service.kakaoInst(dto);
		 * httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); //
		 * session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(),
		 * dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
		 * session(dto, httpSession); returnMap.put("rt", "success"); } else {
		 * httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); //
		 * session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(),
		 * kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(),
		 * kakaoLogin.getSns_type(), httpSession); session(kakaoLogin, httpSession);
		 * returnMap.put("rt", "success"); } return returnMap; }
		 */
	
	//email
	
	@RequestMapping(value = "logoutProc")
	public String memberLogin(Model model,HttpSession httpSession) throws Exception {
		
		httpSession.invalidate();
		return "infra/member/user/memberLogin";
	}
	 
}
