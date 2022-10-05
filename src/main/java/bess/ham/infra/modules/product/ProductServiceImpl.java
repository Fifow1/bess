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
		
	
}
