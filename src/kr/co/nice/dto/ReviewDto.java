package kr.co.nice.dto;

import java.util.Date;

public class ReviewDto 
{
	private int	reviewno;
	private int goodsno;
	private int reviewgrade;
	private String context;
	private String id;
	private String reviewimg;
	private String reviewdate;
	private String reviewtitle;
	private int review_size;
	private int review_comf;
	private int review_durability;
	public ReviewDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	
	public ReviewDto(int reviewno, int goodsno,int reviewgrade,String reviewtitle, String context, String reviewdate
			) {
		super();
		this.reviewgrade= reviewgrade;
		this.reviewno = reviewno;
		this.goodsno = goodsno;
		this.context = context;		
		this.reviewdate = reviewdate;
		this.reviewtitle = reviewtitle;
	}




	public ReviewDto(int reviewno, int goodsno, int reviewgrade, String context, String id, String reviewdate,
			String reviewtitle, int review_size) {
		super();
		this.reviewno = reviewno;
		this.goodsno = goodsno;
		this.reviewgrade = reviewgrade;
		this.context = context;
		this.id = id;
		this.reviewdate = reviewdate;
		this.reviewtitle = reviewtitle;
		this.review_size = review_size;
	}




	public ReviewDto(int reviewno, int goodsno, int reviewgrade, String context, String id, String reviewimg,
			String reviewdate, String reviewtitle, int review_size, int review_comf, int review_durability) {
		super();
		this.reviewno = reviewno;
		this.goodsno = goodsno;
		this.reviewgrade = reviewgrade;
		this.context = context;
		this.id = id;
		this.reviewimg = reviewimg;
		this.reviewdate = reviewdate;
		this.reviewtitle = reviewtitle;
		this.review_size = review_size;
		this.review_comf = review_comf;
		this.review_durability = review_durability;
	}




	public int getReview_size() {
		return review_size;
	}




	public void setReview_size(int review_size) {
		this.review_size = review_size;
	}




	public int getReview_comf() {
		return review_comf;
	}




	public void setReview_comf(int review_comf) {
		this.review_comf = review_comf;
	}




	public int getReview_durability() {
		return review_durability;
	}




	public void setReview_durability(int review_durability) {
		this.review_durability = review_durability;
	}




	public String getReviewtitle() {
		return reviewtitle;
	}

	public void setReviewtitle(String reviewtitle) {
		this.reviewtitle = reviewtitle;
	}

	public String getReviewdate() {
		return reviewdate;
	}

	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}

	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	public int getReviewgrade() {
		return reviewgrade;
	}
	public void setReviewgrade(int reviewgrade) {
		this.reviewgrade = reviewgrade;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReviewimg() {
		return reviewimg;
	}
	public void setReviewimg(String reviewimg) {
		this.reviewimg = reviewimg;
	}
	
	
}
