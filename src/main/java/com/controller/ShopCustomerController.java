package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.LoaiSachDao;
import com.dao.SachDao;
import com.entity.CartItem;
import com.entity.LoaiSach;
import com.entity.Sach;
import com.service.CartCookieService;
import com.service.LoaiSachService;
import com.service.SessionService;

@Controller
@RequestMapping("/shopCustomer")
public class ShopCustomerController {

	@Autowired
	SachDao sDAO;

	@Autowired
	LoaiSachDao lDAO;

	@Autowired
	SessionService session;

	@Autowired
	private CartCookieService cartCookieService;

	@Autowired
	LoaiSachService lSachService;

	@RequestMapping("")
	public String loadShopCustomer(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("sortOrder") Optional<String> sortOrder,
			@CookieValue(name = "cart", required = false) String cartCookie) {

		Pageable pageable;
		if (sortOrder.isPresent() && sortOrder.get().equals("az")) {
			pageable = PageRequest.of(p.orElse(0), 9, Sort.by("tensach").ascending());
		} else if (sortOrder.isPresent() && sortOrder.get().equals("za")) {
			pageable = PageRequest.of(p.orElse(0), 9, Sort.by("tensach").descending());
		} else if (sortOrder.isPresent() && sortOrder.get().equals("lth")) {
			pageable = PageRequest.of(p.orElse(0), 9, Sort.by("gia").ascending());
		} else if (sortOrder.isPresent() && sortOrder.get().equals("htl")) {
			pageable = PageRequest.of(p.orElse(0), 9, Sort.by("gia").descending());
		} else {
			pageable = PageRequest.of(p.orElse(0), 9);
		}
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		Page<Sach> dsSach = sDAO.findAll(pageable);
		model.addAttribute("dsSach", dsSach);
		model.addAttribute("dsLoaiSachVaSoLuong", lSachService.getLoaiSachVoiSoLuongSach());
		return "customer/shop";
	}

	@RequestMapping("/loaiSach")
	public String loadLoaiSach(Model model, @RequestParam("mL") String maLoai, @RequestParam("p") Optional<Integer> p,
			@CookieValue(name = "cart", required = false) String cartCookie) {
		Optional<LoaiSach> loaiSach = lDAO.findById(maLoai);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Sach> dsSachTheoLoai = sDAO.findSachByMaLoai(loaiSach, pageable);
		model.addAttribute("dsSach", dsSachTheoLoai);
		model.addAttribute("dsLoaiSachVaSoLuong", lSachService.getLoaiSachVoiSoLuongSach());
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/shop";
	}

	@RequestMapping("/timSach")
	public String loadTimSach(Model model, @RequestParam("tenSach") String tenSach,
			@RequestParam("p") Optional<Integer> p, @CookieValue(name = "cart", required = false) String cartCookie) {
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Sach> dsSachTimTheoTen = sDAO.findByTensachContainingIgnoreCase(tenSach, pageable);
		model.addAttribute("dsSach", dsSachTimTheoTen);
		model.addAttribute("dsLoaiSachVaSoLuong", lSachService.getLoaiSachVoiSoLuongSach());
		model.addAttribute("tenSach", tenSach);
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/shop";
	}

	@RequestMapping("/shop-singleCustomer")
	public String loadShopSingle(Model model, @RequestParam("maSach") String maSach,
			@CookieValue(name = "cart", required = false) String cartCookie) {
		Sach sach = sDAO.findById(maSach).get();
		model.addAttribute("sach", sach);
		List<CartItem> cart = cartCookieService.getCartFromCookie(cartCookie);
		if (cart != null) {
			model.addAttribute("cartsize", cart.size());
			System.out.println(cart.size());
		} else {
			model.addAttribute("cartsize", 0);
		}
		return "customer/shop-single";
	}

}
