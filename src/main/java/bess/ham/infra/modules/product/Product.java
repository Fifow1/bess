package bess.ham.infra.modules.product;

import java.sql.Date;

public class Product {
	
	
	private Integer category;
	private String title;
	private Integer price;
	private Integer stock;
	private Date UploadDate;
	private Integer ifprDelYn;
	private Integer mainYn;
	
	private String ifprSeq;
	private String ifpoSeq;
	
	
	private Integer option;
	private String optionSub;
	private Integer product_seq;
	
	
	
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
	public Integer getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(Integer product_seq) {
		this.product_seq = product_seq;
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
	
	
	
	
	
}
