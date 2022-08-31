package bess.ham.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


//mapper에 있는 쿼리문 호출

@Repository //Dao 지정

public class CodeGroupDao {
	
	//데이터베이스 여러개를 사용할때 씀
	@Inject
	//이름
	@Resource(name = "sqlSession")
	//mysql 객체
	private SqlSession sqlSession;
	//mapper와 주소 같아야함
	private static String namespace = "bess.ham.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }

}
