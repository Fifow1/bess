package bess.ham.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MemberServiceImpl implements MemberService {
	

	@Autowired
	MemberDao dao;
	
	public List<Member> selectList() throws Exception {
		return dao.selectList();
	}

	
}


