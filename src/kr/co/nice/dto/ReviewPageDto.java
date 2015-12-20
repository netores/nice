package kr.co.nice.dto;

public class ReviewPageDto 
{
	private int start;
	private int end;
	private int goodsno;
	public ReviewPageDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewPageDto(int start, int end, int goodsno) {
		super();
		this.start = start;
		this.end = end;
		this.goodsno = goodsno;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	
}
