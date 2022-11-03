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
			
			System.out.println("시작");
			
			String apiUrl = "http://apis.data.go.kr/B551011/KorService/locationBasedList?serviceKey=ovzp9DVxrdiO9z0MCBZj3qB7xo4MVgq7tVTzfboqegBR%2ByRQVtf%2BVpuEJAfXgkyLGv7q%2B%2Fw750%2BaesNksG6G4Q%3D%3D&numOfRows=10&MobileOS=ETC&MobileApp=AppTest&_type=json&listYN=Y&arrange=C&mapX=128.6922646449&mapY=35.9910080699&radius=10000";
			
			//??
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			//URL받기
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			//line에 저장
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
	        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);   // map = []
	        
	        System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> response = new HashMap<String, Object>();
			response = (Map<String, Object>) map.get("response");
			
			System.out.println("######## response");
			for (String key : response.keySet()) {
				String value = String.valueOf(response.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) response.get("header");
			
			System.out.println("######## header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) response.get("body");
			
			System.out.println("######## body");
			for (String key : body.keySet()) {
				String value = String.valueOf(body.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> items = new HashMap<String, Object>();
			items = (Map<String, Object>) body.get("items");
			
			System.out.println("######## items");
			for (String key : items.keySet()) {
				String value = String.valueOf(items.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			List<Home> item = new ArrayList<Home>();
			item = (List<Home>) items.get("item");

			
			model.addAllAttributes(response);
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			model.addAllAttributes(items);
			
			return "test";
		}
		
		 
		 
		
		
		
		
		
}
