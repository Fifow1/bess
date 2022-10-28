package bess.ham.infra;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bess.ham.infra.modules.member.Member;
import bess.ham.infra.modules.member.MemberVo;
import bess.ham.infra.modules.product.Product;
import bess.ham.infra.modules.product.ProductServiceImpl;
import bess.ham.infra.modules.product.ProductVo;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	@Autowired
	ProductServiceImpl service;

		
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		/*
		 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
		 * home(Locale locale, Model model) {
		 * logger.info("Welcome home! The client locale is {}.", locale);
		 * 
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 * 
		 * return "home"; }
		 */
		
		
		
		
		@RequestMapping (value = "/") 
		public String choose(Model model) throws Exception {
			  
		return "choose"; 
		 }
		
		@RequestMapping (value = "mainXdmin") 
		public String mainXdmin(ProductVo vo,Product dto,Model model) throws Exception {
			  
		
		return "mainXdmin"; 
		 }
		
		
		@RequestMapping (value = "main") 
		public String main(ProductVo vo,Product dto,Model model) throws Exception {
			  
		vo.setCategory(vo.getCategory() == null ? 34 : vo.getCategory());
		List<Product> list = service.selectListMain(vo);
		model.addAttribute("list", list); 
		
		
		return "main"; 
		 }
		
		
		/* 중요  */
		@ResponseBody
		@RequestMapping(value = "mainSelectList")
		public Map<String, Object> main(ProductVo vo,Model model) throws Exception {
			/* 중요  */
			Map<String, Object> returnMap = new HashMap<String, Object>(); 
			
			List<Product> list = service.selectListMain(vo);
			
			returnMap.put("list", list);
			returnMap.put("rt", "success");
			
			
			return returnMap;
		}
		
		 
		 
		
		
		
		
		
}
