package com.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class DonHangChiTietId implements Serializable {
    private DonHang donhang;
    private Sach sach;
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
    
    
}
