package bess.ham.infra.modules.member;

import bess.ham.infra.common.util.PageMakeVo;

public class MemberVo extends PageMakeVo{

	private String shSeq;
	private String shId;
	private String shValue;
	private Integer shOption;
	private Integer shDelYn;
	private Integer shQaOption;
//	for cache
	
	
	public String getShSeq() {
		return shSeq;
	}
	public void setShSeq(String shSeq) {
		this.shSeq = shSeq;
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
	public Integer getShQaOption() {
		return shQaOption;
	}
	public void setShQaOption(Integer shQaOption) {
		this.shQaOption = shQaOption;
	}
	
}
