package bess.ham.infra.modules.product;




import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bess.ham.infra.modules.code.Code;




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
	
	public List<Product> optionList(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".optionList",vo);
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
	
	public Product optionOne(ProductVo vo) {
		Product result = sqlSession.selectOne(namespace +".optionOne", vo);
		return result;
	}
	
	public List<Product> selectListReview(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".selectListReview",vo);
		return list;
	}
	
	public List<Product> selectListQa(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".selectListQa",vo);
		return list;
	}
	
	
	public int insertQa(Product dto) {
		int result = sqlSession.insert(namespace + ".insertQa", dto);
		return result;
	}
	
	public List<Product> optionList(){
		List<Product> list = sqlSession.selectList(namespace + ".optionList");
		return list;
	}
	
//	uploaded
	public int insertUploaded(Product dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int ueleteUploaded(Product dto) { return sqlSession.insert("Base" + ".ueleteUploaded", dto); }
	public List<Product> selectListUploaded(ProductVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
	
}
