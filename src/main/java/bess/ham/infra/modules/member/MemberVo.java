package bess.ham.infra.modules.member;


public class MemberVo {

	private String shSeq;
	private String shId;
	private String shValue;
	private Integer shOption;
	private Integer shDelYn;
//	for cache
	
	
	public String getShseq() {
		return shSeq;
	}
	public void setShseq(String shseq) {
		this.shSeq = shseq;
	}
	public String getShId() {
		return shId;
	}
	public void setShId(String shId) {
		this.shId = shId;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShDelYn() {
		return shDelYn;
	}
	public void setShDelYn(Integer shDelYn) {
		this.shDelYn = shDelYn;
	}
	
}
