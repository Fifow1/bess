package bess.ham.infra.modules.member;

import java.util.List;

import bess.ham.infra.modules.codegroup.CodeGroupVo;


public interface MemberService {
	
	
	public List<Member> selectList(MemberVo vo) throws Exception; 
	
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception; 
	public int update(Member dto) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	
}
