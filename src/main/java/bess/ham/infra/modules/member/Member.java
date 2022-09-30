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
	
	private Integer address_zipcode;
	private String address_zip;
	private String address_detail;
	private String memo;
	
	private String sessSeq;
	private String sessId;
	
	private Integer delYn;
	
	private Integer IflgResultNy;
	
	
	

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}

	public String getSessId() {
		return sessId;
	}

	public void setSessId(String sessId) {
		this.sessId = sessId;
	}

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

	public Date getModdate() {
		return moddate;
	}

	public void setModdate(Date moddate) {
		this.moddate = moddate;
	}

	public Integer getDelYn() {
		return delYn;
	}

	public void setDelYn(Integer delYn) {
		this.delYn = delYn;
	}

	public Integer getIflgResultNy() {
		return IflgResultNy;
	}

	public void setIflgResultNy(Integer iflgResultNy) {
		IflgResultNy = iflgResultNy;
	}

	public Integer getAddress_zipcode() {
		return address_zipcode;
	}

	public void setAddress_zipcode(Integer address_zipcode) {
		this.address_zipcode = address_zipcode;
	}

	public String getAddress_zip() {
		return address_zip;
	}

	public void setAddress_zip(String address_zip) {
		this.address_zip = address_zip;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	

	
	
	
	
	
	
	


}
