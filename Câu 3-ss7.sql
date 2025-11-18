CREATE TABLE phim(
id INT PRIMARY KEY,
tieu_de VARCHAR(255),
dao_dien VARCHAR(255),
nam_phat_hanh INT,
the_loai VARCHAR(100),
diem_danh_gia DECIMAL(3, 1)
);
insert into phim (id, tieu_de, dao_dien, nam_phat_hanh, the_loai, diem_danh_gia) values
(1, 'Inception', 'Christopher Nolan', 2010, 'Khoa học viễn tưởng', 8.8),
(2, 'The Dark Knight', 'Christopher Nolan', 2008, 'Hành động', 9.0),
(3, 'Parasite', 'Bong Joon Ho', 2019, 'Tâm lý', 8.5),
(4, 'Mắt Biếc', 'Victor Vũ', 2019, 'Lãng mạn', 7.8),
(5, 'Interstellar', 'Christopher Nolan', 2014, 'Khoa học viễn tưởng', 8.6),
(6, 'Avengers: Endgame', 'Anthony Russo', 2019, 'Hành động', 8.4),
(7, 'Joker', 'Todd Phillips', 2019, 'Tâm lý', 8.4);
select * from phim;
select * from phim
where dao_dien = 'Christopher Nolan';
select * from phim
where nam_phat_hanh between 2010 and 2019;
select avg(diem_danh_gia) as diem_trung_binh
from phim;
select * from phim
order by diem_danh_gia desc
limit 3;