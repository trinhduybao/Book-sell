package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.DonHangDao;
import com.entity.DonHang;

@Controller
@RequestMapping("/donhang")
public class DonHangAdminController {
	@Autowired
	DonHangDao daoDH;

	@RequestMapping("")
	public String formdonhang(Model model, @RequestParam("p") Optional<Integer> p) {
		DonHang item = new DonHang();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<DonHang> page = daoDH.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/formdonhang";
	}

	@RequestMapping("/editDonHang/{madonhang}")
	public String editDonHang(Model model, @PathVariable("madonhang") Integer madonhang) {
		DonHang item = daoDH.findById(madonhang).get();
		model.addAttribute("item", item);
//		List<NguoiDung> page = dao.findAll();
//		model.addAttribute("page", page);
//		System.out.println(page);
		return "admin/formdonhang";
	}

	@RequestMapping("/deleteDonHang/{madonhang}")
	public String deleteDonHang(@PathVariable("madonhang") Integer madonhang) {
		daoDH.deleteById(madonhang);
		return "redirect:/donhang";
	}
}
