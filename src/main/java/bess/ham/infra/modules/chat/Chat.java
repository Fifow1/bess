package bess.ham.infra.modules.chat;
//본인에게 맞는 package로 변경하도록 합니다.

public class Chat {
	
	private Integer chatSeq;
	private Integer chatDelNy;
	private Integer cuMember;
	private String chatCreateDate;
	
	//채팅 맴버 정보 추출을 위한 필드
	//아래 필드도 본인의 DB테이블에 맞게 변경해주세요
	private Integer seq;       //유저 시퀀스
	private String email;   //유저 이름 or 닉네임
	/* private String upPath; */     //프로필 이미지 경로
	/* private String upUuidName; */ //프로필 이미지 파일 이름
	
	public Integer getChatSeq() {
		return chatSeq;
	}
	public void setChatSeq(Integer chatSeq) {
		this.chatSeq = chatSeq;
	}
	public int getChatDelNy() {
		return chatDelNy;
	}
	public void setChatDelNy(int chatDelNy) {
		this.chatDelNy = chatDelNy;
	}
	public int getCuMember() {
		return cuMember;
	}
	public void setCuMember(int cuMember) {
		this.cuMember = cuMember;
	}
	public String getChatCreateDate() {
		return chatCreateDate;
	}
	public void setChatCreateDate(String chatCreateDate) {
		this.chatCreateDate = chatCreateDate;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}