package bess.ham.infra.modules.product;

import java.util.List;

import bess.ham.infra.modules.code.Code;
import bess.ham.infra.modules.code.CodeVo;


public interface ProductService {
	public List<Product> selectListMain(ProductVo vo) throws Exception;
	public List<Product> optionList(ProductVo vo) throws Exception;
	public List<Product> selectListShop(ProductVo vo) throws Exception;
	public Product selectOne(ProductVo vo) throws Exception;
	
	public Product optionOne(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception; 
	
	public List<Product> selectListReview(ProductVo vo) throws Exception;
	
	public List<Product> selectListQa(ProductVo vo) throws Exception;
	public int insertQa(Product dto) throws Exception; 
}
