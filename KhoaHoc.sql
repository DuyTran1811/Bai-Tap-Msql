CREATE DATABASE KhoaHoc;

USE KhoaHoc;

CREATE TABLE khoa (
	id CHAR(10) NOT NULL PRIMARY KEY,
    ten VARCHAR(30) NOT NULL,
    dienthoai CHAR(10) NOT NULL
);
CREATE TABLE giangvien (
	id INT NOT NULL PRIMARY KEY,
    ten VARCHAR(30) NOT NULL,
    luong decimal(5, 2) NOT NULL,
    khoa_id CHAR(10) NOT NULL,
    namsinh INT NOT NULL,
    que VARCHAR(30) NOT NULL,
    foreign key(khoa_id) references khoa(id)
);
create table sinhvien (
	id int primary key,
    ten varchar(30),
    khoa_id char(10),
    namsinh int,
    que varchar(30),
    foreign key(khoa_id) references khoa(id)
);
CREATE TABLE detai (
	id CHAR(10) primary key,
    ten VARCHAR(30),
    kinhphi INT,
    noithuctap VARCHAR(30)
);
CREATE TABLE huongdan (
	sinhvien_id INT,
    foreign key(sinhvien_id) references sinhvien(id),
    detai_id char(10),
    foreign key(detai_id) references detai(id),
    giangvien_id int,
    foreign key(giangvien_id) references giangvien(id),
    ketqua decimal(5,2)
);

INSERT INTO khoa VALUES
(1, 'Dia Ly va QLTN', '0987256745'),
(2, 'Toan', '0356764512'),
(3, 'Vat Ly', '0863124678'),
(4, 'Cong Nghe Sinh Hoc', '0987467214'),
(5, 'Ki Su', '0172836579');


INSERT INTO giangvien VALUES
(1, 'Mai Cong Son', 30.00, 1, 2000, 'Ca Mau'),
(2, 'Kieu Anh', 31.00, 2, 2001, 'Hue'),
(3, 'The', 29.00, 2, 1999, 'Tp.Ho Chi Minh'),
(4, 'John Toan', 15.00, 5, 1998, 'Hai Phong'),
(5, 'Quan', 14.00, 4, 1999, 'Ha Noi'),
(6, 'Chau Le', 50.00, 3, 2000, 'Ha Dong'),
(7, 'La Thi Cuc Thuy', 20.00, 5, 2002, 'Dong Thap'),
(8, 'Nguyen Thi Kim Oanh', 20.00, 3, 1995, 'Ha Noi'),
(9, 'Dung', 21.00, 4, 1995, 'Thanh Hoa'),
(10, 'Nhan', 60.00, 5, 1990, 'Da Nang');

INSERT INTO sinhvien VALUES
(1, 'Tung', 1, 1998, 'Ha Noi'),(2, 'Thong', 1, 1999, 'Ha Noi'),
(3, 'Thai', 1, 2000, 'Ha Noi'),(4, 'Toan', 2, 2001, 'Ha Noi'),
(5, 'Tam', 2, 1997, 'Ha Noi'),(6, 'Tien', 2, 1996, 'Ha Noi'),
(7, 'Hiep', 3, 1995, 'Ha Noi'),(8, 'Bao', 3, 1994, 'Ha Noi'),
(9, 'Hang', 3, 2002, 'Ha Noi'),(10, 'Minh', 4, 1990, 'Ha Noi'),
(11, 'Hien', 4, 1990, 'Ha Noi'),(12, 'Duy', 4, 1991, 'Ha Noi'),
(13, 'Tus', 5, 1992, 'Ha Noi'),(14, 'Phuc', 5, 1993, 'Ha Noi'),
(15, 'Sang', 5, 1995, 'Ha Noi'),(16, 'Thao', 1, 1996, 'Ha Noi'),
(17, 'Thien', 2, 2000, 'Ha Noi'),(18, 'Tai', 3, 2001, 'Ha Noi'),
(19, 'Van', 4, 2003, 'Ha Noi'),(20, 'Viet Anh', 5, 1998, 'Ha Noi'),
(21, 'Le Van Son', 3, 1999, 'Vinh');


INSERT INTO detai VALUES
(1, 'De Tai 1', 700, 'FPT'),
(2, 'De Tai 2', 200, 'Facebook'),
(3, 'De Tai 3', 900, 'Google'),
(4, 'De Tai 4', 400, 'Amazon'),
(5, 'De Tai 5', 500, 'Tesla');

INSERT INTO huongdan VALUES
(1, 5, 1, 10.00),(9, 4, 1, 9.00),
(3, 3, 1, 10.00),(7, 2, 1, 8.00),
(2, 1, 1, 10.00),(6, 1, 1, 8.00),
(11, 3, 3, 9.00),(13, 5, 2, 10.00),
(15, 2, 4, 10.00),(10, 4, 5, 8.00),
(13, 2, 2, 10.00),(5, 3, 3, 10.00),
(18, 4, 4, 10.00);


SELECT id, ten, khoa_id
FROM giangvien;

SELECT gv.id, gv.ten, khoa.ten
FROM giangvien AS gv JOIN khoa AS khoa
ON khoa.ten = 'Dia Ly va QLTN';

SELECT khoa.ten,COUNT(sv.ten) AS TONG_SINH_VIEN
FROM sinhvien AS sv 
JOIN khoa ON khoa.ten = 'Cong Nghe Sinh Hoc';

SELECT 
    khoa.ten,
    sv.id,
    sv.ten,
    sv.namsinh
FROM sinhvien AS sv
JOIN khoa AS khoa ON sv.id = khoa.id
WHERE khoa.ten = 'Toan';

SELECT k.ten,COUNT(gv.id) AS SO_GIANG_VIEN
FROM giangvien AS gv JOIN khoa AS k
ON gv.id = k.id
WHERE k.ten = 'Cong Nghe Sinh Hoc';

SELECT * 
FROM sinhvien AS sv
JOIN khoa AS k
ON sv.id = k.id
WHERE k.ten IS NULL;

SELECT gv.ten,k.dienthoai
FROM giangvien AS gv
JOIN khoa AS k ON gv.id = k.id
WHERE gv.ten = 'Mai Cong Son';




