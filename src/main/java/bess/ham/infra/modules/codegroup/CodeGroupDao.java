package bess.ham.infra.modules.codegroup;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


// sqlSession 객체에 의존
// sqlSession 1.update 2.slelct list 3.insert 4.select one


@Repository
public class CodeGroupDao {
	
	
	//
	@Inject
	//
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
//		List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo); 
		List<CodeGroup> list = sqlSession.selectList("bess.ham.infra.modules.codegroup.CodeGroupMapper.selectList", vo );
		return list;
	}

	
}