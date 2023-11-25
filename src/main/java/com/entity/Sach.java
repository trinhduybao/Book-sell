package com.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "BOOKS")
public class Sach implements Serializable{
	@Id
	@NotNull(message = "Không được để trống mã sách")
	String masach;
	@NotNull(message = "Không được để trống tên sách")
	String tensach;
	@NotNull(message = "Không được để trống hình")
	String hinh;
	@NotNull(message = "Không được để trống số lượng sách")
	Integer soluong;
	
	@ManyToOne
	@JoinColumn(name = "maloai")
	@NotNull(message = "Không được để trống mã loại sách")
	LoaiSach maLoai;
	
	@NotNull(message = "Không được để trống mã tác giả")
	String tacgia;
	@NotNull(message = "Không được để trống giá sách")
	Double gia;
	
	@Column(name = "NAMXUATBAN")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message = "Không được để trống năm xuất bản")
	Date namxuatban = new Date();

	public String getMasach() {
		return masach;
	}

	public void setMasach(String masach) {
		this.masach = masach;
	}

	public String getTensach() {
		return tensach;
	}

	public void setTensach(String tensach) {
		this.tensach = tensach;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public Integer getSoluong() {
		return soluong;
	}

	public void setSoluong(Integer soluong) {
		this.soluong = soluong;
	}

	public LoaiSach getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(LoaiSach maLoai) {
		this.maLoai = maLoai;
	}

	public String getTacgia() {
		return tacgia;
	}

	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}

	public Double getGia() {
		return gia;
	}

	public void setGia(Double gia) {
		this.gia = gia;
	}

	public Date getNamxuatban() {
		return namxuatban;
	}

	public void setNamxuatban(Date namxuatban) {
		this.namxuatban = namxuatban;
	}
	
	
}
