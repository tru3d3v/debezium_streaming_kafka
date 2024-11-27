-- KTP kosong
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(5, '', 'Erik Pratama', 'Yogyakarta', '1998-09-21', 'L');

-- Nama lengkap kosong
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(6, '3201234567890005', '', 'Semarang', '1985-04-30', 'P');

-- Format tanggal lahir salah
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(7, '3201234567890006', 'Fani Agustina', 'Makassar', '20-10-1993', 'P');

-- Gender tidak valid
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(8, '3201234567890007', 'Galih Permana', 'Palembang', '1991-01-18', 'laki-laki');