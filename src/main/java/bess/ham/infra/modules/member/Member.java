package bess.ham.infra.modules.member;

import java.util.Date;

public class Member {
	
	private String seq;
	private String id;
	private String pw;
	private Integer gender;
	private Date dob;
	private Integer authority;
	private String email;
	private String number_phone;
	private Date regdate;
	private Date moddate;
	private Integer delYn;
	
	
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Integer getAuthority() {
		return authority;
	}
	public void setAuthority(Integer authority) {
		this.authority = authority;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber_phone() {
		return number_phone;
	}
	public void setNumber_phone(String number_phone) {
		this.number_phone = number_phone;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getModdae() {
		return moddate;
	}
	public void setModdae(Date moddae) {
		this.moddate = moddae;
	}
	public Integer getDelYn() {
		return delYn;
	}
	public void setDelYn(Integer delYn) {
		this.delYn = delYn;
	}
	


}
