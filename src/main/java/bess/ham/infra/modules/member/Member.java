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
	private String numPhone;
	private Date regdate;
	private Date moddate;
	
	private String sessSeq;
	private String sessId;
	
	private Integer delYn;
	
	private Integer IflgResultNy;
	
	// ifmmAdress
	private String ifmmAdressSeq;
	private String member_seq;
	private String adressZipCode;
	private String adressZip;
	private String adressZipDetail;
	private String memo;
	private Integer mainYn;
	private Integer userYn;
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
	public String getNumPhone() {
		return numPhone;
	}
	public void setNumPhone(String numPhone) {
		this.numPhone = numPhone;
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
	public String getIfmmAdressSeq() {
		return ifmmAdressSeq;
	}
	public void setIfmmAdressSeq(String ifmmAdressSeq) {
		this.ifmmAdressSeq = ifmmAdressSeq;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getAdressZipCode() {
		return adressZipCode;
	}
	public void setAdressZipCode(String adressZipCode) {
		this.adressZipCode = adressZipCode;
	}
	public String getAdressZip() {
		return adressZip;
	}
	public void setAdressZip(String adressZip) {
		this.adressZip = adressZip;
	}
	public String getAdressZipDetail() {
		return adressZipDetail;
	}
	public void setAdressZipDetail(String adressZipDetail) {
		this.adressZipDetail = adressZipDetail;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Integer getMainYn() {
		return mainYn;
	}
	public void setMainYn(Integer mainYn) {
		this.mainYn = mainYn;
	}
	public Integer getUserYn() {
		return userYn;
	}
	public void setUserYn(Integer userYn) {
		this.userYn = userYn;
	}

	

	

	
	
	
	
	
	
	


}
