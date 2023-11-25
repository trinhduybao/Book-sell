package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.DonHangChiTietDao;
import com.dao.DonHangDao;
import com.dao.LoaiSachDao;
import com.dao.NguoiDungDao;
import com.dao.SachDao;
import com.entity.DonHang;
import com.entity.DonHangChiTiet;
import com.entity.LoaiSach;
import com.entity.NguoiDung;
import com.entity.Sach;
import com.service.SessionService;

@Controller
public class RedirectAdmin {
	
	@Autowired
	NguoiDungDao nDao;
	
	@Autowired
	DonHangDao dDao;
	
	@RequestMapping("/indexAdmin")
	public String index(Model model) {
		model.addAttribute("songuoidung", nDao.findAll().size());
		model.addAttribute("sodonhang", dDao.findAll().size());
		return "admin/index";
	}
	
	
	
}
