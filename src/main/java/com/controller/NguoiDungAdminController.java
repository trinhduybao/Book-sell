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

import com.dao.NguoiDungDao;
import com.entity.NguoiDung;

@Controller
@RequestMapping("/nguoidung")
public class NguoiDungAdminController {
	@Autowired
	NguoiDungDao daoNG;

	@RequestMapping("")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		NguoiDung item = new NguoiDung();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<NguoiDung> page = daoNG.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/formnguoidung";
	}

	@RequestMapping("/edit/{manguoidung}")
	public String edit(Model model, @PathVariable("manguoidung") Integer manguoidung) {
		NguoiDung item = daoNG.findById(Integer.valueOf(manguoidung)).get();
		model.addAttribute("item", item);
		return "admin/formnguoidung";
	}
	
	@RequestMapping("/delete/{manguoidung}")
	public String create(@PathVariable("manguoidung") Integer manguoidung) {
		daoNG.deleteById(manguoidung);
		return "redirect:/nguoidung";
	}
}
