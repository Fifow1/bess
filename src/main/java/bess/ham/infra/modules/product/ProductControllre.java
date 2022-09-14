package bess.ham.infra.modules.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping (value="/product")
public class ProductControllre {
	
	
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
