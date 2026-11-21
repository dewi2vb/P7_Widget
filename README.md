# Job VII: Widget (Pemrograman Mobile Multiplatform)
**Politeknik Negeri Bengkalis | D4 Rekayasa Perangkat Lunak**

Project ini berisi seluruh implementasi latihan dan evaluasi dari **Modul Praktikum 7 (Job VII: Widget)**.

---

## 📁 Struktur Berkas

Semua kode program tersimpan di folder `P07_Widget\widget_dasar`:

| File | Deskripsi Latihan Modul |
|---|---|
| [lib/main.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/main.dart) | **Aplikasi Utama:** Implementasi Data Pengujian 9 + Navigation Drawer untuk membuka seluruh latihan & evaluasi |
| [lib/ex01_text_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex01_text_widget.dart) | **Praktikum A:** Text Widget (`fontSize`, `fontStyle: italic`, `color: red`) |
| [lib/ex02_elevated_button.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex02_elevated_button.dart) | **Praktikum B:** ElevatedButton Widget & Event Handling `AlertDialog` |
| [lib/ex03_stateful_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex03_stateful_widget.dart) | **Praktikum C:** StatefulWidget Counter (`<<` decrement dan `>>` increment) |
| [lib/ex04_row_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex04_row_widget.dart) | **Praktikum D.1:** Row Widget (4 tombol horizontal) |
| [lib/ex05_column_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex05_column_widget.dart) | **Praktikum D.2:** Column Widget (4 tombol vertikal) |
| [lib/ex06_row_column_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex06_row_column_widget.dart) | **Praktikum D.3:** Row of Columns (3 kolom masing-masing 2 tombol) |
| [lib/ex07_column_row_widget.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex07_column_row_widget.dart) | **Praktikum D.4:** Column of Rows (3 baris masing-masing 2 tombol) |
| [lib/ex08_profil_polbeng.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex08_profil_polbeng.dart) | **Praktikum E:** Penerapan Row & Column dalam UI (Profil POLBENG) |
| [lib/ex09_edge_insets_all.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex09_edge_insets_all.dart) | **Praktikum F.1:** Metode `EdgeInsets.all` (Margin, Border, Padding) |
| [lib/ex10_edge_insets_only.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex10_edge_insets_only.dart) | **Praktikum F.2:** Metode `EdgeInsets.only` & Widget `Expanded` |
| [lib/ex11_softwrap.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex11_softwrap.dart) | **Praktikum G.1:** Metode `Text.softWrap` |
| [lib/ex12_text_align.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex12_text_align.dart) | **Praktikum G.2:** Metode `Text.textAlign` dan `TextDirection` (*ltr* & *rtl*) |
| [lib/ex13_listview_image.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex13_listview_image.dart) | **Praktikum G.3:** ListView Image dengan `Divider` |
| [lib/ex14_action_button.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/ex14_action_button.dart) | **Praktikum G.4 & Data Pengujian 9:** Action Button Image Switcher (Kemdikbud, Polbeng, Vokasi) |
| [lib/evaluasi1_tabel_mahasiswa.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/evaluasi1_tabel_mahasiswa.dart) | **Evaluasi 1:** Tabel Mahasiswa (No, NIM, Nama) dengan Row & Column |
| [lib/evaluasi2_deskripsi_hari.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/evaluasi2_deskripsi_hari.dart) | **Evaluasi 2:** Deskripsi Hari Interaktif (Senin s.d. Minggu) |
| [lib/evaluasi3_biodata_profil.dart](file:///d:/isna/Pemrograman%20MultiPlatform/P07_Widget/widget_dasar/lib/evaluasi3_biodata_profil.dart) | **Evaluasi 3:** Foto Profil & Kartu Biodata Diri Lengkap |

---

## 🖼️ Aset Gambar

Tersimpan pada folder `P07_Widget\widget_dasar\images\`:
- `logo_polbeng.png`
- `logo_kemdikbud.jpg`
- `logo_vokasi.jpg`
- `profile.png`

---

## 🚀 Cara Menjalankan

1. Masuk ke direktori project:
   ```powershell
   cd "d:\isna\Pemrograman MultiPlatform\P07_Widget\widget_dasar"
   ```
2. Jalankan aplikasi utama (Menu interaktif + Action Button):
   ```powershell
   flutter run -d chrome
   ```
3. Atau jalankan salah satu file latihan/evaluasi secara langsung:
   ```powershell
   flutter run -d chrome -t lib/evaluasi1_tabel_mahasiswa.dart
   flutter run -d chrome -t lib/evaluasi2_deskripsi_hari.dart
   flutter run -d chrome -t lib/evaluasi3_biodata_profil.dart
   ```
