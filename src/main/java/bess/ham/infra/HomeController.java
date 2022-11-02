package bess.ham.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

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
		
		
		
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "/test/publicCorona1List")
		public String publicCorona1List(Model model) throws Exception {
			
			System.out.println("asdfasdfasdf");
			
			String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}

			bufferedReader.close();
			httpURLConnection.disconnect();

			System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
			
//			json object + array string -> java map
			
	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	        
	        System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
//			String aaa = (String) header.get("resultCode");
			
//			System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//			System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			System.out.println("######## body");
			for (String key : body.keySet()) {
				String value = String.valueOf(body.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			List<Home> items = new ArrayList<Home>();
			items = (List<Home>) body.get("items");
			
			
			/*
			 * System.out.println("######## items"); for (String key : items.keySet()) {
			 * String value = String.valueOf(items.get(key)); // ok
			 * System.out.println("[key]:" + key + ", [value]:" + value); }
			 */
			
			
			System.out.println("items.size(): " + items.size());
			
//			for(Home item : items) {
//				System.out.println(item.getMM());
//			}
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			
			return "test";
		}
		
		 
		 
		
		
		
		
		
}
