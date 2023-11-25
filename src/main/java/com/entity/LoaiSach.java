package com.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "CATEGORIES")
public class LoaiSach implements Serializable{
	@Id
	String maloai;
	String tenloai;
	String mota;
	@OneToMany(mappedBy = "maLoai")
	List<Sach> dsSach;
	
	@Transient // Đánh dấu thuộc tính này để không được ánh xạ vào cơ sở dữ liệu
    Long soluongsach;

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public List<Sach> getDsSach() {
		return dsSach;
	}

	public void setDsSach(List<Sach> dsSach) {
		this.dsSach = dsSach;
	}

	public Long getSoluongsach() {
		return soluongsach;
	}

	public void setSoluongsach(Long soluongsach) {
		this.soluongsach = soluongsach;
	}
	
	
}
