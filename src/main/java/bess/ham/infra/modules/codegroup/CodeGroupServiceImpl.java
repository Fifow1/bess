package bess.ham.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class CodeGroupServiceImpl implements CodeGroupService{

	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		System.out.println("S shd: " + vo.getShDelYn());
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result"+result);
		return result;
	}
	
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception{
		CodeGroup result = dao.selectOne(vo);
		System.out.println("s:"+result);
		return result;
	}


	@Override
	public int update(CodeGroup dto) throws Exception {
		
		int result = dao.update(dto);
		System.out.println("dao.update result: " + result);
		
		return result;
	}


	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		return  dao.selectOneCount(vo);
	}
	
	@Override
	public List<CodeGroup> selectListOracle(CodeGroup dto) throws Exception {
		List<CodeGroup> list = dao.selectListOracle(dto);
		return list;
	}
	
}