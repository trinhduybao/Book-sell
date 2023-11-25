package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoaiSachDao;
import com.entity.LoaiSach;

@Service
public class LoaiSachService {

    @Autowired
    private LoaiSachDao loaiSachDao;

    public List<LoaiSach> getLoaiSachVoiSoLuongSach() {
        List<LoaiSach> loaiSachList = new ArrayList<>();

        List<Object[]> results = loaiSachDao.getLoaiSachWithBookCount();
        for (Object[] result : results) {
            String maLoai = (String) result[0];
            String tenLoai = (String) result[1];
            Long totalCount = (Long) result[2];
            LoaiSach loaiSach = new LoaiSach();
            loaiSach.setMaloai(maLoai);
            loaiSach.setTenloai(tenLoai);
            loaiSach.setSoluongsach(totalCount);
            loaiSachList.add(loaiSach);
        }
        return loaiSachList;
    }
}
