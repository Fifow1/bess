 package bess.ham.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bess.ham.infra.modules.codegroup.CodeGroup;
import bess.ham.infra.modules.codegroup.CodeGroupVo;


@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.code.CodeMapper";
	

	public List<Code> selectList(CodeVo vo){
		
		System.out.println("D: " + vo.getShDelYn());
		System.out.println("D: " + vo.getShOption());
		
		List<Code> list = sqlSession.selectList(namespace + ".selectList", vo);
		
		return list;
	}
	
	
	public List<Code> groupList(){
		
		List<Code> list = sqlSession.selectList(namespace + ".groupList", "");
		
		return list;
	}

	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
	public int update(Code dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		return result;
	}
	
	public Code selectOne(CodeVo vo) {
		
		Code result = sqlSession.selectOne(namespace +".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
	

	
	
}
