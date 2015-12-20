package kr.co.nice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.nice.dto.GoodsDto;
import kr.co.nice.dto.OrderDto;
import kr.co.nice.dto.ReceiveDto;
import kr.co.nice.dto.ReviewDto;
import kr.co.nice.dto.ReviewPageDto;
import kr.co.nice.dto.StockDto;
import kr.co.nice.dto.TradeDto;
import kr.co.nice.dto.UserDto;
import kr.co.nice.dto.UserorderDto;
import kr.co.nice.dto.WishlistDto;

public class NiceDao implements Dao {
	
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}


	@Override
	public GoodsDto select_one_goods_goodsname(GoodsDto dto){
		dto = ss.selectOne("select_one_goods_goodsname",dto);
		return dto;
	}

	@Override
	public List<StockDto> select_all_goodsstock() {
		List<StockDto> list = ss.selectList("select_all_goodsstock");
		
		return list;
	}

	@Override
	public List<GoodsDto> select_list_goods_goodsname(GoodsDto dto) {
		List<GoodsDto> list = ss.selectList("select_list_goods_goodsname",dto);
		return list;
	}

	@Override
	public List<GoodsDto> select_list_goods_goodssize(String goodsname) {
		List<GoodsDto> list = ss.selectList("select_list_goods_goodssize",goodsname);
		return list;
	}
	
	public List<GoodsDto> select_list_goods_color(GoodsDto dto){
		List<GoodsDto> list = ss.selectList("select_list_goods_color",dto);
		return list;
	}

	@Override
	public List<GoodsDto> select_list_goods_goodssize(GoodsDto dto) {
		List<GoodsDto> list = ss.selectList("select_list_goods_goodssize",dto);
		return list;
	}

	@Override
	public List<StockDto> select_list_stock(StockDto dto) {
		List<StockDto> list = ss.selectList("select_list_stock",dto);
		return list;
	}

	@Override
	public int select_one_company(int goodsno) {
		System.out.println(goodsno);
		int cno=0;
		List<TradeDto> list = ss.selectList("select_all_company");
		
		for(TradeDto dto : list){
			if(dto.getGoodsno() ==goodsno){
				cno = ss.selectOne("select_one_company",goodsno);
				
			}
		}
		
		System.out.println(cno);
		
		return cno;
	}

	@Override
	public void insert_order(OrderDto dto) {
		ss.insert("insert_order",dto);
		
	}

	@Override
	public void insert_goods_newgoods(GoodsDto dto) {
		ss.insert("insert_goods_newgoods",dto);
		
	}

	@Override
	public List<OrderDto> select_list_order() {
	List<OrderDto> list = ss.selectList("select_list_order");
		
		return list;
	}

	@Override
	public void update_one_stock_amount(OrderDto dto) {
		ss.update("update_one_stock_amount",dto);
		
	}

	@Override
	public int select_one_goodsorder_goodsno(int goodsorderno) {
		
		return ss.selectOne("select_one_goodsorder_goodsno", goodsorderno);
	}

	@Override
	public void update_one_goodsstock_amountPlus(StockDto dto) {
		ss.update("update_one_goodsstock_amountPlus",dto);
		
		
	}

	@Override
	public void update_one_stock_nowamount(OrderDto dto) {
		ss.update("update_one_stock_nowamount",dto);
		
	}

	@Override
	public void insert_one_stock(int goodsno) {
		ss.insert("insert_one_stock",goodsno);
		
	}

	@Override
	public List<ReceiveDto> select_all_goodsreceive() {
		
		return ss.selectList("select_all_goodsreceive");
	}

	@Override
	public void insert_one_goodsreceive(ReceiveDto dto) {
		ss.insert("insert_one_goodsreceive",dto);
		
	}
	@Override
	public List<UserorderDto> select_all_userOrder() {
		List<UserorderDto> list = ss.selectList("select_all_userOrder");
		return list;
	}

	@Override
	public void update_one_userorder_status(UserorderDto dto) {
		ss.update("update_one_userorder_status",dto);
		
	}

	@Override
	public void delete_list_goodsorder(int amount) {
		ss.delete("delete_list_goodsorder",amount);
		
	}

	@Override
	public List<WishlistDto> select_list_wishlist(String id) {
		
		return ss.selectList("select_list_wishlist" , id);
		
	}

	@Override
	public List<GoodsDto> select_list_userorder(String id) {
		return ss.selectList("select_list_userorder",id);
	}

	@Override
	public void delete_list_wishlist(int wishno) {
		ss.update("delete_list_wishlist", wishno);
		
	}

	@Override
	public void insert_one_userorder(UserorderDto dto) {
		ss.insert("insert_one_userorder",dto);
		
	}

	@Override
	public int loginOk(UserDto dto) {
		return ss.selectOne("loginOk", dto);
	}

	@Override
	public int selectByEmail(String email) {
		return ss.selectOne("selectByEmail", email);
	}

	@Override
	public int selectById(String id) {
		return ss.selectOne("selectById", id);
	}

	@Override
	public UserDto selectOneUser(String id) {
		return ss.selectOne("selectOneUser", id);
	}

	@Override
	public void modifyUser(UserDto dto) {
		ss.update("modifyUser", dto);
		
	}

	@Override
	public void deleteUser(String id) {
		ss.delete("deleteUser", id);
		
	}

	@Override
	public int select_one_grade(String id) {
		return ss.selectOne("select_one_grade", id);
		
	}

	@Override
	public void insertOne(UserDto dto) {
		ss.insert("insertData",dto);
	}

	@Override
	public List<GoodsDto> select_list_goods(GoodsDto dto) {
		List<GoodsDto> list = ss.selectList("select_list_goods",dto);
		return list;
	}

	@Override
	public GoodsDto select_one_goods(int goodsno) {
		GoodsDto dto = ss.selectOne("select_one_goods",goodsno);
		
		return dto;
	}
	
	@Override
	public GoodsDto select_one_goodsname(String goodsname)
	{
		GoodsDto dto = ss.selectOne("select_one_goodsname",goodsname);
		return dto;
	}
	
	@Override
	public List<ReviewDto> select_review(int goodsno,int start,int end)
	{
		ReviewPageDto rpd = new ReviewPageDto(start, end, goodsno);
		return ss.selectList("select_review",rpd); 
	}
	
	@Override
	public void review_insertOne(ReviewDto rdto)
	{
		ss.insert("insert_review_one", rdto);
	}


	@Override
	public int getTotalCount(int goodsno) {
		
		return ss.selectOne("select_review_totalcount",goodsno);
	}

	@Override
	public List<GoodsDto> select_list_detail_goodssize(GoodsDto dto) {
		
		return ss.selectList("select_detail_goodssize",dto);
	}

	@Override
	public List<GoodsDto> select_list_color(GoodsDto dto) {
		
		return ss.selectList("select_list_color", dto);
	}

	@Override
	public List<GoodsDto> select_list_color_category(GoodsDto dto) {
	
		return ss.selectList("select_list_color_category", dto);
	}

	@Override
	public int select_review_avg(int goodsno) {
		return ss.selectOne("select_review_avg", goodsno);
	}

	@Override
	public int select_goodscount_gender_category(GoodsDto dto) {
		return ss.selectOne("select_goodsno_count_category_gender", dto);
	}

	@Override
	public int select_goodscount_gender_color(GoodsDto dto) {
		return ss.selectOne("select_goodsno_count_gender_color", dto);
	}


	@Override
	public void insert_one_wishlist(WishlistDto dto) {
		ss.insert("insert_one_wishlist",dto);
		
	}

	

}
