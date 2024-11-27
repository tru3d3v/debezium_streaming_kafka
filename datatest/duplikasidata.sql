-- Baris 1
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) 
VALUES (1, '3201234567890001', 'Budi Santoso', 'Jakarta', '1990-08-17', 'L');

-- Baris 2 (duplikat dari baris 1)
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) 
VALUES (2, '3201234567890001', 'Budi Santoso', 'Jakarta', '1990-08-17', 'L');

-- db1.data_pelanggan
INSERT INTO db1.data_pelanggan (id, ktp, nama_lengkap, pob, dob, gender) 
VALUES (3, '3201234567890003', 'Ani Rahmawati', 'Bandung', '1995-03-12', 'P');

-- db2.nasabah
INSERT INTO db2.nasabah (id, nik, nama, tempat_lahir, tgl_lahir, jenis_kelamin) 
VALUES (1, '3201234567890003', 'Ani Rahmawati', 'Bandung', '1995-03-12', 'P');

-- db3.client
INSERT INTO db3.client (id, idnumber, nama, tempat_lahir, tgl_lahir, gender) 
VALUES (1, '3201234567890003', 'Ani Rahmawati', 'Bandung', '1995-03-12', 'P');