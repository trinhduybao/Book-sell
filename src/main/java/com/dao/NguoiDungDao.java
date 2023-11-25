package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entity.NguoiDung;

public interface NguoiDungDao extends JpaRepository<NguoiDung, Integer>{
	@Query("SELECT o FROM NguoiDung o WHERE o.tendangnhap = ?1 AND  o.matkhau = ?2")
	NguoiDung findByTenDangNhapAndMatKhau(String tenDangNhap, String matKhau);
	@Query("SELECT o FROM NguoiDung o WHERE o.tendangnhap = ?1")
	NguoiDung findByTenDangNhap(String tenDangNhap);
}