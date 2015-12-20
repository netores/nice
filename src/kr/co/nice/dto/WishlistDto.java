package kr.co.nice.dto;

public class WishlistDto {
	private int wishno;
	private String id;
	private int goodsno;
	private int wishamount;
	private String goodsname;
	private int price;
	private String goodsimg;
	
	private String color;
	
	private int goodssize;
	private String gender;
	
	
	public WishlistDto() {
		super();
	}


	public WishlistDto(int wishno, String id, int goodsno, int wishamount, String goodsname, int price, String goodsimg,
			String color, int goodssize, String gender) {
		super();
		this.wishno = wishno;
		this.id = id;
		this.goodsno = goodsno;
		this.wishamount = wishamount;
		this.goodsname = goodsname;
		this.price = price;
		this.goodsimg = goodsimg;
		this.color = color;
		this.goodssize = goodssize;
		this.gender = gender;
	}


	public int getWishno() {
		return wishno;
	}


	public void setWishno(int wishno) {
		this.wishno = wishno;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getGoodsno() {
		return goodsno;
	}


	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}


	public int getWishamount() {
		return wishamount;
	}


	public void setWishamount(int wishamount) {
		this.wishamount = wishamount;
	}


	public String getGoodsname() {
		return goodsname;
	}


	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getGoodsimg() {
		return goodsimg;
	}


	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
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


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


}