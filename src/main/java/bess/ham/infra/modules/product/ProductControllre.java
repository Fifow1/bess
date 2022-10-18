package bess.ham.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bess.ham.infra.modules.member.Member;


@Controller
@RequestMapping (value="/product")
public class ProductControllre {
	
	
	@Autowired
	ProductServiceImpl service;
	

	
	
	@RequestMapping(value="productForm")
	public String productForm(Model model) throws Exception{
		return "infra/product/xdmin/productForm";
	}
	@RequestMapping(value="productList")
	public String productList(Model model) throws Exception{
		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productIsrt")
	public String ProductIsrt(ProductVo vo,Product dto) throws Exception{
		service.insert(dto); 
		return "redirect:/product/productList";
	}
	
	
	// user
	@RequestMapping(value="productListShop")
	public String productList_deskmat(ProductVo vo,Product dto,Model model) throws Exception{
		
		List<Product> list = service.selectListShop(vo);
		model.addAttribute("list", list);
		return "infra/product/user/productListShop";
	}
	
	@RequestMapping(value="productView")
	public String productView(Product dto,ProductVo vo,Model model) throws Exception{
		
		System.out.println(dto.getIfprSeq());
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		System.out.println(dto.getIfprSeq());
		return "infra/product/user/productView";
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
