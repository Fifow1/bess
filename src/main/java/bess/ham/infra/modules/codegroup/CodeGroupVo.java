package bess.ham.infra.modules.codegroup;


public class CodeGroupVo {
	
	private Integer shOption;
	private String shValue;
	private Integer shDelYn;
	private Integer shdate;
	private String shdate_s;
	private String shdate_e;
	
	
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
	public Integer getShdate() {
		return shdate;
	}
	public void setShdate(Integer shdate) {
		this.shdate = shdate;
	}

}