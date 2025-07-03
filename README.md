# Toko Online CodeIgniter 4

Proyek ini adalah platform toko online yang dibangun menggunakan [CodeIgniter 4](https://codeigniter.com/). Sistem ini menyediakan beberapa fungsionalitas untuk toko online, termasuk manajemen produk, keranjang belanja, dan sistem transaksi.

## Daftar Isi

- [Fitur](#fitur)
- [Persyaratan Sistem](#persyaratan-sistem)
- [Instalasi](#instalasi)
- [Struktur Proyek](#struktur-proyek)

## Fitur

- Katalog Produk
  - Tampilan produk dengan gambar
  - Pencarian produk
- Keranjang Belanja
  - Tambah/hapus produk
  - Update jumlah produk
- Sistem Transaksi
  - Proses checkout
  - Riwayat transaksi
- Sistem Diskon Otomatis
  - Diskon per tanggal, disimpan di session saat login
  - Ditampilkan di header dan diterapkan otomatis ke keranjang dan transaksi
- Manajemen Diskon (admin only)
  - Tambah/Edit/Hapus diskon
  - Validasi: Tidak boleh tanggal sama
  - Tanggal tidak bisa diubah saat edit
- Panel Admin
  - Manajemen produk (CRUD)
  - Manajemen kategori
  - Laporan transaksi
  - Export data ke PDF
- Sistem Autentikasi
  - Login/Register pengguna
  - Manajemen akun
- Integrasi Ongkir API (RajaOngkir)
  - Pemilihan kelurahan dan kurir
  - Nominal ongkir muncul otomatis
- UI Responsif dengan NiceAdmin template

## Persyaratan Sistem

- PHP >= 8.2
- Composer
- Web server (XAMPP)

## Instalasi

1. **Clone repository ini**
   ```bash
   git clone [URL repository]
   cd belajar-ci-tugas
   ```
2. **Install dependensi**
   ```bash
   composer install
   ```
3. **Konfigurasi database**

   - Start module Apache dan MySQL pada XAMPP
   - Buat database **db_ci4** di phpmyadmin.
   - copy file .env dari tutorial https://www.notion.so/april-ns/Codeigniter4-Migration-dan-Seeding-045ffe5f44904e5c88633b2deae724d2

4. **Jalankan migrasi database**
   ```bash
   php spark migrate
   ```
5. **Seeder data**
   ```bash
   php spark db:seed ProductSeeder
   ```
   ```bash
   php spark db:seed UserSeeder
   ```
6. **Jalankan server**
   ```bash
   php spark serve
   ```
7. **Akses aplikasi**
   Buka browser dan akses `http://localhost:8080` untuk melihat aplikasi.

## Struktur Proyek

Proyek menggunakan struktur MVC CodeIgniter 4:

- app/Controllers
  - AuthController.php - Autentikasi pengguna
  - ProdukController.php - Manajemen produk
  - TransaksiController.php - Proses keranjang, checkout
  - Diskon.php - Manajemen diskon (admin only)

ApiController.php - Webservice dashboard

- app/Models
  - ProductModel.php - Model produk
  - UserModel.php - Model pengguna
  - TransactionModel.php - Model transaksi
  - TransactionDetailModel.php - Detail transaksi

DiskonModel.php - Model diskon

- app/Views
  - v_produk.php - Tampilan produk
  - v_keranjang.php - Halaman keranjang
  - v_checkout.php - Halaman checkout
  - diskon/ - Halaman admin diskon

- public/img - Gambar produk dan aset

- public/NiceAdmin - Template admin
