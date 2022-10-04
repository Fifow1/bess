package bess.ham.infra;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bess.ham.infra.modules.product.Product;
import bess.ham.infra.modules.product.ProductServiceImpl;

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
		
		@RequestMapping (value = "/a", method = RequestMethod.GET)
		public String a(Product dto, Model model) throws Exception {
			
			List<Product> list = service.selectList();
			model.addAttribute("list", list);
			
			System.out.println("aaaaaaa: " + dto.getIfprTitle());
			return "a";
		}
		
		@RequestMapping (value = "/b", method = RequestMethod.GET)
		public String b(Locale locale, Model model) {
			return "b";
		}
		
		
		
		
		
		
}
