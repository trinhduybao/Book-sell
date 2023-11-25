CREATE DATABASE ASM_JAVA5
GO

USE ASM_JAVA5
GO

CREATE TABLE CATEGORIES (
    MALOAI NVARCHAR(5) PRIMARY KEY,
    TENLOAI NVARCHAR(100),
    MOTA NVARCHAR(255)
);

CREATE TABLE BOOKS (
    MASACH NVARCHAR(5) PRIMARY KEY,
    TENSACH NVARCHAR(100),
    HINH NVARCHAR(200),
    SOLUONG INT,
    MALOAI NVARCHAR(5),
    TACGIA NVARCHAR(100),
    GIA FLOAT,
    NAMXUATBAN DATE,
    FOREIGN KEY (MALOAI) REFERENCES CATEGORIES(MALOAI)
);

CREATE TABLE ACCOUNTS (
    MANGUOIDUNG INT PRIMARY KEY IDENTITY,
    TENDANGNHAP NVARCHAR(255),
    MATKHAU NVARCHAR(5),
    TENNGUOIDUNG NVARCHAR(100),
    DIACHI NVARCHAR(255),
    SODIENTHOAI NVARCHAR(15),
    VAITRO BIT DEFAULT 0
);

CREATE TABLE ORDERS (
    MADONHANG INT PRIMARY KEY IDENTITY,
    MANGUOIDUNG INT,
    NGAYDATHANG DATE,
    DIACHI NVARCHAR(256),
    FOREIGN KEY (MANGUOIDUNG) REFERENCES ACCOUNTS(MANGUOIDUNG)
);

CREATE TABLE ORDERDETAILS (
    MADONHANG INT,
    MASACH NVARCHAR(5),
    SOLUONG INT,
    PRIMARY KEY (MADONHANG, MASACH),
    FOREIGN KEY (MADONHANG) REFERENCES ORDERS(MADONHANG),
    FOREIGN KEY (MASACH) REFERENCES BOOKS(MASACH)
);

GO

INSERT INTO CATEGORIES (MALOAI, TENLOAI, MOTA) VALUES
('L01', N'Tiểu thuyết', N'Các cuốn sách thuộc thể loại tiểu thuyết'),
('L02', N'Khoa học', N'Các cuốn sách về khoa học'),
('L03', N'Lịch sử', N'Các cuốn sách về lịch sử'),
('L04', N'Văn học', N'Các cuốn sách về văn học'),
('L05', N'Truyện tranh', N'Các cuốn sách truyện tranh'),
('L06', N'Kinh dị', N'Các cuốn sách kinh dị'),
('L07', N'Nghệ thuật', N'Các cuốn sách về nghệ thuật'),
('L08', N'Kinh tế', N'Các cuốn sách về kinh tế'),
('L09', N'Chính trị', N'Các cuốn sách về chính trị'),
('L10', N'Tâm lý', N'Các cuốn sách về tâm lý');
INSERT INTO BOOKS (MASACH, TENSACH, HINH, SOLUONG, MALOAI, TACGIA, GIA, NAMXUATBAN) VALUES
('S01', N'Tấm Cám', 'tam-cam_bia-1_1_13fc7a616e2447ffb3259fa27299bc10_master.jpg', 10, 'L05', 'Marcel Proust', 100.0, '2023-01-01'),
('S02', N'Ulysses của James Joyce', 'jame.jpg',20, 'L01', 'James Joyce', 200.0, '2023-01-02'),
('S03', N'Don Quixote của Miguel de Cervantes', 'donquihote.jpg',10, 'L01', 'Miguel de Cervantes', 300.0, '2023-01-03'),
('S04', N'Harry Potter và Bảo bối Tử thần', 'harry-potter-va-hon-da-phu-thuy.jpg',10, 'L10', 'J. K. Rowling', 5000.0, '2023-12-31'),
('S05', N'Nỗi buồn chiến tranh', 'noi-buon-chien-tranh-ban-dac-biet.jpg',15, 'L01', N'Bảo Ninh', 500.0, '2023-01-01'),
('S06', N'Người tình', 'Nguoi_tinh.jpg',30, 'L01', 'Marguerite Duras', 600.0, '2023-01-02'),
('S07', N'Đỉnh cao', 'phuong_phap_ghi_nho_dinh_cao_Phan_Thanh_Dung_Sbooks1.jpg',12, 'L01', N'Dương Thu Hương', 700.0, '2023-01-03'),
('S08', N'Người đồng lòng', 'nguoitinan.jpg',10, 'L10', N'Việt Thanh Nguyễn', 800.0, '2023-01-04'),
('S09', N'Trở về từ cõi sáng', 'trovetucoisang.jpg',10, 'L01', N'Nguyễn Phan Quế Mai', 900.0, '2023-01-05'),
('S10', N'Kính vạn hoa', 'kinhvanhoa.jpg',12, 'L02', N'Nguyễn Nhật Ánh', 1000.0, '2023-01-06'),
('S11', N'Chí Phèo', 'truyen-ngan-chi-pheo-nam-cao.jpg',22, 'L02', N'Nam Cao', 1100.0, '2023-01-07'),
('S12', N'Số đỏ', 'sodo.jpg',18, 'L03', N'Vũ Trọng Phụng', 1200.0, '2023-01-08'),
('S13', N'Tắt đèn', 'tatden.jpg',26, 'L03', N'Ngô Tất Tố', 1300.0, '2023-01-09'),
('S14', N'Lão Hạc', 'laohac.jpg',10, 'L04', N'Nam Cao', 1400.0, '2023-01-10'),
('S15', N'Harry Potter và Hòn Đá Phù Thủy', 'harry-potter-va-hon-da-phu-thuy.jpg',10, 'L01', 'J.K. Rowling', 1500.0, '2023-01-15'),
('S16', N'Đấu Trường Sinh Tử', 'dautruong.jpg',10, 'L02', 'Suzanne Collins', 1600.0, '2023-01-16'),
('S17', N'Chạng Vạng', 'Twilight_(2008_film)_poster.jpg',10, 'L05', 'Stephenie Meyer', 1700.0, '2023-01-17'),
('S18', N'Gatsby Vĩ Đại', 'TheGreatGatsby2012Poster.jpg',11, 'L01', 'F. Scott Fitzgerald', 1800.0, '2023-01-18'),
('S19', N'Cuộc Đời Của Pi', 'Cuoc_doi_cua_Pi.jpg',11, 'L02', 'Yann Martel', 2700.0, '2023-01-27'),
('S20', N'Người Đàn Bà Khát Khao', 'nguoidanba.jpg',10, 'L01', 'Paula Hawkins', 2800.0, '2023-01-28')
INSERT INTO ACCOUNTS (TENDANGNHAP, MATKHAU, TENNGUOIDUNG, DIACHI, SODIENTHOAI, VAITRO) VALUES
('nguoidung1', 'abc1', N'Người Dùng 1', N'Địa chỉ 1', '0123456789', 0),
('nguoidung2', 'abc2', N'Người Dùng 2', N'Địa chỉ 2', '0123456780', 0),
('nguoidung3', 'abc3', N'Người Dùng 3', N'Địa chỉ 3', '0123456781', 1),
('nguoidung4', 'abc4', N'Người Dùng 4', N'Địa chỉ 4', '0123456782', 1),
('nguoidung5', 'abc5', N'Người Dùng 5', N'Địa chỉ 5', '0123456783', 0)

-- Chèn dữ liệu cho bảng ORDERS
INSERT INTO ORDERS (MANGUOIDUNG, NGAYDATHANG, DIACHI)
VALUES
(1, '2023-01-20', 'Địa chỉ 1'),
(2, '2023-01-21', 'Địa chỉ 2'),
(3, '2023-01-22', 'Địa chỉ 3'),
(4, '2023-01-23', 'Địa chỉ 4'),
(5, '2023-01-24', 'Địa chỉ 5');

-- Chèn dữ liệu cho bảng ORDERDETAILS
INSERT INTO ORDERDETAILS (MADONHANG, MASACH, SOLUONG)
VALUES
(1, 'S01', 2),
(1, 'S02', 1),
(2, 'S03', 3),
(2, 'S04', 2),
(3, 'S05', 2),
(3, 'S06', 4),
(4, 'S07', 1),
(4, 'S08', 5),
(5, 'S09', 3),
(5, 'S10', 2),
(5, 'S11', 4),
(5, 'S12', 1),
(5, 'S13', 3);

