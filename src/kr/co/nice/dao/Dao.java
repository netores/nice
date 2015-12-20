package kr.co.nice.dao;

import java.util.List;

import kr.co.nice.dto.GoodsDto;
import kr.co.nice.dto.OrderDto;
import kr.co.nice.dto.ReceiveDto;
import kr.co.nice.dto.ReviewDto;
import kr.co.nice.dto.StockDto;
import kr.co.nice.dto.UserDto;
import kr.co.nice.dto.UserorderDto;
import kr.co.nice.dto.WishlistDto;

public interface Dao {
//용화

	public GoodsDto select_one_goods_goodsname(GoodsDto dto);
	public List<StockDto> select_all_goodsstock();
	public List<GoodsDto> select_list_goods_goodsname(GoodsDto dto);
	public List<GoodsDto> select_list_goods_goodssize(String goodsname);
	public List<GoodsDto> select_list_goods_color(GoodsDto dto);
	public List<GoodsDto> select_list_goods_goodssize(GoodsDto dto);
	public List<StockDto> select_list_stock(StockDto dto);
	public int select_one_company(int goodsno);
	public void insert_order(OrderDto dto);
	public void insert_goods_newgoods(GoodsDto dto);
	public List<OrderDto> select_list_order();
	public void update_one_stock_amount(OrderDto dto);
	public int select_one_goodsorder_goodsno(int goodsorderno);
	public void update_one_goodsstock_amountPlus(StockDto dto);
	public void update_one_stock_nowamount(OrderDto dto);
	public void insert_one_stock(int goodsno);
	public List<ReceiveDto> select_all_goodsreceive();
	public void insert_one_goodsreceive(ReceiveDto dto);
	public List<UserorderDto> select_all_userOrder();
	public void update_one_userorder_status(UserorderDto dto);
	public void delete_list_goodsorder(int amount);
	public List<WishlistDto> select_list_wishlist(String id);
	public List<GoodsDto> select_list_userorder(String id);
	public void delete_list_wishlist(int wishno);
	public void insert_one_userorder(UserorderDto dto);
	public void insertOne(UserDto dto);
	public int loginOk(UserDto dto);
	public int selectByEmail(String email);
	public int selectById(String id);
	public UserDto selectOneUser(String id);
	public void modifyUser(UserDto dto);
	public void deleteUser(String id);
	public int select_one_grade(String id);
	public List<GoodsDto> select_list_goods(GoodsDto dto);
	public GoodsDto select_one_goods(int goodsno);
	public GoodsDto select_one_goodsname(String goodsname);
	public void review_insertOne(ReviewDto rdto);
	List<ReviewDto> select_review(int goodsno, int start, int end);
	public int getTotalCount(int goodsno);
	public List<GoodsDto> select_list_detail_goodssize(GoodsDto dto);
	public List<GoodsDto> select_list_color(GoodsDto dto);
	public List<GoodsDto> select_list_color_category(GoodsDto dto);
	public int select_review_avg(int goodsno);
	public int select_goodscount_gender_category(GoodsDto dto);
	public int select_goodscount_gender_color(GoodsDto dto);
	public void insert_one_wishlist(WishlistDto dto);

}
