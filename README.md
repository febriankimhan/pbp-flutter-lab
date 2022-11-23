# Tugas 7
## *Stateless* vs *Stateful* Widget
*Stateless* widget adalah widget yang tidak punya *state*. Artinya, widget ini tidak bisa ter-*update* dengan sendirinya selama aplikasi berjalan. Sebaliknya, *Stateful* widget adalah widget yang memiliki *state*. Widget ini memiliki *state class* yang menyimpan *state* dari widget tersebut.

## Widget yang Dipakai
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

## Fungsi `setState()`
`setState()` berfungsi untuk mengubah *state* dari sebuah widget. Variabel yang terdampak tergantung dengan operasi yang dilakukan di dalam `setState()`.

## Perbedaan `const` dan `final`
- `const`: nilai variabel akan langsung disimpan di memori saat *compile-time*
- `final`: nilai variabel akan disimpan di memori saat *running-time*

## Implementasi *Checklist*
1. Mengganti judul aplikasi menjadi "Program Counter"
2. Membuat tombol baru dengan fungsinya, `_decrementCounter()`, untuk mengurangi nilai *counter*
3. Membuat variabel `isEven` untuk menentukan ganjil/genapnya nilai *counter* tersebut
4. Membuat fungsi if-else untuk menampilkan teks "GANJIL"/"GENAP" berdasarkan ganjil/genapnya *counter*


<br>
<br>


# Tugas 8
## `Navigator.push` vs `Navigator.pushReplacement`
Dalam Flutter, halaman-halaman yang dibuka disimpan seolah-olah sebagai *stack*. Pada `Navigator.push`, halaman yang baru dibuka akan dimasukkan ke *top of stack*, sedangkan `Navigator.pushReplacement` akan menggantikan halaman yang ada di *top of stack* dengan halaman yang baru saja dibuka.

## Widget yang Dipakai
- `Form`: untuk membuat sebuah form
- `SingleChildScrollView`: membuat widget yang ditampilkan bisa di-*scroll* apabila ukurannya melebihi ukuran layar
- `EdgeInsets`: mengatur margin dari sebuah widget
- `TextFormField`: membuat *field* untuk mengisi form dengan tipe data teks
- `DropdownButton`: membuat sebuah tombol *dropdown*
- `Drawer`: menyimpan navigasi dari halaman-halaman yang ada di dalam aplikasi

## Jenis-Jenis Event di Flutter
- `onPressed`: menjalankan fungsi ketika tombol dipencet
- `onTap`: sama dengan `onPressed`, tetapi untuk widget selain *button*
- `onChanged`: menjalankan fungsi ketika isi dari sebuah *field* form berubah
- `onSaved`: menjalankan fungsi ketika isi dari sebuah disimpan

## Cara Kerja `Navigator`
Dalam Flutter, halaman-halaman yang dibuka disimpan seolah-olah sebagai *stack*. Halaman yang sedang dibuka akan disimpan oleh Flutter pada *top of stack*. Ketika kita membuka sebuah halaman baru, maka *stack* akan melakukan operasi *push*, yaitu memasukkan halaman yang sedang dibuka tersebut ke *top of stack*. Ketika kita kembali dari sebuah halaman yang sudah dibuka, maka *stack* akan melakukan operasi *pop*, yaitu mengeluarkan halaman yang tersimpan pada *top of stack*. Selain operasi *push*, Flutter juga memiliki operasi *pushReplacement*, yaitu mengganti halaman yang ada pada *top of stack* dengan halaman yang sedang dibuka. 

## Implementasi *Checklist*
1. Membuat *file* `form_budget.dart` untuk menampilkan form
2. Membuat `TextField` untuk mengisi data form, yaitu judul dan nominal budget
3. Membuat `DropdownButton` untuk membuat tombol dropdown untuk memilih jenis data budget
4. Membuat tombol "Simpan" untuk menyimpan data form
5. Membuat variabel `listDataBudget` untuk menyimpan data yang sudah di-*submit* yang sudah dalam format `Card`
6. Membuat *file* `data_budget.dart` untuk menampilkan data budget yang tersimpan
7. Membuat `Drawer` untuk menyimpan navigasi dari ketiga halaman `form_budget.dart`, `data_budget.dart`, dan `main.dart` pada ketiga *file*

<br>
<br>


# Tugas 9
## Mengambil Data JSON Tanpa Model
Kita bisa mengambil data JSON tanpa perlu membuat model dari data tersebut. Namun, dalam hal struktur kode dan *readability*, penggunaan model akan jauh lebih baik agar kode kita mudah dipahami.

## Widget yang dipakai
1. `FutureBuilder`: untuk mengeksekusi fungsi-fungsi asinkronus ataupun menampilkan widget berdasarkan *snapshot* terakhir dari interaksi dengan `Future`
2. `CircularProgressIndicator`: menampilkan indikator *loading*
3. `SizedBox`: menampilkan area kotak dengan ukuran yang *fix*
4. `InkWell`: membuat child widget bisa ditekan dan bisa menjalankan fungsi ketika ditekan
5. `Expanded`: membuat tampilan widget mengisi area yang ada

## Mekanisme Pengambilan Data dari JSON dan Menampilkannya
1. Membuat model sebagai `class` dari data yang akan diambil
2. Membuat fungsi untuk mengambil data JSON, mengubah bentuk data menjadi `class` yang sudah dibuat
3. Mengembalikan data-data tersebut yang dikumpulkan dalam bentuk list
4. Membuat widget `FutureBuilder` untuk menampilkan data-data tersebut secara asinkronus

## Implementasi *Checklist*
1. Membuat folder `/lib/model/` untuk menyimpan model data dan `/lib/page/` untuk menyimpan file-file `dart` selain `main.dart`
2. Membuat file `mywatchlist.dart` sebagai model data
3. Membuat fungsi `fetchMyWatchList` untuk mengambil data, memformatnya ke dalam model yang sudah dibuat sebelumnya, dan mengembalikan data-data tersebut
4. Membuat file `mywatchlist_page.dart` untuk menampilkan judul-judul dari data `MyWatchList`
5. Membuat file `mywatchlist_detail.dart` untuk menampilkan informasi detail dari data `MyWatchList`