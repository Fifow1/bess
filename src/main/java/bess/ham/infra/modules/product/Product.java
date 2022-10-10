package bess.ham.infra.modules.product;

import java.sql.Date;

public class Product {
	
	
	private String seq;
	private Integer category;
	private String title;
	private Integer price;
	private Integer stock;
	private Date UploadDate;
	private Integer ifprDelYn;
	private Integer mainYn;
	
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
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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
	
	
	
	
	
	
}
