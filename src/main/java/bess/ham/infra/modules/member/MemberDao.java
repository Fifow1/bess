

package bess.ham.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bess.ham.infra.modules.codegroup.CodeGroup;
import bess.ham.infra.modules.codegroup.CodeGroupVo;

@Repository
public class MemberDao {
	@Inject
	@Resource(name = "sqlSession")
	
	private SqlSession sqlSession;
	
	private static String namespace = "bess.ham.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
		
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
	public Member selectOne(MemberVo vo) {
		
		Member result = sqlSession.selectOne(namespace +".selectOne", vo);
		return result;
	}

	public int update(Member dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
