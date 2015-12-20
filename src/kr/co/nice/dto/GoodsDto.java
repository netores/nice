package kr.co.nice.dto;

public class GoodsDto {
	private int goodsno ,price,goodssize,discount,status;
	private String goodsname,releasedate,goodsimg,explanation,color,material,country,category,gender;
	public GoodsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodsDto(int goodsno, int price, int goodssize, int discount, int status, String goodsname,
			String releasedate, String goodsimg, String explanation, String color, String material, String country,
			String category, String gender) {
		super();
		this.goodsno = goodsno;
		this.price = price;
		this.goodssize = goodssize;
		this.discount = discount;
		this.status = status;
		this.goodsname = goodsname;
		this.releasedate = releasedate;
		this.goodsimg = goodsimg;
		this.explanation = explanation;
		this.color = color;
		this.material = material;
		this.country = country;
		this.category = category;
		this.gender = gender;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	
	public GoodsDto(int goodsno, int price, String goodsname, String goodsimg, String category, String gender) {
		super();
		this.goodsno = goodsno;
		this.price = price;
		this.goodsname = goodsname;
		this.goodsimg = goodsimg;
		this.category = category;
		this.gender = gender;
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
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getReleasedate() {
		return releasedate;
	}
	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}
	public String getGoodsimg() {
		return goodsimg;
	}
	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getmaterial() {
		return material;
	}
	public void setmaterial(String material) {
		this.material = material;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
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
	@Override
	public String toString() {
		return "GoodsDto [goodsno=" + goodsno + ", price=" + price + ", goodssize=" + goodssize + ", discount="
				+ discount + ", status=" + status + ", goodsname=" + goodsname + ", releasedate=" + releasedate
				+ ", goodsimg=" + goodsimg + ", explanation=" + explanation + ", color=" + color + ", material="
				+ material + ", country=" + country + ", category=" + category + ", gender=" + gender + "]";
	}
	
	
}