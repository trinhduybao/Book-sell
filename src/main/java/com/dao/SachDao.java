package com.dao;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entity.LoaiSach;
import com.entity.Sach;

public interface SachDao extends JpaRepository<Sach, String> {
//	@Query("SELECT s " +
//		       "FROM Sach s " +
//		       "JOIN FETCH s.maLoai " +
//		       "LEFT JOIN (SELECT od.masach, COALESCE(SUM(od.soluong), 0) AS totalSold " +
//		       "           FROM DonHangChiTiet od " +
//		       "           GROUP BY od.masach) t " +
//		       "ON s.masach = t.masach " +
//		       "ORDER BY t.totalSold DESC")
//	List<Sach> findSachBanChay();
	Page<Sach> findSachByMaLoai(Optional<LoaiSach> loaiSach, Pageable pageable);
	Page<Sach> findByTensachContainingIgnoreCase(String tensach, Pageable pageable);
	@Query("SELECT o FROM Sach o WHERE o.masach = ?1")
	Sach findByMASACH(String maSach);
}
