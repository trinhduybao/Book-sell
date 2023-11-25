package com.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "ORDERDETAILS")
@IdClass(DonHangChiTietId.class)
public class DonHangChiTiet implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "MADONHANG")
    private DonHang donhang; // Quan hệ nhiều chi tiết đơn hàng có thể thuộc về một đơn hàng
    
    @Id
    @ManyToOne
    @JoinColumn(name = "MASACH")
    private Sach sach; // Quan hệ một chi tiết đơn hàng có thể liên quan đến một cuốn sách

    private Integer soluong; // Số lượng sách trong chi tiết đơn hàng

	public DonHang getDonhang() {
		return donhang;
	}

	public void setDonhang(DonHang donhang) {
		this.donhang = donhang;
	}

	public Sach getSach() {
		return sach;
	}

	public void setSach(Sach sach) {
		this.sach = sach;
	}

	public Integer getSoluong() {
		return soluong;
	}

	public void setSoluong(Integer soluong) {
		this.soluong = soluong;
	}
    
    
}
