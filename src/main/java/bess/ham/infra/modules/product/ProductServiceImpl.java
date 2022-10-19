package bess.ham.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class ProductServiceImpl implements ProductService {
		
		@Autowired
		ProductDao dao;
		
		@Override
		public List<Product> selectListMain(ProductVo vo) throws Exception {
			return dao.selectListMain(vo);
		}
		@Override
		public List<Product> selectListShop(ProductVo vo) throws Exception {
			System.out.println("S : " + vo.getCategory());
			return dao.selectListShop(vo);
		}
		@Override
		public int insert(Product dto) throws Exception{
			int result = dao.insert(dto);
			return result;
		}
		
		@Override
		public Product selectOne(ProductVo vo) throws Exception{
			Product result = dao.selectOne(vo);
			System.out.println("s:"+result);
			return result;
		}
		
		@Override
		public List<Product> optionList(ProductVo vo) throws Exception {
			return dao.optionList(vo);
		}
		
		@Override
		public Product optionOne(ProductVo vo) throws Exception{
			Product result = dao.optionOne(vo);
			return result;
		}
		
		@Override
		public List<Product> selectListReview(ProductVo vo) throws Exception{
			return dao.selectListReview(vo);
		}
		
		@Override
		public List<Product> selectListQa(ProductVo vo) throws Exception{
			return dao.selectListQa(vo);
		}
		
	
}
