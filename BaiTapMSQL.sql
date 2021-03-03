CREATE DATABASE baitapsql;
USE baitapsql;

CREATE TABLE NHACUNGCAP (
    MaNhaCC CHAR(50) NOT NULL PRIMARY KEY,
    TenNhaCC VARCHAR(50) NOT NULL,
    DiaChi VARCHAR(50) NOT NULL,
    SoDT VARCHAR(50) NOT NULL,
    MaSoThue INT NOT NULL
);

CREATE TABLE LOAIDICHVU (
    MaLoaiDV CHAR(50) NOT NULL PRIMARY KEY,
    TenLoaiDV VARCHAR(50) NOT NULL
);

CREATE TABLE MUCPHI (
    MaMP CHAR(50) NOT NULL PRIMARY KEY,
    DonGia INT NOT NULL,
    MoTa TEXT NOT NULL
);

CREATE TABLE DONGXE (
    DongXe CHAR(50) NOT NULL PRIMARY KEY,
    HangXe VARCHAR(50) NOT NULL,
    SoChoNgoi TINYINT NOT NULL
);

CREATE TABLE DANGKYCUNGCAP (
    MaDKCC CHAR(50) NOT NULL PRIMARY KEY,
    MaNhaCC CHAR(50),
    MaLoaiDV CHAR(50),
    DongXe CHAR(50),
    MaMP CHAR(50),
    NgayBatDauCungCap DATE NOT NULL,
    NgayKetThucCungCap DATE NOT NULL
);

ALTER TABLE DANGKYCUNGCAP 
ADD CONSTRAINT fk_nhacc FOREIGN KEY(MaNhaCC) REFERENCES NHACUNGCAP(MaNhaCC);

ALTER TABLE DANGKYCUNGCAP
ADD CONSTRAINT fk_loaiDV FOREIGN KEY(MaLoaiDV) REFERENCES LOAIDICHVU(MaLoaiDV);

ALTER TABLE DANGKYCUNGCAP
ADD CONSTRAINT fk_dong_xe FOREIGN KEY(DongXe) REFERENCES DONGXE(DongXe);

ALTER TABLE DANGKYCUNGCAP
ADD CONSTRAINT fk_mamp FOREIGN KEY(MaMP) REFERENCES MUCPHI(MaMP);



INSERT INTO NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue) VALUES
('NCC001', 'Cty TNHH Toàn Phát', 'Hai Chau', '051133999888', 568941),
('NCC002', 'Cty Cổ Phần Đông Du', 'Lien Chieu', '051133999889', 456789),
('NCC003', 'Ông Nguyễn Văn A', 'Hoa Thuan', '051133999890', 321456),
('NCC004', 'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', 513364),
('NCC005', 'Cty TNHH AMA', 'Thanh Khe', '051103875466', 546546),
('NCC006', 'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', 524545),
('NCC007', 'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', 113021),
('NCC008', 'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', 121230),
('NCC009', 'Tập đoàn Đông Nam Á', 'Lien Chieu', '05113987121', 533654),
('NCC010', 'Cty Cổ Phần Rạng đông', 'Lien Chieu', '05113569654', 187864);

INSERT INTO LOAIDICHVU (MaLoaiDV, TenLoaiDV) VALUES 
('DV01', 'Dịch vụ xe taxi'),
('DV02', 'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03', 'Dịch vụ cho thuê xe theo hợp đồng');

INSERT INTO MUCPHI (MaMP,DonGia,MoTa) VALUES 
('MP01', '10000', 'Áp dụng từ ngày 1/2015'),
('MP02', '15000', 'Áp dụng từ ngày 2/2015'),
('MP03', '20000', 'Áp dụng từ ngày 1/2010'),
('MP04', '25000', 'Áp dụng từ ngày 2/2011');

INSERT INTO DONGXE (DongXe,HangXe,SoChoNgoi) VALUES 
('Hiace', 'Toyota', 16),
('Vios', 'Toyota', 5),
('Escape', 'Ford', 5),
('Cerato', 'KIA', 7),
('Forte', 'KIA', 5),
('Starex', 'Huyndai', 7),
('Grand-i10', 'Huyndai', 7);

INSERT INTO DANGKYCUNGCAP (MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap) VALUES 
('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015-11-20', '2016-11-20'),
('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015-11-20', '2017-11-20'),
('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017-11-20', '2018-11-20'),
('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015-11-20', '2019-11-20'),
('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019-11-20', '2020-11-20'),
('DK006', 'NCC004', 'DV03', 'Escape', 'MP04', '2016-11-10', '2021-11-20'),
('DK007', 'NCC005', 'DV01', 'Escape', 'MP03', '2015-11-30', '2016-01-25'),
('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016-02-28', '2016-08-15'),
('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016-04-27', '2017-04-30'),
('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016-11-21', '2016/02/22'),
('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016-12-25', '2017-02-20'),
('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016-04-14', '2017-12-20'),
('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015-12-21', '2016-12-21'),
('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016-05-20', '2016-12-30'),
('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018-04-24', '2019-11-20'),
('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016-06-22', '2016-12-21'), 
('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016-09-30', '2019-09-30'),
('DK018', 'NCC008', 'DV03', 'Grand-i10', 'MP01', '2017-12-13', '2018-09-30'),
('DK019', 'NCC003', 'DV03', 'Grand-i10', 'MP03', '2016-01-24', '2016-12-30'),
('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016-05-03', '2017-10-21'),
('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015-01-30', '2016-12-30'),
('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016-07-25', '2017-12-30'),
('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017-11-30', '2018-05-20'),
('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017-12-23', '2019-11-30'),
('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016-08-24', '2017-10-25');

SELECT 
    *
FROM
    DONGXE
WHERE
    SoChoNgoi > 5;
    
    
SELECT 
    NCC.MaNhaCC, NCC.TenNhaCC
FROM
    NHACUNGCAP NCC
        JOIN
    DANGKYCUNGCAP DK ON NCC.MaNhaCC = DK.MaNhaCC
        JOIN
    MUCPHI MP ON MP.MaMp = DK.MaMp
        JOIN
    DONGXE DX ON DX.DongXe = DK.DongXe
WHERE
    (DX.HangXe = 'Toyota'
        AND MP.DonGia = 15000)
        OR (DX.HangXe = 'KIA' AND MP.DonGia = 20000);

SELECT 
    TenNhaCC, MaSoThue
FROM
    NHACUNGCAP
ORDER BY TenNhaCC ASC , MaSoThue DESC;
SELECT 
    NCC.MaNhaCC,
    NCC.TenNhaCC,
    COUNT(NCC.MaNhaCC) AS SỐ_LẦN_ĐĂNG_KÝ
FROM
    NHACUNGCAP NCC
        JOIN
    DANGKYCUNGCAP DK ON NCC.MaNhaCC = DK.MaNhaCC
WHERE
    DK.NgayBatDauCungCap = '2015-11-20'
GROUP BY NCC.MaNhaCC , NCC.TenNhaCC;

SELECT DISTINCT
    HangXe
FROM
    DONGXE;
SELECT 
    DKCC.MaDKCC,
    NCC.MaNhaCC,
    NCC.TenNhaCC,
    NCC.DiaChi,
    NCC.MaSoThue,
    LDV.TenLoaiDV,
    MP.DonGia,
    DX.Hangxe,
    DKCC.NgayBatDauCungCap,
    DKCC.NgayKetThucCungCap
FROM
    NHACUNGCAP AS NCC
        LEFT JOIN
    DANGKYCUNGCAP AS DKCC ON NCC.MaNhaCC = DKCC.MaNhaCC
        LEFT JOIN
    MUCPHI AS MP ON DKCC.MaMP = MP.MaMP
        LEFT JOIN
    LOAIDICHVU AS LDV ON DKCC.MaLoaiDV = LDV.MaLoaiDV
        LEFT JOIN
    DONGXE AS DX ON DKCC.DongXe = DX.DongXe;
    
SELECT 
    NCC.TenNhaCC,
    NCC.DiaChi,
    NCC.SoDT,
    NCC.MaSoThue,
    DKCC.DongXe
FROM
    NHACUNGCAP AS NCC
        JOIN
    DANGKYCUNGCAP AS DKCC ON NCC.MaNhaCC = DKCC.MaNhaCC
WHERE
    DKCC.DongXe = 'Cerato'
        OR DKCC.DongXe = 'Hiace';
        
SELECT 
    *
FROM
    NHACUNGCAP AS NCC
        LEFT JOIN
    DANGKYCUNGCAP AS DK ON NCC.MaNhaCC = DK.MaDKCC
WHERE
    DK.MaNhaCC IS NULL;
