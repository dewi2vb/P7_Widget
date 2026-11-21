# Laporan Praktikum Job VII: Widget

**Identitas Praktikum:**
- **Perguruan Tinggi:** Politeknik Negeri Bengkalis
- **Jurusan / Program Studi:** Teknik Informatika / D4 Rekayasa Perangkat Lunak
- **Mata Kuliah:** Pemrograman Mobile Multiplatform (RPL16607)
- **Pertemuan ke:** 9 | **Job ke:** 7
- **Mulai Berlaku:** 2021

---

## 1. Tujuan Praktikum
1. Mampu mengklasifikasikan jenis widget yang *stateless* dan *stateful*.
2. Mampu menggunakan kelas Text Widget, ElevatedButton Widget, StatefulWidget, Row dan Column Widget, Image Widget, dan Icon Widget.
3. Mampu mengatur jarak komponen menggunakan Margin, Border, dan Padding.

---

## 2. Dasar Teori

### Perbedaan Stateless dan Stateful Widget
| Kelas Turunan dari `StatelessWidget` | Kelas Turunan dari `StatefulWidget` |
|---|---|
| Tidak memiliki *state* dan pengguna tidak dapat berinteraksi secara langsung untuk mengubah nilai internal widget. | Pengguna dapat berinteraksi dengan komponen untuk mengubah status (*state*) di dalam komponen. |
| Melakukan *override* terhadap metode `build()` dan mengembalikan objek bertipe `Widget`. | Melakukan *override* terhadap metode `createState()` yang mengembalikan objek bertipe `State`. |
| Digunakan untuk membuat tampilan antarmuka yang statis. | Digunakan untuk membuat tampilan antarmuka yang dinamis. |
| - | Memanggil metode `setState()` ketika *state* berubah untuk merender ulang (*rebuild*) tampilan. |

---

## 3. Struktur Project dan Daftar File

Project dibuat di dalam folder `P07_Widget\widget_dasar`:
```text
P07_Widget/
├── widget_dasar/
│   ├── images/
│   │   ├── logo_polbeng.png           # Aset gambar logo Polbeng
│   │   ├── logo_kemdikbud.jpg         # Aset gambar logo Kemdikbud
│   │   ├── logo_vokasi.jpg            # Aset gambar logo Vokasi (Data Pengujian 9)
│   │   └── profile.png                # Aset gambar foto profil (Evaluasi 3)
│   ├── lib/
│   │   ├── main.dart                  # Program utama + Launcher Menu & Action Button
│   │   ├── ex01_text_widget.dart      # Praktikum A: Text Widget
│   │   ├── ex02_elevated_button.dart  # Praktikum B: ElevatedButton & Event Handling Dialog
│   │   ├── ex03_stateful_widget.dart  # Praktikum C: StatefulWidget (Counter Increment/Decrement)
│   │   ├── ex04_row_widget.dart       # Praktikum D.1: Row Widget
│   │   ├── ex05_column_widget.dart    # Praktikum D.2: Column Widget
│   │   ├── ex06_row_column_widget.dart# Praktikum D.3: Row of Columns
│   │   ├── ex07_column_row_widget.dart# Praktikum D.4: Column of Rows
│   │   ├── ex08_profil_polbeng.dart   # Praktikum E: Penerapan Row & Column (Profil POLBENG)
│   │   ├── ex09_edge_insets_all.dart  # Praktikum F.1: EdgeInsets.all (Margin, Border, Padding)
│   │   ├── ex10_edge_insets_only.dart # Praktikum F.2: EdgeInsets.only & Expanded
│   │   ├── ex11_softwrap.dart         # Praktikum G.1: Text.softWrap
│   │   ├── ex12_text_align.dart       # Praktikum G.2: Text.textAlign & TextDirection
│   │   ├── ex13_listview_image.dart   # Praktikum G.3: ListView Image & Divider
│   │   ├── ex14_action_button.dart    # Praktikum G.4 & Data Pengujian 9: Action Button Switcher
│   │   ├── evaluasi1_tabel_mahasiswa.dart # Evaluasi 1: Tabel Mahasiswa dengan Row & Column
│   │   ├── evaluasi2_deskripsi_hari.dart  # Evaluasi 2: Deskripsi Hari dengan Tombol Interaktif
│   │   └── evaluasi3_biodata_profil.dart  # Evaluasi 3: Foto Profil & Biodata Diri Lengkap
│   ├── test/
│   │   └── widget_test.dart
│   └── pubspec.yaml
├── README.md
└── Laporan_Job_VII.md
```

---

## 4. Jawaban Analisa dan Pembahasan (Poin 10)

> **Pertanyaan 1:** Apa yang terjadi jika kita salah mendaftarkan nama file di dalam `pubspec.yaml`?  
> **Jawaban:**  
> Jika terjadi kesalahan penulisan (*typo*) nama file atau path direktori pada `pubspec.yaml`, Flutter tidak akan menemukan file aset tersebut saat proses pengemasan aplikasi. Saat aplikasi dijalankan dan widget `Image.asset()` berusaha memuat berkas tersebut, Flutter akan menghasilkan error runtime berupa pengecualian:  
> `Unable to load asset: images/<nama_file_salah>`  
> Selain itu, pada tampilan aplikasi akan muncul kotak merah atau pesan peringatan error (*error placeholder widget*).

> **Pertanyaan 2:** Apakah kita dapat menggunakan sumber daya jika sebelumnya kita tidak mendaftarkannya di dalam `pubspec.yaml`?  
> **Jawaban:**  
> **Tidak bisa.** Flutter hanya menyertakan berkas aset lokal ke dalam bundel aplikasi (*assets bundle*) jika berkas tersebut telah dideklarasikan secara eksplisit atau melalui path folder di bagian `assets:` pada `pubspec.yaml`. Tanpa deklarasi tersebut, berkas tidak akan disertakan saat aplikasi dikompilasi, sehingga pemanggilan `Image.asset()` akan gagal menemukan berkas yang bersangkutan.

---

## 5. Jawaban Tugas Evaluasi (Poin C)

### Evaluasi 1: Tabel Data Mahasiswa (`lib/evaluasi1_tabel_mahasiswa.dart`)
- **Implementasi:** Menggunakan struktur `Column` untuk menyusun baris secara vertikal, dan `Row` yang diisi widget `Expanded` dan `Container` ber-border untuk membentuk sel-sel tabel:
  - Header: `No`, `NIM`, `NAMA`
  - Baris 1: `1`, `1106315`, `Depandi Enda`
  - Baris 2: `2`, `1106316`, `Budi Handoyo`

### Evaluasi 2: Teks Deskripsi Hari Menggunakan Button (`lib/evaluasi2_deskripsi_hari.dart`)
- **Implementasi:** Menggunakan `StatefulWidget` dengan tombol-tombol hari (Senin s.d. Minggu). Ketika salah satu tombol hari ditekan, fungsi `setState()` memperbarui teks deskripsi hari sesuai daftar penugasan:
  - **Senin:** Hari yang luar biasa untuk memulai pekerjaanmu.
  - **Selasa:** Tetap semangat mengerjakan tugas.
  - **Rabu:** Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.
  - **Kamis:** Kerja keras untuk menggapai cita-cita.
  - **Jumat:** Jangan lupa untuk beribadah.
  - **Sabtu:** Selamat weekend.
  - **Minggu:** Manfaatkan hari minggumu untuk istrahat.

### Evaluasi 3: Tampilan Foto Profil dan Biodata Diri (`lib/evaluasi3_biodata_profil.dart`)
- **Implementasi:** Menggunakan widget `ClipOval` membungkus `Image.asset('images/profile.png')`, serta widget `Card` yang memuat baris-baris informasi pribadi (`Row`, `Icon`, `Text`) yang mencakup:
  - Nama Lengkap: Isna Yulia
  - Tempat, Tanggal Lahir: Bengkalis, 12 Juli 2003
  - Email: isna.yulia@example.com
  - Nomor HP: 0812-3456-7890
  - Hobby: Membaca, Koding, & Desain UI/UX

---

## 6. Kesimpulan (Poin 11)
1. `StatelessWidget` cocok digunakan untuk elemen visual murni tanpa perubahan data internal, sedangkan `StatefulWidget` digunakan saat komponen perlu merespons aksi pengguna dan memperbarui tampilan antarmuka menggunakan `setState()`.
2. Widget `Row` menyusun komponen secara horizontal (*main axis* mendatar), sedangkan `Column` menyusun komponen secara vertikal (*main axis* tegak lurus).
3. Pengaturan jarak dan tata letak dapat dikustomisasi secara presisi menggunakan `Container` dengan properti `margin`, `padding`, dan `decoration` (`Border`).
4. `Text.softWrap` dan `Text.textAlign` memungkinkan pengaturan teks agar responsif terhadap lebar layar dan arah orientasi baca (*ltr* dan *rtl*).
5. Aset gambar lokal harus disimpan di direktori project, didaftarkan pada `pubspec.yaml`, dan disinkronisasi melalui `flutter pub get` sebelum dapat diakses melalui `Image.asset`.
