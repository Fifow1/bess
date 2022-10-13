package bess.ham.infra.modules.product;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bess.ham.infra.modules.codegroup.CodeGroup;



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
	
	public List<Product> selectListShop(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".selectListShop",vo);
		System.out.println("D : " + vo.getCategory());
		return list;
	}
	
	public int insert(Product dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}

	public Product selectOne(ProductVo vo) {
		Product result = sqlSession.selectOne(namespace +".selectOne", vo);
		return result;
	}
	
}
