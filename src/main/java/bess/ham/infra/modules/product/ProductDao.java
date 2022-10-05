package bess.ham.infra.modules.product;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ProductDao {
	@Inject
	@Resource(name="sqlSession")
	
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.product.ProductMapper";
	
	public List<Product> selectListMain(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".selectListMain",vo);
		return list;
	}
	
	

	
}
