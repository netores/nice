package kr.co.nice.dto;

public class TradeDto {
	private int cno;
	private String cname;
	private int goodsno;
	public TradeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TradeDto(int cno, String cname, int goodsno) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.goodsno = goodsno;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	} 
	
	

}
