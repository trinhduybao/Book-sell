package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.NguoiDungDao;
import com.entity.NguoiDung;
import com.service.SessionService;

@Controller
public class LoginAndSignupController {
	@Autowired
	NguoiDungDao dao;
	
	@Autowired
	SessionService session;

	@PostMapping("/login")
	public String login(Model model, @RequestParam("tenDangNhap") String tenDangNhap,
			@RequestParam("matKhau") String matKhau) {
		if (tenDangNhap.isBlank() == true || matKhau.isBlank() == true) {
			model.addAttribute("errRong", true);
		}else {
			NguoiDung nguoiDung = dao.findByTenDangNhapAndMatKhau(tenDangNhap, matKhau);
			if (nguoiDung == null) {
				model.addAttribute("errACC", true);
			}else {
				if (nguoiDung.getVaitro()) {
					session.set("nguoiDung", nguoiDung);
					return "redirect:/indexAdmin";
				}
				if (!nguoiDung.getVaitro()) {
					session.set("nguoiDung", nguoiDung);
					return "redirect:/indexCustomer";
				}
			}
		}
		return "login";
	}

	@PostMapping("/signup")
	public String signup(@ModelAttribute("acc") @Validated NguoiDung nguoiDung,
			BindingResult errors, Model model, @RequestParam("xNMatKhau") String xNMatKhau) {
		NguoiDung item = dao.findByTenDangNhap(nguoiDung.getTendangnhap());
		if (item != null) {
			model.addAttribute("errUserNameExist", true);
		}else {
			if (xNMatKhau.isBlank()) {
				model.addAttribute("err", true);
			}else {
				if (!xNMatKhau.equals(nguoiDung.getMatkhau())) {
					model.addAttribute("errNoEquals", true);
				}else {
					if (errors.hasErrors()) {
					} else {
						dao.save(nguoiDung);
						model.addAttribute("mess", true);
					}
				}
			}
		}
		model.addAttribute("xnMK", xNMatKhau);
		return "signup";
	}
}