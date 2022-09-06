package bess.ham.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.code.CodeMapper";
	

	public List<Code> selectList(){
		
		List<Code> list = sqlSession.selectList("bess.ham.infra.modules.code.CodeMapper.selectList");
		
		return list;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result:" + result);
		return result;
	}
	

}
