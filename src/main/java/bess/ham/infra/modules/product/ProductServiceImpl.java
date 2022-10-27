package bess.ham.infra.modules.product;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bess.ham.infra.common.base.BaseServiceImpl;
import bess.ham.infra.common.constants.Constants;
import bess.ham.infra.common.util.UtilDateTime;





@Service
public class ProductServiceImpl extends BaseServiceImpl implements ProductService {
		
		@Autowired
		ProductDao dao;
		
		@Override
		public List<Product> selectListMain(ProductVo vo) throws Exception {
			return dao.selectListMain(vo);
		}
		@Override
		public List<Product> selectListShop(ProductVo vo) throws Exception {
			System.out.println("S : " + vo.getCategory());
			return dao.selectListShop(vo);
		}
		@Override
		public int insert(Product dto) throws Exception{
			dao.insert(dto);
			uploadFiles(dto.getUploadImg(), dto, "productUploaded", 2, dto.getUploadImgMaxNumber());
			return 1;
		}
		
		@Override
		public Product selectOne(ProductVo vo) throws Exception{
			Product result = dao.selectOne(vo);
			System.out.println("s:"+result);
			return result;
		}
		
		@Override
		public List<Product> optionList(ProductVo vo) throws Exception {
			return dao.optionList(vo);
		}
		
		@Override
		public Product optionOne(ProductVo vo) throws Exception{
			Product result = dao.optionOne(vo);
			return result;
		}
		
		@Override
		public List<Product> selectListReview(ProductVo vo) throws Exception{
			return dao.selectListReview(vo);
		}
		
		@Override
		public List<Product> selectListQa(ProductVo vo) throws Exception{
			return dao.selectListQa(vo);
		}
		
		@Override
		public int insertQa(Product dto) throws Exception{
			int result = dao.insertQa(dto);
			return result;
		}
		//fileupload
		
		public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception {
			
			for(int i=0; i<multipartFiles.length; i++) {
	    	
				if(!multipartFiles[i].isEmpty()) {
					
					String className = dto.getClass().getSimpleName().toString().toLowerCase();		
					String fileName = multipartFiles[i].getOriginalFilename();
					String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
					String uuid = UUID.randomUUID().toString();
					String uuidFileName = uuid + "." + ext;
					String pathModule = className;
					String nowString = UtilDateTime.nowString();
					String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
					String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
					String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
					
					File uploadPath = new File(path);
					
					if (!uploadPath.exists()) {
						uploadPath.mkdir();
					} else {
						// by pass
					}
					  
					multipartFiles[i].transferTo(new File(path + uuidFileName));
					
					dto.setPath(pathForView);
					dto.setOriginalName(fileName);
					dto.setUuidName(uuidFileName);
					dto.setExt(ext);
					dto.setSize(multipartFiles[i].getSize());
					dto.setTableName(tableName);
					dto.setType(type);
//					dto.setDefaultNy();
					dto.setSort(maxNumber + i);
					dto.setPseq(dto.getIfprSeq());

					dao.insertUploaded(dto);
	    		}
			}
		}
		
	
}
