package bess.ham.infra.modules.product;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;

import bess.ham.infra.modules.code.Code;
import bess.ham.infra.modules.code.CodeVo;


public interface ProductService {
	public List<Product> selectListMain(ProductVo vo) throws Exception;
	public List<Product> optionList(ProductVo vo) throws Exception;
	public List<Product> selectListShop(ProductVo vo) throws Exception;
	public Product selectOne(ProductVo vo) throws Exception;
	
	public Product optionOne(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception; 
	
	public List<Product> selectListReview(ProductVo vo) throws Exception;
	
	public List<Product> selectListQa(ProductVo vo) throws Exception;
	public int insertQa(Product dto) throws Exception; 
	
	//file upload
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Product dto, String tableName) throws Exception;
	List<Product> selectListUploaded(ProductVo vo) throws Exception; 
}
