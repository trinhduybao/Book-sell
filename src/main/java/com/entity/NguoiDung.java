package com.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "ACCOUNTS")
public class NguoiDung implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer manguoidung;
	@NotBlank(message  = "Vui lòng nhập Tên Đăng Nhập")
	String tendangnhap;
	@NotBlank(message  = "Vui lòng nhập Mật Khẩu")
	String matkhau;
	@NotBlank(message  = "Vui lòng nhập Họ Và Tên")
	String tennguoidung;
	@NotBlank(message  = "Vui lòng nhập Địa Chỉ")
	String diachi;
	@NotBlank(message  = "Vui lòng nhập Số Điện Thoại")
	String sodienthoai;
	Boolean vaitro = false;
	public Integer getManguoidung() {
		return manguoidung;
	}
	public void setManguoidung(Integer manguoidung) {
		this.manguoidung = manguoidung;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getTennguoidung() {
		return tennguoidung;
	}
	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public Boolean getVaitro() {
		return vaitro;
	}
	public void setVaitro(Boolean vaitro) {
		this.vaitro = vaitro;
	}
	
	
}
