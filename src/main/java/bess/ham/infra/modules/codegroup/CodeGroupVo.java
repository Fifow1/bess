package bess.ham.infra.modules.codegroup;

import bess.ham.infra.common.constants.Constants;

public class CodeGroupVo {
	private String shSeq;
	private String shGroupName;
	private String shGroupName_en;
	private String shGroupName_code;
	private Integer shOption;
	private String shValue;
	private Integer shDelYn;
	private Integer shdate;
	private String shdate_s;
	private String shdate_e;
	private String seq;
	
	
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;								  		// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// 쿼리 시작 row

	
	
public void setParamsPaging(int totalRows) {
		
//		setThisPage(3);

		setTotalRows(totalRows);

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
//		System.out.println("getThisPage():" + getThisPage());
//		System.out.println("getTotalRows():" + getTotalRows());
//		System.out.println("getRowNumToShow():" + getRowNumToShow());
//		System.out.println("getTotalPages():" + getTotalPages());
//		System.out.println("getStartPage():" + getStartPage());
//		System.out.println("getEndPage():" + getEndPage());		
//		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
//		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
//		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
		
	}



public String getSeq() {
	return seq;
}



public void setSeq(String seq) {
	this.seq = seq;
}



public int getThisPage() {
	return thisPage;
}



public void setThisPage(int thisPage) {
	this.thisPage = thisPage;
}



public int getRowNumToShow() {
	return rowNumToShow;
}



public void setRowNumToShow(int rowNumToShow) {
	this.rowNumToShow = rowNumToShow;
}



public int getPageNumToShow() {
	return pageNumToShow;
}



public void setPageNumToShow(int pageNumToShow) {
	this.pageNumToShow = pageNumToShow;
}



public int getTotalRows() {
	return totalRows;
}



public void setTotalRows(int totalRows) {
	this.totalRows = totalRows;
}



public int getTotalPages() {
	return totalPages;
}



public void setTotalPages(int totalPages) {
	this.totalPages = totalPages;
}



public int getStartPage() {
	return startPage;
}



public void setStartPage(int startPage) {
	this.startPage = startPage;
}



public int getEndPage() {
	return endPage;
}



public void setEndPage(int endPage) {
	this.endPage = endPage;
}



public int getStartRnumForOracle() {
	return startRnumForOracle;
}



public void setStartRnumForOracle(int startRnumForOracle) {
	this.startRnumForOracle = startRnumForOracle;
}



public int getEndRnumForOracle() {
	return endRnumForOracle;
}



public void setEndRnumForOracle(int endRnumForOracle) {
	this.endRnumForOracle = endRnumForOracle;
}



public Integer getRNUM() {
	return RNUM;
}



public void setRNUM(Integer rNUM) {
	RNUM = rNUM;
}



public int getStartRnumForMysql() {
	return startRnumForMysql;
}



public void setStartRnumForMysql(int startRnumForMysql) {
	this.startRnumForMysql = startRnumForMysql;
}

	//_____________________________________________________________________
	
	public String getShSeq() {
		return shSeq;
	}
	public void setShSeq(String shSeq) {
		this.shSeq = shSeq;
	}
	public String getShGroupName() {
		return shGroupName;
	}
	public void setShGroupName(String shGroupName) {
		this.shGroupName = shGroupName;
	}
	public String getShGroupName_en() {
		return shGroupName_en;
	}
	public void setShGroupName_en(String shGroupName_en) {
		this.shGroupName_en = shGroupName_en;
	}
	public String getShGroupName_code() {
		return shGroupName_code;
	}
	public void setShGroupName_code(String shGroupName_code) {
		this.shGroupName_code = shGroupName_code;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShDelYn() {
		return shDelYn;
	}
	public void setShDelYn(Integer shDelYn) {
		this.shDelYn = shDelYn;
	}
	public Integer getShdate() {
		return shdate;
	}
	public void setShdate(Integer shdate) {
		this.shdate = shdate;
	}
	public String getShdate_s() {
		return shdate_s;
	}
	public void setShdate_s(String shdate_s) {
		this.shdate_s = shdate_s;
	}
	public String getShdate_e() {
		return shdate_e;
	}
	public void setShdate_e(String shdate_e) {
		this.shdate_e = shdate_e;
	}
	
	

	
	
	
	
	
	
	
	
}