package bess.ham.infra.modules.product;

import java.util.List;


public interface ProductService {
	public List<Product> selectListMain(ProductVo vo) throws Exception;
	public List<Product> selectListShop(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception; 

}
