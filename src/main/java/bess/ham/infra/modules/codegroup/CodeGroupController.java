package bess.ham.infra.modules.codegroup;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import bess.ham.infra.common.util.UtilDateTime;





@Controller
@RequestMapping(value = "/codeGroup") //*********
public class CodeGroupController {
	
	// New
	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception{
		
	//	vo.setShOption(vo.getShOption() == 	null ? 2 : vo.getShOption());
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
		
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		

			setSearchAndPaging(vo);
		
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
			System.out.println("C shd: " + vo.getShDelYn());
			
			
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	
	

	
	
	
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		
		List<CodeGroup> list = service.selectList(vo);
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("list", list);
		System.out.println("getSeq: " + vo.getSeq());
		System.out.println("getShSeq: " + vo.getShSeq());
		
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	

	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model,CodeGroupVo vo) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		System.out.println("c:"+result);
		// viewResolver -> /WEB-INF/views/ + home + .jsp
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupIsrt")
	public String codeGroupIsrt(CodeGroupVo vo,CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto); //**
		vo.setShSeq(dto.getSeq()); //**
		redirectAttributes.addFlashAttribute("vo",vo); //**
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo,CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		
		service.update(dto);
		vo.setShSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
	
	
	
	@RequestMapping("excelDownload")
    public void excelDownload(CodeGroupVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "코드그룹 코드", "코드그룹 이름(한글)", "코드그룹 이름(영문)", "코드갯수", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getGroupName_code());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getGroupName());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getGroupName_en());
	        	
	        	cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCCcount());
	            
	            cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegdate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegdate()));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getModdate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModdate()));
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}