package bess.ham.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{
	@Autowired
	CodeDao dao;
	
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		System.out.println("S: " + vo.getShDelYn());
		System.out.println("S: " + vo.getShOption());
		List<Code> list = dao.selectList(vo);
		
		return list;
	}
	
	
	@Override
	public List<Code> groupList() throws Exception {
		
		List<Code> list = dao.groupList();
		
		return list;
	}
	
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result:" + result);
		return result;
	}
	
	
	@Override
	public int update(Code dto) throws Exception {
		
		int result = dao.update(dto);
		
		return result;
	}


	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return  dao.selectOneCount(vo);
	}
	
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String CCGseq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCCGseq().equals(CCGseq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCCseq().equals(Integer.toString(code))) {
				rt = codeRow.getCCname();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	
	
	
}