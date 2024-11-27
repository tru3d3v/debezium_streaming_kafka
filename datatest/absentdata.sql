-- KTP kosong
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(21, '', 'Joko Susanto', 'Jakarta', '1993-05-08', 'L');

-- Nama lengkap kosong
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(22, '3201234567890022', '', 'Bandung', '1987-09-15', 'P');

-- Tanggal lahir kosong
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(23, '3201234567890023', 'Rudi Hartono', 'Surabaya', NULL, 'L');