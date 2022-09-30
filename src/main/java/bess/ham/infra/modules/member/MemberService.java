package bess.ham.infra.modules.member;

import java.util.List;

import bess.ham.infra.modules.codegroup.CodeGroupVo;


public interface MemberService {
	
	
	public List<Member> selectList(MemberVo vo) throws Exception; 
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int insert(Member dto) throws Exception; 
	
	public int update(Member dto) throws Exception;
	
	public int selectOneCount(MemberVo vo) throws Exception;
	
	public int selectOneIdCheck(Member dto) throws Exception;
	
	public int insertUser(Member dto) throws Exception; 
	
	public Member selectOneId(Member dto) throws Exception;
	
	public Member selectOneLogin(Member dto) throws Exception;
	
	/* public int insertUserAdress(Member dto) throws Exception; */
	
}
