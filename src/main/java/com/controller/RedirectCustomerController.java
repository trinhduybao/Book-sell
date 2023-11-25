package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.NguoiDungDao;
import com.entity.CartItem;
import com.entity.NguoiDung;
import com.service.CartCookieService;
import com.service.SessionService;

@Controller
public class RedirectCustomerController {
	@Autowired
	private CartCookieService cartCookieService;

	@Autowired
	SessionService session;

	@Autowired
	NguoiDungDao nDao;

	@RequestMapping("/loginForm")
	public String loadFormLogin(@ModelAttribute("acc") NguoiDung nguoiDung) {
		return "login";
	}

	@RequestMapping("/signupForm")
	public String loadFormSignup(@ModelAttribute("acc") NguoiDung nguoiDung) {
		return "signup";
	}

	@RequestMapping("/indexCustomer")
	public String loadFormIndex(Model model, @CookieValue(name = "cart", required = false) String cartCookie) {
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/index";
	}

	@PostMapping("/editProfile")
	public String EditProfile(Model model, @RequestParam("tenDangNhap") String tenDangNhap,
			@RequestParam("matKhau") String matKhau, @RequestParam("diaChi") String diaChi,
			@RequestParam("soDienThoai") String soDienThoai) {
		NguoiDung nguoiDung = session.get("nguoiDung");
		session.remove("nguoiDung");
		NguoiDung item = nDao.findByTenDangNhap(tenDangNhap);
//		if (item == null) {
			nguoiDung.setDiachi(diaChi);
			nguoiDung.setTendangnhap(tenDangNhap);
			nguoiDung.setSodienthoai(soDienThoai);
			nguoiDung.setMatkhau(matKhau);
			nDao.save(nguoiDung);
			System.out.println();
			session.set("nguoiDung", nguoiDung);
			System.out.println("Doi");
		//}
		return "redirect:/myprofileCustomer";
	}

	@RequestMapping("/myprofileCustomer")
	public String loadFormMyProfile(Model model, @CookieValue(name = "cart", required = false) String cartCookie) {
		NguoiDung nguoiDung = session.get("nguoiDung");
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		model.addAttribute("nguoiDung", nguoiDung);
		return "customer/myprofile";
	}

	@RequestMapping("/logout")
	public String logout() {
		session.remove("nguoiDung");
		return "redirect:/loginForm";
	}

	@RequestMapping("/aboutCustomer")
	public String loadFormAbout(Model model, @CookieValue(name = "cart", required = false) String cartCookie) {
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/about";
	}

	@RequestMapping("/contactCustomer")
	public String loadFormContact(Model model, @CookieValue(name = "cart", required = false) String cartCookie) {
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/contact";
	}
}
