package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.entity.DonHangChiTiet;

@Repository
public class DonHangChiTietDao {
    @PersistenceContext
    private EntityManager entityManager;

    public List<DonHangChiTiet> findByDonHang(int maDonHang) {
        String jpql = "SELECT dhct FROM DonHangChiTiet dhct WHERE dhct.donHang.madonhang = :maDonHang";
        TypedQuery<DonHangChiTiet> query = entityManager.createQuery(jpql, DonHangChiTiet.class);
        query.setParameter("maDonHang", maDonHang);
        return query.getResultList();
    }
}
