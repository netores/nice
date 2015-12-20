package kr.co.nice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.nice.dao.Dao;
import kr.co.nice.dto.GoodsDto;
import kr.co.nice.dto.OrderDto;
import kr.co.nice.dto.ReceiveDto;
import kr.co.nice.dto.StockDto;
import kr.co.nice.dto.UserorderDto;

@Controller
public class StockController {
	@Autowired
	Dao dao;

	@RequestMapping("/stocklist.do")
	public String stockList(Model model) {

		List<StockDto> list = dao.select_all_goodsstock();
		List<OrderDto> list2 = dao.select_list_order();
		List<ReceiveDto> list3 =dao.select_all_goodsreceive();
		List<UserorderDto> list4 = dao.select_all_userOrder();
		

		model.addAttribute("stocklist", list);
		model.addAttribute("orderlist", list2);
		model.addAttribute("receivelist",list3);
		model.addAttribute("userOrderList",list4);

		return "goods/stocklist";
	}


	@RequestMapping("/ajaxcategory.do")
	public String ajaxcategory(@RequestParam("gender") String gender, Model model) {

		String[] man = { "러닝", "스포츠웨어", "트레이닝", "테니스", "골프", "축구", "조던", "축구" };

		String[] woman = { "러닝", "스포츠웨어", "트레이닝", "테니스", "골프" };
		if (gender.equals("남성")) {
			model.addAttribute("category", man);
			model.addAttribute("categorySize", 8);
		} else if (gender.equals("여성")) {
			model.addAttribute("category", woman);
			model.addAttribute("categorySize", 5);
		}

		return "goods/ajaxcategory";
	}

	@RequestMapping("/ajaxgoodsname.do")
	public String ajaxgoodsname(@ModelAttribute GoodsDto dto, Model model) {
		List<GoodsDto> list = dao.select_list_goods_goodsname(dto);
		model.addAttribute("name", list);
		return "goods/ajaxgoodsname";
	}

	@RequestMapping("/ajaxgoodscolor.do")
	public String ajaxgoodscolor(@ModelAttribute GoodsDto dto, Model model) {
		List<GoodsDto> list = dao.select_list_goods_color(dto);
		model.addAttribute("color", list);

		return "goods/ajaxgoodscolor";

	}

	@RequestMapping("/ajaxgoodssize.do")
	public String ajaxgoodssize(@ModelAttribute GoodsDto dto, Model model) {
		List<GoodsDto> list = dao.select_list_goods_goodssize(dto);
		model.addAttribute("size", list);

		return "goods/ajaxgoodssize";

	}

	@RequestMapping("/ajaxstocklist.do")
	public String ajaxstocklist(@ModelAttribute StockDto dto, Model model) {
		List<StockDto> list = dao.select_list_stock(dto);
		model.addAttribute("stocklist", list);

		return "goods/ajaxstocklist";

	}

	@RequestMapping("/orderinsert.do")
	public String orderinsert(@ModelAttribute GoodsDto dto, @RequestParam("stock") int stock,
			@RequestParam("orderstock") int orderstock, Model model) {

		int goodsno = dao.select_one_goods_goodsname(dto).getGoodsno();
		
		
		int cno= dao.select_one_company(goodsno);
		
		if(cno!=0){
		OrderDto odto = new OrderDto();

		odto.setGoodsno(goodsno);
		odto.setCno(cno);
		odto.setOrderamount(orderstock);

		dao.insert_order(odto);
		}else{
				model.addAttribute("warning",cno);
		}
		
		

		return "redirect:/stocklist.do";
	}
	@RequestMapping("/orderupdate.do")
	public String orderupdate(@ModelAttribute OrderDto dto){
		dao.update_one_stock_nowamount(dto);
		return "redirect:/stocklist.do#stocklistContainer_tab2";
	}

	@RequestMapping("receive.do")
	public String receiveOrder(@ModelAttribute OrderDto dto, 
			@RequestParam("nowamount") int nowamount, 
			@RequestParam("orderamount") int receiveamount,
			@RequestParam("price") int price,
			@RequestParam("company") String company,
			Model model) {
		dto.setOrderamount(nowamount-receiveamount);
		
		dao.update_one_stock_amount(dto);
		int goodsno =dao.select_one_goodsorder_goodsno(dto.getGoodsorderno());
		
		StockDto sdto= new StockDto();
		sdto.setGoodsno(goodsno);
		sdto.setStockamount(receiveamount);
		
		dao.update_one_goodsstock_amountPlus(sdto);
		int amount = 0;
		dao.delete_list_goodsorder(amount);
		
		ReceiveDto rdto = new ReceiveDto();
		
		rdto.setGoodsno(goodsno);
		rdto.setIncost(price);
		rdto.setReceiveamount(receiveamount);
		rdto.setCompany(company);
		rdto.setId("admin");
		
		dao.insert_one_goodsreceive(rdto);
		
		
		return "redirect:/stocklist.do#stocklistContainer_tab4";
	}
	@RequestMapping("/stockNewInsert.do")
	public String stocklist(@ModelAttribute StockDto dto,Model model){
		List<StockDto> list =dao.select_list_stock(dto);
			model.addAttribute("name",list);
			model.addAttribute("boolean_result", list.isEmpty());
		
		return "goods/goodsname_check";
		
	}
	@RequestMapping("/insert.do")
	public String newinsert(){
		return "goods/insert";
	}
	@RequestMapping("/insertOk.do")
	public String insert_goods_newgoods(GoodsDto dto, HttpServletRequest req) {

		String s ="images/"+ req.getParameter("goodsimg1") +","
				+ "images/"+ req.getParameter("goodsimg2") +","
				+ "images/"+ req.getParameter("goodsimg3") +","
				+ "images/"+ req.getParameter("goodsimg4") +","
				+ "images/"+ req.getParameter("goodsimg5");

		dto.setGoodsimg(s);
		

		dao.insert_goods_newgoods(dto);
		
		int goodsno =dao.select_one_goods_goodsname(dto).getGoodsno();
		
	
		dao.insert_one_stock(goodsno);

		return "redirect:/stocklist.do#stocklistContainer_tab1";
	}
	
	//?�태 �?��추�?
		@RequestMapping("/changestatus.do")
		public String changeStatus(@ModelAttribute UserorderDto dto ,Model model){
			dao.update_one_userorder_status(dto);
			model.addAttribute("status",dto.getOrderstatus());
			return "goods/changeOrderStatus";
			
		}

}
