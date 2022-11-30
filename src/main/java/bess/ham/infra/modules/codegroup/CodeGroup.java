 package bess.ham.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {

	
	private String seq;
	private String groupName_code;
	private String groupName;
	private String groupName_en;
	private Integer CCcount;
	private Date regdate;
	private Date moddate;
	private Integer useYn;
	private Integer delYn;
	
	private String CCGseq;
	private String CCGname;
	
	// oracle test
	private String COUNTRY_ID;
	private String COUNTRY_NAME;
	private Integer REGION_ID;
	
	
	
// ------------------------------------------------
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getGroupName_code() {
		return groupName_code;
	}
	public void setGroupName_code(String groupName_code) {
		this.groupName_code = groupName_code;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getGroupName_en() {
		return groupName_en;
	}
	public void setGroupName_en(String groupName_en) {
		this.groupName_en = groupName_en;
	}
	public Integer getCCcount() {
		return CCcount;
	}
	public void setCCcount(Integer cCcount) {
		CCcount = cCcount;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getModdate() {
		return moddate;
	}
	public void setModdate(Date moddate) {
		this.moddate = moddate;
	}
	public Integer getUseYn() {
		return useYn;
	}
	public void setUseYn(Integer useYn) {
		this.useYn = useYn;
	}
	public Integer getDelYn() {
		return delYn;
	}
	public void setDelYn(Integer delYn) {
		this.delYn = delYn;
	}
	public String getCCGseq() {
		return CCGseq;
	}
	public void setCCGseq(String cCGseq) {
		CCGseq = cCGseq;
	}
	public String getCCGname() {
		return CCGname;
	}
	public void setCCGname(String cCGname) {
		CCGname = cCGname;
	}
	public String getCOUNTRY_ID() {
		return COUNTRY_ID;
	}
	public void setCOUNTRY_ID(String cOUNTRY_ID) {
		COUNTRY_ID = cOUNTRY_ID;
	}
	public String getCOUNTRY_NAME() {
		return COUNTRY_NAME;
	}
	public void setCOUNTRY_NAME(String cOUNTRY_NAME) {
		COUNTRY_NAME = cOUNTRY_NAME;
	}
	public Integer getREGION_ID() {
		return REGION_ID;
	}
	public void setREGION_ID(Integer rEGION_ID) {
		REGION_ID = rEGION_ID;
	}
	
	

}