package com.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "ORDERS")
public class DonHang implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer madonhang;
	
	@ManyToOne
	@JoinColumn(name = "MANGUOIDUNG")
	NguoiDung manguoidung;
	
	@Column(name = "NGAYDATHANG")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date ngaydathang = new Date();
	
	String diachi;

	public Integer getMadonhang() {
		return madonhang;
	}

	public void setMadonhang(Integer madonhang) {
		this.madonhang = madonhang;
	}

	public NguoiDung getManguoidung() {
		return manguoidung;
	}

	public void setManguoidung(NguoiDung manguoidung) {
		this.manguoidung = manguoidung;
	}

	public Date getNgaydathang() {
		return ngaydathang;
	}

	public void setNgaydathang(Date ngaydathang) {
		this.ngaydathang = ngaydathang;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
	
	
}
