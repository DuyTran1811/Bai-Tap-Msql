CREATE DATABASE KhoaHoc;

USE KhoaHoc;

CREATE TABLE GiangVien (
    magv INT NOT NULL PRIMARY KEY,
    hotenGV VARCHAR(30) NOT NULL,
    Luong DECIMAL(5 , 2 ) NOT NULL,
    TenKhoa CHAR(10) NOT NULL
);

CREATE TABLE SinhVien (
    masv INT NOT NULL PRIMARY KEY,
    hoten VARCHAR(30) NOT NULL,
    makhoa VARCHAR(10) NOT NULL,
    namSinh INT NOT NULL,
    queQuan VARCHAR(30) NOT NULL
);

CREATE TABLE DeTai (
    madt CHAR(10) NOT NULL PRIMARY KEY,
    tendt VARCHAR(30) NOT NULL,
    kinhphi INT NOT NULL,
    noithuctap VARCHAR(30) NOT NULL
);

CREATE TABLE HuongDan (
    masv INT,
    madt CHAR(10),
    magv INT,
    ketqua DECIMAL(5 , 2 )
);

ALTER TABLE HuongDan 
ADD CONSTRAINT fk_masv FOREIGN KEY(masv) REFERENCES SinhVien(masv);

ALTER TABLE HuongDan
ADD CONSTRAINT fk_madt FOREIGN KEY(madt) REFERENCES DeTai(madt);

ALTER TABLE HuongDan 
ADD CONSTRAINT fk_mgv FOREIGN KEY(magv) REFERENCES GiangVien(magv);

INSERT INTO GiangVien (magv,hoten,Luong,TenKhoa) VALUES
(1, 'Mai Cong Son', 30.00,'CG1001'),
(2, 'Kieu Anh', 31.00,'CG1002'),
(3, 'The', 29.00,'CG1003'),
(4, 'John Toan', 15.00,'CG1004'),
(5, 'Quan', 14.00,'CG1005'),
(6, 'Chau Le', 50.00,'CG1006'),
(7, 'La Thi Cuc Thuy', 20.00,'CG1007'),
(8, 'Nguyen Thi Kim Oanh', 20.00,'CG1008'),
(9, 'Dung', 21.00,'CG1009'),
(10, 'Nhan', 60.00,'CG10010');

INSERT INTO SinhVien VALUES
(1, 'Tung', 'CG01', 1998, 'Ha Noi'),(2, 'Thong', 'CG02', 1999, 'Ha Noi'),
(3, 'Thai', 'CG03', 2000, 'Ha Noi'),(4, 'Toan', 'CG4', 2001, 'Ha Noi'),
(5, 'Tam', 'CG5', 1997, 'Ha Noi'),(6, 'Tien', 'CG6', 1996, 'Ha Noi'),
(7, 'Hiep', 'CG7', 1995, 'Ha Noi'),(8, 'Bao', 'CG8', 1994, 'Ha Noi'),
(9, 'Hang', 'CG9', 2002, 'Ha Noi'),(10, 'Minh', 'CG10', 1990, 'Ha Noi'),
(11, 'Hien', 'CG11', 1990, 'Ha Noi'),(12, 'Duy', 'CG12', 1991, 'Ha Noi'),
(13, 'Tus', 'CG13', 1992, 'Ha Noi'),(14, 'Phuc', 'CG14', 1993, 'Ha Noi'),
(15, 'Sang', 'CG15', 1995, 'Ha Noi'),(16, 'Thao', 'CG16', 1996, 'Ha Noi'),
(17, 'Thien', 'CG17', 2000, 'Ha Noi'),(18, 'Tai', 'CG18', 2001, 'Ha Noi'),
(19, 'Van', 'CG19', 2003, 'Ha Noi'),(20, 'Viet Anh', 'CG20', 1998, 'Ha Noi'),
(21, 'Le Van Son', 'CG21', 1999, 'Vinh');

INSERT INTO DeTai (madt,tendt,kinhphi,noithuctap) VALUE
(1, 'De Tai 1', 700, 'FPT'),
(2, 'De Tai 2', 200, 'Facebook'),
(3, 'De Tai 3', 900, 'Google'),
(4, 'De Tai 4', 400, 'Amazon'),
(5, 'De Tai 5', 500, 'Tesla');

INSERT INTO HuongDan (masv,madt,magv,ketqua) VALUE
(1,1,1,1.5),(2,2,2,2.5),(3,3,3,3.5),(4,4,4,4.5),(5,5,5,5.5),(6,1,6,6.5),(7,2,7,7.5),(8,3,8,8.5),
(9,4,9,9.5),(10,5,10,1.5),(11,1,1,2.5),(12,2,2,3.5),(13,3,3,4.5),(14,4,4,5.5),(15,5,5,6.5),(16,1,6,7.5),
(17,2,7,8.5),(18,3,8,9.5),(19,4,9,10.5),(20,5,10,1.5),(1,1,1,2.5),(2,2,2,3.5),(3,3,3,4.5),(4,4,4,5.5),
(5,5,5,6.5),(6,1,6,7.5),(7,2,7,8.5),(8,3,8,9.5),(9,4,9,10.5),(10,5,10,1.5),(11,1,1,2.5),(12,2,2,3.5),(13,3,3,4.5),
(14,4,4,5.5),(15,5,5,6.5),(16,1,6,7.5),(17,2,7,8.5),(18,3,8,9.5),(19,4,9,10.5),(20,5,10,5.5);

# Cau 1
SELECT magv,hotengv,tenkhoa
FROM GiangVien;

# Cau 2


