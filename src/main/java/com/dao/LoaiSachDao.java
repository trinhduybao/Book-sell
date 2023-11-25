package com.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entity.LoaiSach;
import com.entity.Sach;

public interface LoaiSachDao extends JpaRepository<LoaiSach, String> {
	@Query("SELECT l.maloai, l.tenloai, COUNT(s) " + "FROM LoaiSach l " + "LEFT JOIN l.dsSach s "
			+ "GROUP BY l.maloai, l.tenloai")
	List<Object[]> getLoaiSachWithBookCount();
}
