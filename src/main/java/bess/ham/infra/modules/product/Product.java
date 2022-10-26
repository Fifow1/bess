package bess.ham.infra.modules.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	
	//product
	private Integer category;
	private String title;
	private Integer price;
	private Integer stock;
	private Date UploadDate;
	private Integer ifprDelYn;
	private Integer mainYn;
	
	// review
	private String ifprReviewContent;
	private String ifprReviewSeq;
	private String id;
	private Date ifprReviewRegDate;
	
	// qa
	private String ifprQaSeq;
	private String ifprQaTitle;
	private String ifprQaContent;
	private Date ifprQaRegDate;
	private Integer answerYn;
	private String member_seq;
	
	//productOption
	private String ifprSeq;
	private String ifpoSeq;
	private Integer option;
	private String optionSub;
	private String product_seq;
	
	//fileupload
	private MultipartFile[] uploadImg;
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;
	
	public Integer getCategory() {
		return category;
	}
	public void setCategory(Integer category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Date getUploadDate() {
		return UploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		UploadDate = uploadDate;
	}
	public Integer getIfprDelYn() {
		return ifprDelYn;
	}
	public void setIfprDelYn(Integer ifprDelYn) {
		this.ifprDelYn = ifprDelYn;
	}
	public Integer getMainYn() {
		return mainYn;
	}
	public void setMainYn(Integer mainYn) {
		this.mainYn = mainYn;
	}
	public String getIfprReviewContent() {
		return ifprReviewContent;
	}
	public void setIfprReviewContent(String ifprReviewContent) {
		this.ifprReviewContent = ifprReviewContent;
	}
	public String getIfprReviewSeq() {
		return ifprReviewSeq;
	}
	public void setIfprReviewSeq(String ifprReviewSeq) {
		this.ifprReviewSeq = ifprReviewSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getIfprReviewRegDate() {
		return ifprReviewRegDate;
	}
	public void setIfprReviewRegDate(Date ifprReviewRegDate) {
		this.ifprReviewRegDate = ifprReviewRegDate;
	}
	public String getIfprQaSeq() {
		return ifprQaSeq;
	}
	public void setIfprQaSeq(String ifprQaSeq) {
		this.ifprQaSeq = ifprQaSeq;
	}
	public String getIfprQaTitle() {
		return ifprQaTitle;
	}
	public void setIfprQaTitle(String ifprQaTitle) {
		this.ifprQaTitle = ifprQaTitle;
	}
	public String getIfprQaContent() {
		return ifprQaContent;
	}
	public void setIfprQaContent(String ifprQaContent) {
		this.ifprQaContent = ifprQaContent;
	}
	public Date getIfprQaRegDate() {
		return ifprQaRegDate;
	}
	public void setIfprQaRegDate(Date ifprQaRegDate) {
		this.ifprQaRegDate = ifprQaRegDate;
	}
	public Integer getAnswerYn() {
		return answerYn;
	}
	public void setAnswerYn(Integer answerYn) {
		this.answerYn = answerYn;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getIfprSeq() {
		return ifprSeq;
	}
	public void setIfprSeq(String ifprSeq) {
		this.ifprSeq = ifprSeq;
	}
	public String getIfpoSeq() {
		return ifpoSeq;
	}
	public void setIfpoSeq(String ifpoSeq) {
		this.ifpoSeq = ifpoSeq;
	}
	public Integer getOption() {
		return option;
	}
	public void setOption(Integer option) {
		this.option = option;
	}
	public String getOptionSub() {
		return optionSub;
	}
	public void setOptionSub(String optionSub) {
		this.optionSub = optionSub;
	}
	public String getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(String product_seq) {
		this.product_seq = product_seq;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	
	
	
}