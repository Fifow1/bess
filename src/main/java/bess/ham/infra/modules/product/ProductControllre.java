package bess.ham.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping (value="/product")
public class ProductControllre {
	
	
	@Autowired
	ProductServiceImpl service;
	

	
	
	@RequestMapping(value="productForm")
	public String productForm(ProductVo vo,Product dto,Model model) throws Exception{
		List<Product> list = service.optionList(vo);
		model.addAttribute("optionList", list);
		return "infra/product/xdmin/productForm";
	}
	
	@RequestMapping(value="productList")
	public String productList(@ModelAttribute("vo") ProductVo vo,Product dto,Model model) throws Exception{
		
		List<Product> list = service.selectListShop(vo);
		model.addAttribute("list", list);
		return "infra/product/xdmin/productList";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "productIsrt")
	public String ProductIsrt(ProductVo vo,Product dto,RedirectAttributes redirectAttributes) throws Exception{
		System.out.println(dto.getIfprSeq());
		service.insert(dto); 
		vo.setIfprSeq(dto.getIfprSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productList";
	}
	
	
	// user
	@RequestMapping(value="productListShop")
	public String productList_deskmat(@ModelAttribute("vo") ProductVo vo,Product dto,Model model) throws Exception{
		vo.setCategory(vo.getCategory() == null ? 34 : vo.getCategory());
		List<Product> list = service.selectListShop(vo);
		model.addAttribute("list", list);
		return "infra/product/user/productListShop";
	}
	
	@RequestMapping(value="productView")
	public String productView(@ModelAttribute("vo") ProductVo vo,Product dto,Model model) throws Exception{
		
		Product result = service.selectOne(vo);
		List<Product> reviewList = service.selectListReview(vo);
		List<Product> qaList = service.selectListQa(vo);
		model.addAttribute("item", result);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("qaList", qaList);
		return "infra/product/user/productView";
	}
	
	@RequestMapping(value = "productIsrtQa")
	public String ProductIsrtQa(ProductVo vo,Product dto,RedirectAttributes redirectAttributes) throws Exception{
		System.out.println("vo.getIfprSeq()1: "+vo.getIfprSeq());
		service.insertQa(dto); 
		vo.setIfprSeq(vo.getIfprSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		System.out.println("vo.getIfprSeq()2: "+vo.getIfprSeq());
		
		return "redirect:/product/productView";
	}
	
	@RequestMapping(value="productBuy")
	public String productBuy(Model model) throws Exception{
		return"infra/product/user/productBuy";
	}
	
	@RequestMapping(value="productBuy_result")
	public String productBuy_result(Model model) throws Exception{
		return "infra/product/user/productBuy_result";
	}
	
	
}
