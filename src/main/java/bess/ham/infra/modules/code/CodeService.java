package bess.ham.infra.modules.code;

import java.util.List;


public interface CodeService {
	
	public List<Code> selectList() throws Exception; 
	public List<Code> groupList() throws Exception; 
	public int insert(Code dto) throws Exception;
	
}
