package bess.ham.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	
	private Integer seq;
	private String groupName;
	private String groupName_en;
	private Date regdate;
	private Integer useYn;
	private Integer delYn;
// ------------------------------------------------
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
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
