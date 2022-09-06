package bess.ham.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	
	private String seq;
	private String group_seq;
	private String groupName;
	private String groupName_en;
	private Integer CCcount;
	private Date regdate;
	private Date moddate;
	private Integer useYn;
	private Integer delYn;
// ------------------------------------------------
	
	public String getGroupName() {
		return groupName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getGroup_seq() {
		return group_seq;
	}
	public void setGroup_seq(String group_seq) {
		this.group_seq = group_seq;
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

}