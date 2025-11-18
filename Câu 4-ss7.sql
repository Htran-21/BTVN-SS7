create table mon_an(
id INT PRIMARY KEY,
ten_mon VARCHAR(255),
danh_muc VARCHAR(100), -- 'Món chính', 'Khai vị', 'Tráng miệng', 'Đồ uống'
gia_tien INT,
trang_thai_phuc_vu VARCHAR(50) -- 'Đang phục vụ', 'Tạm ngưng'
);
insert into mon_an (id, ten_mon, danh_muc, gia_tien, trang_thai_phuc_vu) values
(1, 'Phở Bò Tái', 'Món chính', 50000, 'Đang phục vụ'),
(2, 'Cơm Gà Xối Mỡ', 'Món chính', 45000, 'Đang phục vụ'),
(3, 'Gỏi Cuốn Tôm Thịt', 'Khai vị', 30000, 'Đang phục vụ'),
(4, 'Bún Bò Huế', 'Món chính', 55000, 'Tạm ngưng'),
(5, 'Nước Cam Ép', 'Đồ uống', 25000, 'Đang phục vụ'),
(6, 'Chè Hạt Sen', 'Tráng miệng', 20000, 'Đang phục vụ'),
(7, 'Cà Phê Sữa Đá', 'Đồ uống', 22000, 'Đang phục vụ'),
(8, 'Bò Lúc Lắc', 'Món chính', 70000, 'Đang phục vụ');
select * from mon_an;
select * from mon_an
where danh_muc in ('Món chính', 'Khai vị');
select * from mon_an
where trang_thai_phuc_vu = 'Đang phục vụ'
and gia_tien = (
    SELECT MIN(gia_tien)
    FROM mon_an
    WHERE trang_thai_phuc_vu = 'Đang phục vụ'
);
select * from mon_an
where ten_mon like '%Bò%';
select * from mon_an
order by gia_tien asc
limit 3;