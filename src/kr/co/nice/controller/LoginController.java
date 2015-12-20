package kr.co.nice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.nice.dao.Dao;
import kr.co.nice.dto.UserDto;

@Controller
public class LoginController {
	
	@Autowired
	Dao dao;
	
	@RequestMapping("/registerPage.do")
	public String regPage(){
		
		return "user/registerPage";
	}
	
	@RequestMapping("/ckEmail.do")
	public String selectByEmail(@RequestParam("email") String email, Model model) {
		int flag = dao.selectByEmail(email);
		System.out.println(flag);
		String msg1 ="중복되는 Email입니다.";
		String msg2 ="사용가능합니다.";
		if(flag==1){
			model.addAttribute("msg", msg1);
			return "user/registerOk";
		}else{
			model.addAttribute("msg", msg2);
			return "user/registerOk";
		}

	}
	
	@RequestMapping("/registerForm.do")
	public String register(@RequestParam("name") String name, 
			@RequestParam("email") String email, Model model){
		int flag = dao.selectByEmail(email);
		if(flag==1){
			return "user/registerNo";
		}else{
			model.addAttribute("name", name);
			model.addAttribute("email", email);
			return "user/registerForm";
		}
	}
	
	@RequestMapping("/ckId.do")
	public String selectById(@RequestParam("id") String id, Model model) {
		int flag = dao.selectById(id);
		System.out.println(flag);
		String msg1 = "중복되는 ID";
		String msg2 = "사용 가능";
		if(flag==1){
			model.addAttribute("msg", msg1);
			System.out.println(msg1);
			return "user/registerOk";
		}else{
			model.addAttribute("msg", msg2);
			System.out.println(msg2);
			return "user/registerOk";
		}

	}
	
	@RequestMapping("/registerOk.do")
	public String registerOk(
			@RequestParam("id") String id,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@ModelAttribute UserDto dto, 
			Model model){
		
		int flag = dao.selectById(id);
		if(flag==1){
			model.addAttribute("name", name);
			model.addAttribute("email", email);
			return "user/registerIdNo";
		}else{
			dao.insertOne(dto);
			return "user/successReg";
		}

	}

	@RequestMapping("/loginPage.do")
	public String logPage(){
		
		return "user/loginPage";		
	}
	
	@RequestMapping("/loginOk.do")
	public String loginOk(@RequestParam("id") String id,
			@RequestParam("pw") String pw, HttpSession session){
		UserDto dto = new UserDto();
		dto.setId(id);
		dto.setPw(pw);
		int flag = dao.loginOk(dto);
		System.out.println(flag);
		if(flag==1){
			session.setAttribute("id", id);
			session.setAttribute("grade",dao.select_one_grade(id));
			return "user/loginOk";
		}else{
			return "user/loginNo";
		}
	}
	
	@RequestMapping("/corrUserInfo.do")
	public String corrUserInfo(String id, HttpSession session,
			Model model){
		id = (String) session.getAttribute("id");
		model.addAttribute("UserDto", dao.selectOneUser(id));
		return "user/corrUserInfo";
	}
	
	@RequestMapping("/corrUserInfoOk.do")
	public String corrUserInfoOk(
			@RequestParam("id") String id,
			@RequestParam("pw") String pw,
			@RequestParam("phone") String phone,
			@RequestParam("address") String address,
			@RequestParam("birthdate") String birthdate,
			HttpSession session,
			Model model){
		UserDto dto = new UserDto();
		dto.setId(id);
		dto.setPw(pw);
		dto.setPhone(phone);
		dto.setAddress(address);
		dto.setBirthdate(birthdate);
		
		dao.modifyUser(dto);
		
		session.setAttribute("id", id);
		return "user/corrUserInfoOk";
	}
	
	@RequestMapping("/delUserInfo.do")
	public String delUserInfo(@RequestParam("id") String id, HttpSession session){
		session.setAttribute("id", id);
		return "user/delUserInfo";
	}
	
	@RequestMapping("/delUserInfoOk.do")
	public String delUserInfoOk(@RequestParam("id") String id){
		dao.deleteUser(id);
		return "main/maintest";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.removeAttribute("id");
		session.removeAttribute("grade");
		return "main/main";
	}
}
