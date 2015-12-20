package kr.co.nice.dto;

public class ReceiveDto {
	private int receiveno; //입고 번호
	private int goodsno; // 물품번호
	private int incost; // 원가
	private int receiveamount; // 입고갯수
	private String receivedate; // 입고일
	private String company; // 입고회사 
	private String id; // 아이디 (session)
	
	//goods 와 조인을 하기위한 SQL문
	private String category;
	private String goodsname;
	private String color;
	private String gender;
	private int goodssize;
	
	
	
	public ReceiveDto(int receiveno, int goodsno, int incost, int receiveamount, String receivedate, String company,
			String id, String category, String goodsname, String color, String gender, int goodssize) {
		super();
		this.receiveno = receiveno;
		this.goodsno = goodsno;
		this.incost = incost;
		this.receiveamount = receiveamount;
		this.receivedate = receivedate;
		this.company = company;
		this.id = id;
		this.category = category;
		this.goodsname = goodsname;
		this.color = color;
		this.gender = gender;
		this.goodssize = goodssize;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getGoodssize() {
		return goodssize;
	}

	public void setGoodssize(int goodssize) {
		this.goodssize = goodssize;
	}

	public ReceiveDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getReceiveno() {
		return receiveno;
	}
	public void setReceiveno(int receiveno) {
		this.receiveno = receiveno;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	public int getIncost() {
		return incost;
	}
	public void setIncost(int incost) {
		this.incost = incost;
	}
	public int getReceiveamount() {
		return receiveamount;
	}
	public void setReceiveamount(int receiveamount) {
		this.receiveamount = receiveamount;
	}
	public String getReceivedate() {
		return receivedate;
	}
	public void setReceivedate(String receivedate) {
		this.receivedate = receivedate;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	

}
