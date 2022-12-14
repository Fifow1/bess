package bess.ham.infra.modules.code;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bess.ham.infra.modules.member.Member;

public class Code {

	// codeTABLE
	private String group_seq;
	private String groupName;
	private String codeName;
	
	private String CCseq;
	private String CCname;
	private String CCname_code;
	private Date CCregdate;
	private Integer CCdelYn;
	private String CCnameEn;
	
	
	private String CCGseq;
	private String CCGname;
	private String CCGname_code;
	private String CCGname_en;
	
	
	
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	public String getGroup_seq() {
		return group_seq;
	}
	public void setGroup_seq(String group_seq) {
		this.group_seq = group_seq;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getCCseq() {
		return CCseq;
	}
	public void setCCseq(String cCseq) {
		CCseq = cCseq;
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
	public String getCCGname_code() {
		return CCGname_code;
	}
	public void setCCGname_code(String cCGname_code) {
		CCGname_code = cCGname_code;
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
	public String getCCname_code() {
		return CCname_code;
	}
	public void setCCname_code(String cCname_code) {
		CCname_code = cCname_code;
	}
	public Date getCCregdate() {
		return CCregdate;
	}
	public void setCCregdate(Date cCregdate) {
		CCregdate = cCregdate;
	}
	public Integer getCCdelYn() {
		return CCdelYn;
	}
	public void setCCdelYn(Integer cCdelYn) {
		CCdelYn = cCdelYn;
	}
	public String getCCnameEn() {
		return CCnameEn;
	}
	public void setCCnameEn(String cCnameEn) {
		CCnameEn = cCnameEn;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	

}
