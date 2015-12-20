package kr.co.nice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CSController {
	
	@RequestMapping("/customerService.do")
	public String customerService(){
		
		return "cs/customerService";
	}
	
	@RequestMapping("/customerInfo.do")
	public String customerInfo(){
		return "cs/customerInfo";
	}
	
	@RequestMapping("/orderInfo.do")
	public String orderInfo(){
		return "cs/orderInfo";
	}
	
	@RequestMapping("/deliveryInfo.do")
	public String deliveryInfo(){
		return "cs/deliveryInfo";
	}
	
	@RequestMapping("/e&rInfo.do")
	public String exchangeAndRefundInfo(){
		return "cs/exchangeAndRefundInfo";
	}
	
	@RequestMapping("/noticeInfo.do")
	public String noticeInfo(){
		return "cs/noticeInfo";
	}
	
	@RequestMapping("/etcInfo.do")
	public String etcInfo(){
		return "cs/etcInfo";
	}

}
