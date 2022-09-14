package bess.ham.infra.modules.product;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	@Inject
	@Resource(name="sqlSession")
	
	private SqlSession sqlSession;

	
}
