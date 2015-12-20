package kr.co.nice.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.nice.dao.Dao;
import kr.co.nice.dto.GoodsDto;
import kr.co.nice.dto.ReviewDto;
import kr.co.nice.dto.UserorderDto;
import kr.co.nice.dto.WishlistDto;

@Controller
public class GoodsListController {

	@Autowired
	Dao dao;

	@RequestMapping("/list.do")
	public String selectList(@ModelAttribute GoodsDto dto, Model model) {
		List<GoodsDto> goodslist = null;
		int goodscount = 0;
		List<Integer> reviewavg = new ArrayList<Integer>();
		if(dto.getCategory()==null)
		{
			goodslist =dao.select_list_color(dto);
			goodscount = dao.select_goodscount_gender_color(dto);
			model.addAttribute("goodscount", goodscount);
			model.addAttribute("color", dto.getColor());
			model.addAttribute("gender", dto.getGender());
			model.addAttribute("list",goodslist);
			int[] a = new int[goodslist.size()];
			for(int i=0;i<goodslist.size();i++)
			{
				a[i] =  goodslist.get(i).getGoodsno();
			}
			for(int i=0;i<a.length;i++)
			{
				reviewavg.add(dao.select_review_avg(a[i]));
			}
				model.addAttribute("reviewavg", reviewavg);
				model.addAttribute("reviewlength", reviewavg.size());
			if(dto.getGender().equals("남성"))
			{
				return "main/manlist";
			}
			else if(dto.getGender().equals("여성"))
			{
				return "main/womanlist";
			}
		}
		else
		{
			if(dto.getColor()==null)
			{
				goodslist = dao.select_list_goods(dto);
				goodscount = dao.select_goodscount_gender_category(dto);
				model.addAttribute("goodscount", goodscount);
				model.addAttribute("category", dto.getCategory());	
				model.addAttribute("gender", dto.getGender());
				model.addAttribute("list",goodslist);
				int[] a = new int[goodslist.size()];
				for(int i=0;i<goodslist.size();i++)
				{
					a[i] =  goodslist.get(i).getGoodsno();
				}
				for(int i=0;i<a.length;i++)
				{
					reviewavg.add(dao.select_review_avg(a[i]));
				}
					model.addAttribute("reviewavg", reviewavg);
					model.addAttribute("reviewlength", reviewavg.size());
				if(dto.getGender().equals("남성"))
				{
					if(dto.getCategory().equals("키즈"))
						return "main/kidslist";
					return "main/manlist";
				}
				else if(dto.getGender().equals("여성"))
				{
					if(dto.getCategory().equals("키즈"))
						return "main/kidslist";
					return "main/womanlist";
				}
			}
			else
			{
				goodslist = dao.select_list_color_category(dto);
				model.addAttribute("color", dto.getColor());
				model.addAttribute("gender", dto.getGender());
				model.addAttribute("category", dto.getCategory());	
				model.addAttribute("list",goodslist);
				int[] a = new int[goodslist.size()];
				for(int i=0;i<goodslist.size();i++)
				{
					a[i] =  goodslist.get(i).getGoodsno();
				}
				for(int i=0;i<a.length;i++)
				{
					reviewavg.add(dao.select_review_avg(a[i]));
				}
					model.addAttribute("reviewavg", reviewavg);
					model.addAttribute("reviewlength", reviewavg.size());
				if(dto.getGender().equals("남성"))
				{
					if(dto.getCategory().equals("키즈"))
						return "main/kidslist";
					return "main/manlist";
				}
				else if(dto.getGender().equals("여성"))
				{
					if(dto.getCategory().equals("키즈"))
						return "main/kidslist";
					return "main/womanlist";
				}
			}
			
		}
		return "maintest";
	}
	@RequestMapping("/detail.do")
	public String goodsdetail(@RequestParam(value="countPerPage",defaultValue="3")int countPerPage, 
			@RequestParam(value="currentPage",defaultValue="1")int currentPage,
			@RequestParam("goodsno")int goodsno , Model model)
	{
		//전체페이지 갯수 구하기(전체 게시물 갯수구하기)
		int total = dao.getTotalCount(goodsno);
		//전체 페이지 수 구하기
		int totalPage = (int)Math.ceil(total/(countPerPage/1.0));
		int start = (currentPage-1)*countPerPage+1;
		int end = countPerPage*currentPage;
		int startPage = currentPage-5<=0?1:currentPage-5;
		int endPage = startPage+10>=totalPage?totalPage:startPage+10;

		boolean prev = currentPage>5?true:false;
		boolean next = currentPage+10/2>=totalPage?false:true;
				
		model.addAttribute("prev",prev);
		model.addAttribute("next",next);
		model.addAttribute("total",total);
		model.addAttribute("totalpage",totalPage);
		model.addAttribute("currentpage",currentPage);
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("startpage",startPage);
		model.addAttribute("endpage",endPage);
		model.addAttribute("review_list",dao.select_review(goodsno, start, end));
		GoodsDto dto = dao.select_one_goods(goodsno);
		List<GoodsDto> sizedto = dao.select_list_detail_goodssize(dto);
		model.addAttribute("detail_size", sizedto);
		
		model.addAttribute("detail",dto);
		String [] img = dto.getGoodsimg().split(",");
		
		model.addAttribute("imglength",img.length);
		model.addAttribute("img",img);
		
		
		return "main/detail";
	}
	@RequestMapping("/main.do")
	public String testpage() {

		return "main/main";
	}
	@RequestMapping("/reviewForm.do")
	public String reviewForm(@RequestParam("goodsno")int goodsno,Model model)
	{
		model.addAttribute("goodsno",goodsno);
		return "main/reviewForm";
	}
	
	@RequestMapping("/reviewOk.do")
	public String reivewOk(@ModelAttribute ReviewDto rdto,Model model)
	{
		dao.review_insertOne(rdto);
		int goodsno = rdto.getGoodsno();
		return "redirect:/detail.do?goodsno="+goodsno;
	}
	@RequestMapping("/detailajax.do")
	public String ajax(@RequestParam(value="countPerPage",defaultValue="3")int countPerPage, 
			@RequestParam(value="currentPage",defaultValue="1")int currentPage,
			@RequestParam("goodsno")int goodsno , Model model)
	{
		//전체페이지 갯수 구하기(전체 게시물 갯수구하기)
				int total = dao.getTotalCount(goodsno);
				//전체 페이지 수 구하기
				int totalPage = (int)Math.ceil(total/(countPerPage/1.0));
				int start = (currentPage-1)*countPerPage+1;
				int end = countPerPage*currentPage;
				int startPage = currentPage-5<=0?1:currentPage-5;
				int endPage = startPage+10>=totalPage?totalPage:startPage+10;

				boolean prev = currentPage>5?true:false;
				boolean next = currentPage+10/2>=totalPage?false:true;
				model.addAttribute("goodsno",goodsno);
				model.addAttribute("prev",prev);
				model.addAttribute("next",next);
				model.addAttribute("total",total);
				model.addAttribute("totalpage",totalPage);
				model.addAttribute("currentpage",currentPage);
				model.addAttribute("start",start);
				model.addAttribute("end",end);
				model.addAttribute("startpage",startPage);
				model.addAttribute("endpage",endPage);
				model.addAttribute("review_list",dao.select_review(goodsno, start, end));
				GoodsDto dto = dao.select_one_goods(goodsno);
				
				
				
				model.addAttribute("detail",dto);
				String [] img = dto.getGoodsimg().split(",");
				for(int i=0; i<img.length;i++){
					img[i] = img[i].substring(1);
				}
				
				model.addAttribute("img",img);
		return "main/detailajax";
	}
	@RequestMapping("/basket.do")
	public String selectByNo(HttpSession session, Model model)
	{
		String id = (String)session.getAttribute("id");
		model.addAttribute("basket", dao.select_list_wishlist(id));
		return "wishlist/basket";
		
	}
	@RequestMapping("/insertwishlist.do")
	public String insert_one_wishlist(HttpSession session,@ModelAttribute WishlistDto dto){
		String id =(String)session.getAttribute("id");
		dto.setId(id);
		dao.insert_one_wishlist(dto);
		return "redirect:/basket.do";
	}
	
	@RequestMapping("/p​aymentList.do")
	public String payment(HttpSession session,Model model) {
		String id =(String)session.getAttribute("id");
		model.addAttribute("basket2", dao.select_list_wishlist(id));
		return "wishlist/p​aymentList";

	}
	@RequestMapping("/detailpayment.do")
	public String detail_payment(HttpSession session,@RequestParam("size") int size,
			@RequestParam("amount") int amount,
			@RequestParam("goodsname") String goodsname,
			@RequestParam("imgsrc") String imgsrc,
			@RequestParam("color") String color,
			@RequestParam("goodsno") int goodsno,
			@RequestParam("price") int price,Model model,
			@RequestParam("gender") String gender
			){
		model.addAttribute("amount",amount);
		model.addAttribute("goodsname",goodsname);
		model.addAttribute("imgsrc",imgsrc);
		model.addAttribute("color",color);
		model.addAttribute("goodsno",goodsno);
		model.addAttribute("price",price);
		model.addAttribute("size",size);
		model.addAttribute("gender",gender);
		
		
		return "main/detailp​aymentList";
	}
	
	@RequestMapping("/orderlist.do")
	public String selectByStatus(HttpSession session ,Model model)
	{
		String id =(String)session.getAttribute("id");
		model.addAttribute("status", dao.select_list_userorder(id));
		return "wishlist/orderlist";
		
	}
	
	@RequestMapping("/delete")
	public String deleteData(@RequestParam("wishno")int wishno)
	{
		dao.delete_list_wishlist(wishno);
		return "redirect:/basket.do";
	}
	@RequestMapping("/buyOk")
	public String BuyOk(@RequestParam("goods_no") String goods_no, @RequestParam("buy_amount") String buy_amount,
			@RequestParam("delivery_address") String delivery_address,
			@RequestParam("receive_name") String receive_name,
			@RequestParam("receive_cp") String receive_cp,
			HttpSession session) {
			String id =(String)session.getAttribute("id");
			UserorderDto dto = new UserorderDto();
			String goodsno[] = goods_no.split(",");
			String buyamount[] = buy_amount.split(",");
			for(int i=0; i<goodsno.length;i++){
				dto.setGoodsno(Integer.parseInt(goodsno[i]));
				dto.setBuyamount(Integer.parseInt(buyamount[i]));
				dto.setOrderaddress(delivery_address);
				
				dto.setId(id);
				dto.setOrderstatus("배송준비중");
				dto.setReceive_name(receive_name);
				dto.setReceive_cp(receive_cp);
				
				dao.insert_one_userorder(dto);
				
			}
			

			
			
		
		return "redirect:/orderlist.do";

	}

}
