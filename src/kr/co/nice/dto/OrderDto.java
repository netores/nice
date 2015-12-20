package kr.co.nice.dto;

public class OrderDto {
	private int goodsorderno;
	private int goodsno;
	private int orderamount;
	private int cno;
	private String company;
	
	
	//조인을 위해서 추가
	
	private String category;
	private String goodsname;
	private String color;
	private String gender;
	private int goodssize;
	private int price;
	private String cname;
	
	
	public OrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDto(int goodsorderno, int goodsno, int orderamount, String company) {
		super();
		this.goodsorderno = goodsorderno;
		this.goodsno = goodsno;
		this.orderamount = orderamount;
		this.company = company;
	}
	
	
	
	public OrderDto(int goodsorderno, int goodsno, int orderamount, int cno, String company, String category,
			String goodsname, String color, String gender, int goodssize, int price, String cname) {
		super();
		this.goodsorderno = goodsorderno;
		this.goodsno = goodsno;
		this.orderamount = orderamount;
		this.cno = cno;
		this.company = company;
		this.category = category;
		this.goodsname = goodsname;
		this.color = color;
		this.gender = gender;
		this.goodssize = goodssize;
		this.price = price;
		this.cname = cname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getGoodssize() {
		return goodssize;
	}
	public void setGoodssize(int goodssize) {
		this.goodssize = goodssize;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getGoodsorderno() {
		return goodsorderno;
	}
	public void setGoodsorderno(int goodsorderno) {
		this.goodsorderno = goodsorderno;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	public int getOrderamount() {
		return orderamount;
	}
	public void setOrderamount(int orderamount) {
		this.orderamount = orderamount;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	
}
