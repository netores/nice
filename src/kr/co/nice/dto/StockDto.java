package kr.co.nice.dto;

public class StockDto {
	
	private int stockno;
	private int stockamount;
	private int goodsno;
	
	
	 //조인을 위한 변수 선언
	private String goodsname;
	private int goodssize;
	private int price;
	private String color;
	private String gender;
	private String category;
	
	
	
	
	











	public StockDto(String goodsname, int goodssize, String color, String gender, String category) {
		super();
		this.goodsname = goodsname;
		this.goodssize = goodssize;
		this.color = color;
		this.gender = gender;
		this.category = category;
	}




	public StockDto(int stockno, int stockamount, int goodsno, String goodsname, int goodssize, int price, String color,
			String gender, String category) {
		super();
		this.stockno = stockno;
		this.stockamount = stockamount;
		this.goodsno = goodsno;
		this.goodsname = goodsname;
		this.goodssize = goodssize;
		this.price = price;
		this.color = color;
		this.gender = gender;
		this.category = category;
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




	public String getGoodsname() {
		return goodsname;
	}




	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
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




	public StockDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StockDto(int stockno, int stockamount, int goodsno) {
		super();
		this.stockno = stockno;
		this.stockamount = stockamount;
		this.goodsno = goodsno;
	}
	public int getStockno() {
		return stockno;
	}
	public void setStockno(int stockno) {
		this.stockno = stockno;
	}
	public int getStockamount() {
		return stockamount;
	}
	public void setStockamount(int stockamount) {
		this.stockamount = stockamount;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}




	@Override
	public String toString() {
		return "StockDto [goodsname=" + goodsname + ", goodssize=" + goodssize + ", color=" + color + ", gender="
				+ gender + ", category=" + category + "]";
	}





	
}
