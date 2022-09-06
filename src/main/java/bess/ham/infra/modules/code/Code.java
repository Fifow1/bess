package bess.ham.infra.modules.code;

import java.util.Date;

public class Code {

	private Integer seq;
	private Integer group_seq;
	private String gropName;
	private String codeName;
	private Date regdate;
	private Integer useYn;
	private Integer delYn;
	
	private Integer CCseq;
	private Integer CCGseq;
	private String CCGname;
	private String CCGname_en;
	private String CCname;
	private String CCregdate;
	private Integer CCdelYn;
	
	
	
	public Integer getCCseq() {
		return CCseq;
	}
	public void setCCseq(Integer cCseq) {
		CCseq = cCseq;
	}
	public Integer getCCGseq() {
		return CCGseq;
	}
	public void setCCGseq(Integer cCGseq) {
		CCGseq = cCGseq;
	}
	public String getCCGname() {
		return CCGname;
	}
	public void setCCGname(String cCGname) {
		CCGname = cCGname;
	}
	public String getCCGname_en() {
		return CCGname_en;
	}
	public void setCCGname_en(String cCGname_en) {
		CCGname_en = cCGname_en;
	}
	public String getCCname() {
		return CCname;
	}
	public void setCCname(String cCname) {
		CCname = cCname;
	}
	public String getCCregdate() {
		return CCregdate;
	}
	public void setCCregdate(String cCregdate) {
		CCregdate = cCregdate;
	}
	public Integer getCCdelYn() {
		return CCdelYn;
	}
	public void setCCdelYn(Integer cCdelYn) {
		CCdelYn = cCdelYn;
	}
	public String getGropName() {
		return gropName;
	}
	public void setGropName(String gropName) {
		this.gropName = gropName;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getGroup_seq() {
		return group_seq;
	}
	public void setGroup_seq(Integer group_seq) {
		this.group_seq = group_seq;
	}
	public String getCodename() {
		return codeName;
	}
	public void setCodename(String codename) {
		this.codeName = codename;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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
	

}
