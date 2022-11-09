# *Stateless* vs *Stateful* Widget
*Stateless* widget adalah widget yang tidak punya *state*. Artinya, widget ini tidak bisa ter-*update* dengan sendirinya selama aplikasi berjalan. Sebaliknya, *Stateful* widget adalah widget yang memiliki *state*. Widget ini memiliki *state class* yang menyimpan *state* dari widget tersebut.

# Widget yang Dipakai
- `Scaffold`: menerapkan struktur fungsionalitas aplikasi secara keseluruhan
- `AppBar`: menampilkan fitur-fitur utama aplikasi pada bagian atas, seperti judul
- `Text`: menampilkan teks
- `Center`: memosisikan semua widget di child ke tengah
- `Column`: memosisikan semua widget di children secara vertikal
- `MainAxisAlignment`: mengatur posisi widget-widget berdasarkan aturan tertentu
- `TextStyle`: mengatur *style* dari sebuah teks pada `Text`
- `FloatingActionButton`: tombol di depan halaman aplikasi yang umumnya digunakan untuk fitur-fitur utama
- `FloatingActionButtonLocation`: mengatur posisi dari `FloatingActionButton`
- `Row`: memosisikan semua widget di children secara horizontal
- `Visibility`: mengatur tampil atau tidaknya suatu widget
- `Container`: menampung banyak widget

# Fungsi `setState()`
`setState()` berfungsi untuk mengubah *state* dari sebuah widget. Variabel yang terdampak tergantung dengan operasi yang dilakukan di dalam `setState()`.

# Perbedaan `const` dan `final`
- `const`: nilai variabel akan langsung disimpan di memori saat *compile-time*
- `final`: nilai variabel akan disimpan di memori saat *running-time*

# Implementasi *Checklist*
1. Mengganti judul aplikasi menjadi "Program Counter"
2. Membuat tombol baru dengan fungsinya, `_decrementCounter()`, untuk mengurangi nilai *counter*
3. Membuat variabel `isEven` untuk menentukan ganjil/genapnya nilai *counter* tersebut
4. Membuat fungsi if-else untuk menampilkan teks "GANJIL"/"GENAP" berdasarkan ganjil/genapnya *counter*