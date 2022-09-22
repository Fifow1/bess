package bess.ham.infra.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bess.ham.infra.modules.codegroup.CodeGroup;
import bess.ham.infra.modules.codegroup.CodeGroupVo;



@Service
public class MemberServiceImpl implements MemberService {
	

	@Autowired
	MemberDao dao;
	
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Member dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result"+result);
		return result;
	}
	
	@Override
	public int update(Member dto) throws Exception {
		
		int result = dao.update(dto);
		System.out.println("dao.update result: " + result);
		
		return result;
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member result = dao.selectOne(vo);
		System.out.println("s:"+result);
		return result;
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return  dao.selectOneCount(vo);
	}
}



