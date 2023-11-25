package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.LoaiSachDao;
import com.entity.LoaiSach;

@Controller
@RequestMapping("/loaiSachForm")
public class LoaiSachAdminController {
	@Autowired
	LoaiSachDao daoLS;
	
	@RequestMapping("")
	public String formloaisach(Model model, @RequestParam("p") Optional<Integer> p) {
		LoaiSach item = new LoaiSach();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<LoaiSach> page = daoLS.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/formloaisach";
	}

	@RequestMapping("/createLoaiSach")
	public String createLoaiSach(@Validated LoaiSach item, BindingResult errors, Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("me", "Không được để trống các trường này");
		} else {
			daoLS.save(item);
		}
		daoLS.save(item);
		return "redirect:/loaisachForm";
	}

	@RequestMapping("/editLoaiSach/{maloai}")
	public String editLoaiSach(Model model, @PathVariable("maloai") String maloai) {
		LoaiSach item = daoLS.findById((maloai)).get();
		model.addAttribute("item", item);
		return "admin/formloaisach";
	}

	@RequestMapping("/updateLoaiSach")
	public String updateLoaiSach(LoaiSach item) {
		daoLS.save(item);
		return "redirect:/loaisachForm/editLoaiSach/" + item.getMaloai();
	}

//	@RequestMapping("/admin/deleteLoaiSach/{maloai}")
//	public String deleteLoaiSach(@PathVariable("maloai") String maloai) {
//		daoLS.deleteById(maloai);
//		return "redirect:/admin/formloaisach";
//	}
}
