package bess.ham.infra.modules.product;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bess.ham.infra.modules.member.Member;
import bess.ham.infra.modules.member.MemberVo;

@Repository
public class ProductDao {
	@Inject
	@Resource(name="sqlSession")
	
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.product.ProductMapper";
	
	public List<Product> selectList(){
		List<Product> list = sqlSession.selectList(namespace + ".selectList");
		return list;
	}
	
	

	
}
