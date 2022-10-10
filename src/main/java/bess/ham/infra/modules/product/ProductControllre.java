package bess.ham.infra.modules.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


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
	@RequestMapping(value="productList_deskmat")
	public String productList_deskmat(Model model) throws Exception{
		return "infra/product/user/productList_deskmat";
	}
	
	@RequestMapping(value="productView")
	public String productView(Model model) throws Exception{
		
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
