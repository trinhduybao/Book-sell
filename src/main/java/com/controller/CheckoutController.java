package com.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.DonHangChiTietDAON;
import com.dao.DonHangDao;
import com.dao.SachDao;
import com.entity.CartItem;
import com.entity.DonHang;
import com.entity.DonHangChiTiet;
import com.entity.NguoiDung;
import com.service.CartCookieService;
import com.service.SessionService;
@Controller
public class CheckoutController {
	@Autowired
	private CartCookieService cartCookieService;
	@Autowired
	SessionService session;
	
	@Autowired
	DonHangDao dDao;
	
	@Autowired
	SachDao sDao;
	
	@Autowired
	DonHangChiTietDAON dHCTDao;
	
	@RequestMapping("/cart-to-checkout")
	public String carttocheckout(@CookieValue(name = "cart", required = false) String cartCookie,
			HttpServletResponse response, Model model) {
		NguoiDung nguoiDung = session.get("nguoiDung");
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
		}
		int tongtien=0;
		for (CartItem cartItem : cart) {
			tongtien += (int) (cartItem.getSoluong()*cartItem.getGia());
		}
		model.addAttribute("tongtien", tongtien);
		model.addAttribute("nguoiDung", nguoiDung);
		model.addAttribute("cart", cart);
		return "customer/checkout";
	}
	
	
	@RequestMapping("/checkout")
	public String checkout(@CookieValue(name = "cart", required = false) String cartCookie,
			HttpServletResponse response, Model model) {
		NguoiDung nguoiDung = session.get("nguoiDung");
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		DonHang donHang = new DonHang();
		donHang.setManguoidung(nguoiDung);
		donHang.setDiachi(nguoiDung.getDiachi());
		dDao.save(donHang);
//		DonHangChiTiet donHangChiTiet = new DonHangChiTiet();
//		donHangChiTiet.setDonhang(donHang);
		//OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
		for (CartItem cartItem : cart) {
			DonHangChiTiet donHangChiTiet = new DonHangChiTiet();
			donHangChiTiet.setDonhang(donHang);
			donHangChiTiet.setSach(sDao.findByMASACH(cartItem.getMasach()));
			donHangChiTiet.setSoluong(cartItem.getSoluong());
			System.out.println(donHangChiTiet.getSach().getTensach());
			System.out.println(donHangChiTiet.getSoluong());
			System.out.println(donHangChiTiet.getDonhang().getMadonhang());
			//dHCTDao.save(donHangChiTiet);   
		}
		
		cart = null;
		cartCookieService.updateCartCookie(response, cart);
		model.addAttribute("cartsize", 0);
		return "customer/thankyou";
	}
}
