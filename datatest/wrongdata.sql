-- Nama lengkap berisi angka
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(24, '3201234567890024', '12345', 'Jakarta', '1995-06-10', 'L');

-- Format tanggal lahir salah
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(25, '3201234567890025', 'Dewi Lestari', 'Bandung', '10-08-1992', 'P');

-- Tanggal lahir tidak logis (melebihi tanggal hari ini)
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(26, '3201234567890026', 'Anton Wijaya', 'Bogor', '2024-11-28', 'L');

-- Gender tidak valid
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) VALUES
(27, '3201234567890027', 'Sinta Maharani', 'Semarang', '1990-04-15', 'Pria');