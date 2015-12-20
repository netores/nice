package kr.co.nice.dto;

public class UserorderDto {

	
//	userorderno, goodsno, buyamount, paydate, id, orderaddress, orderstatus
	private int userorderno;
	private int goodsno;
	private int buyamount;
	private String paydate;
	private String id;
	private String orderaddress;
	private String orderstatus;
	private String receive_name;
	private	String receive_cp;
	
	//goods 테이블과 조인을 위한 변수 
	private String goodsname;
	private String category;
	private String gender;
	private String color;
	private int price;
	private int goodssize;
	private String goodsimg;
	
	public UserorderDto() {
		super();
	}

	public UserorderDto(int userorderno, int goodsno, int buyamount, String paydate, String id, String orderaddress,
			String orderstatus, String receive_name, String receive_cp, String goodsname, String category,
			String gender, String color, int price, int goodssize, String goodsimg) {
		super();
		this.userorderno = userorderno;
		this.goodsno = goodsno;
		this.buyamount = buyamount;
		this.paydate = paydate;
		this.id = id;
		this.orderaddress = orderaddress;
		this.orderstatus = orderstatus;
		this.receive_name = receive_name;
		this.receive_cp = receive_cp;
		this.goodsname = goodsname;
		this.category = category;
		this.gender = gender;
		this.color = color;
		this.price = price;
		this.goodssize = goodssize;
		this.goodsimg = goodsimg;
	}

	public int getUserorderno() {
		return userorderno;
	}

	public void setUserorderno(int userorderno) {
		this.userorderno = userorderno;
	}

	public int getGoodsno() {
		return goodsno;
	}

	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}

	public int getBuyamount() {
		return buyamount;
	}

	public void setBuyamount(int buyamount) {
		this.buyamount = buyamount;
	}

	public String getPaydate() {
		return paydate;
	}

	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderaddress() {
		return orderaddress;
	}

	public void setOrderaddress(String orderaddress) {
		this.orderaddress = orderaddress;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getReceive_name() {
		return receive_name;
	}

	public void setReceive_name(String receive_name) {
		this.receive_name = receive_name;
	}

	public String getReceive_cp() {
		return receive_cp;
	}

	public void setReceive_cp(String receive_cp) {
		this.receive_cp = receive_cp;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getGoodssize() {
		return goodssize;
	}

	public void setGoodssize(int goodssize) {
		this.goodssize = goodssize;
	}

	public String getGoodsimg() {
		return goodsimg;
	}

	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}

		}