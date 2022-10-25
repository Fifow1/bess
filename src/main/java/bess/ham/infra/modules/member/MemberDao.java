

package bess.ham.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
		System.out.println("dao result:" +result);
		System.out.println("memberIsrtDaoEmail: " + dto.getEmail());
		System.out.println("memberIsrtDaoId: " + dto.getId());
		System.out.println("memberIsrtDaoSeq: " + dto.getSeq());
		return result;
	}
	
	public Member selectOne(MemberVo vo) {
		
		Member result = sqlSession.selectOne(namespace +".selectOne", vo);
		System.out.println("memberIsrtDaoShSeq: " + vo.getShSeq());
		return result;
	}

	public int update(Member dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int selectOneIdCheck(Member dto){
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
				
	}
	
	public int insertUser(Member dto) {
		int result = sqlSession.insert(namespace + ".insertUser", dto);
		return result;
	}
	
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public int insertUserAdress(Member dto) {
		return sqlSession.insert(namespace + ".insertUserAdress", dto);
	}
	
	public List<Member> selectListAdress(MemberVo vo) {
		
		List<Member> result = sqlSession.selectList(namespace +".selectListAdress", vo);
		
		return result;
		
	}
	
	
}
