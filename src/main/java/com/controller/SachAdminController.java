package com.controller;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.SachDao;
import com.entity.Sach;
@Controller
@RequestMapping("/sachForm")
public class SachAdminController {
	@Autowired
	SachDao daoS;

	@RequestMapping("")
	public String formsach(Model model, @RequestParam("p") Optional<Integer> p) {
		Sach item = new Sach();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Sach> page = daoS.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/formsach";
	}

	@RequestMapping("/createSach")
	public String createSach(@Validated Sach item, BindingResult errors, Model model,
			@RequestParam("file") MultipartFile file) {
		if (errors.hasErrors()) {
			model.addAttribute("me", "Không được để trống các trường này");
		} else {
			if (!file.isEmpty()) {
				String fileName = StringUtils.cleanPath(file.getOriginalFilename());
				String uploadDir = "D:\\WSJava5\\ASM2\\src\\main\\resources\\static\\customer\\images";
				try {
					Path uploadPath = Paths.get(uploadDir);
					if (!Files.exists(uploadPath)) {
						Files.createDirectories(uploadPath);
					}
					try (InputStream inputStream = file.getInputStream()) {
						Path filePath = uploadPath.resolve(fileName);
						Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING); 
						item.setHinh(fileName);
						daoS.save(item);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return "redirect:/sachForm";
	}

	@RequestMapping("/editSach/{masach}")
	public String editSach(Model model, @PathVariable("masach") String masach) {
		Sach item = daoS.findById((masach)).get();
		model.addAttribute("item", item);
		model.addAttribute("linkhinh", item.getHinh());
		System.out.println(item.getHinh());
		return "admin/formsach";
	}

	@RequestMapping("/updateSach")
	public String updateSach(Sach item) {
		daoS.save(item);
		return "redirect:/sachForm/editSach/" + item.getMasach();
	}

	@RequestMapping("/deleteSach/{masach}")
	public String deleteSach(@PathVariable("masach") String masach) {
		daoS.deleteById(masach);
		return "redirect:/sachForm";
	}
}
