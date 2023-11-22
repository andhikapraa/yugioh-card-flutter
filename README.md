# Yu-Gi-Oh! Card Collection Flutter Project
![Flutter version](https://img.shields.io/static/v1?label=Flutter&message==3.13.9&logo=flutter&logoColor=white&color=blue)
![Last Commit](https://img.shields.io/github/last-commit/andhikapraa/yugioh-card-flutter)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

Proyek ini dibuat untuk menyelesaikan tugas mata kuliah
Pemrograman Berbasis Platform yang diselenggarakan oleh
Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2023/2024

Aplikasi Yu-Gi-Oh! Card Collection ini merupakan aplikasi
pengelolaan koleksi kartu *trading game* Yu-Gi-Oh!
di mana pengguna dapat menyimpan data koleksi kartu yang 
dimiliki.

Dibuat oleh:
```
Nama   : Muhammad Andhika Prasetya
NPM    : 2206031302
Kelas  : PBP C
```

## Task Checklist
- [X] [Tugas 7: Elemen Dasar Flutter](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-7)
- [X] [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-8)
- [X] [Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-9)

# Table of Contents

[**Yu-Gi-Oh! Card Collection Project**](<#Yu-Gi-Oh-Card-Collection-Flutter-Project>)<br />
&emsp;[**Task Checklist**](<#Task-Checklist>)<br />
[**Table of contents**](<#Table-of-contents>)<br />
[**Tugas 7: Elemen Dasar Flutter**](<#Tugas-7-Elemen-Dasar-Flutter>)<br />
&emsp;[**Tugas 7 Checklist**](<#Tugas-7-Checklist>)<br />
&emsp;&emsp;[**Membuat program Flutter baru**](<#Membuat-program-Flutter-baru>)<br />
&emsp;&emsp;[**Membuat tiga tombol sederhana dengan `Snackbar`**](<#Membuat-tiga-tombol-sederhana-dengan-Snackbar>)<br />
&emsp;&emsp;[**Mengimplementasikan warna-warna yang berbeda untuk setiap tombol**](<#Mengimplementasikan-warna-warna-yang-berbeda-untuk-setiap-tombol>)<br />
&emsp;&emsp;[**Menjawab pertanyaan-pertanyaan tugas 7**](<#Menjawab-pertanyaan-pertanyaan-tugas-7>)<br />
&emsp;&emsp;&emsp;[**Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?**](<#Apa-perbedaan-utama-antara-stateless-dan-stateful-widget-dalam-konteks-pengembangan-aplikasi-Flutter>)<br />
&emsp;&emsp;&emsp;[**Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**](<#Sebutkan-seluruh-widget-yang-kamu-gunakan-untuk-menyelesaikan-tugas-ini-dan-jelaskan-fungsinya-masing-masing>)<br />
[**Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements**](<#Tugas-8-Flutter-Navigation-Layouts-Forms-and-Input-Elements>)<br />
&emsp;[**Tugas 8 Checklist**](<#Tugas-8-Checklist>)<br />
&emsp;&emsp;[**Refactoring sebelum memulai tugas 8**](<#Refactoring-sebelum-memulai-tugas-8>)<br />
&emsp;&emsp;[**Membuat halaman form tambah item baru**](<#Membuat-halaman-form-tambah-item-baru>)<br />
&emsp;&emsp;[**Mengarahkan pengguna ke halaman form tambah item baru**](<#Mengarahkan-pengguna-ke-halaman-form-tambah-item-baru>)<br />
&emsp;&emsp;[**Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru**](<#Memunculkan-data-sesuai-isi-dari-formulir-yang-diisi-dalam-sebuah-pop-up-setelah-menekan-tombol-Save-pada-halaman-formulir-tambah-item-baru>)<br />
&emsp;&emsp;[**Membuat sebuah drawer pada aplikasi**](<#Membuat-sebuah-drawer-pada-aplikasi>)<br />
&emsp;&emsp;[**Membuat model `Item`**](<#Membuat-model-Item>)<br />
&emsp;&emsp;[**Membuat halaman daftar item**](<#Membuat-halaman-daftar-item>)<br />
&emsp;&emsp;[**Mengarahkan pengguna ke halaman daftar item**](<#Mengarahkan-pengguna-ke-halaman-daftar-item>)<br />
&emsp;&emsp;[**Menjawab pertanyaan-pertanyaan tugas 8**](<#Menjawab-pertanyaan-pertanyaan-tugas-8>)<br />
&emsp;&emsp;&emsp;[**Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**](<#Jelaskan-perbedaan-antara-Navigatorpush-dan-NavigatorpushReplacement-disertai-dengan-contoh-mengenai-penggunaan-kedua-metode-tersebut-yang-tepat>)<br />
&emsp;&emsp;&emsp;[**Jelaskan masing-masing *layout* widget pada Flutter dan konteks penggunaannya masing-masing!**](<#Jelaskan-masing-masing-layout-widget-pada-Flutter-dan-konteks-penggunaannya-masing-masing>)<br />
&emsp;&emsp;&emsp;[**Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**](<#Sebutkan-apa-saja-elemen-input-pada-form-yang-kamu-pakai-pada-tugas-kali-ini-dan-jelaskan-mengapa-kamu-menggunakan-elemen-input-tersebut>)<br />
&emsp;&emsp;&emsp;[**Bagaimana penerapan *clean architecture* pada aplikasi Flutter?**](<#Bagaimana-penerapan-clean-architecture-pada-aplikasi-Flutter>)<br />
[**Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter**](<#Tugas-9-Integrasi-Layanan-Web-Django-dengan-Aplikasi-Flutter>)<br />
&emsp;[**Tugas 9 Checklist**](<#Tugas-9-Checklist>)<br />
&emsp;&emsp;[**Setup *authentication* pada Django**](<#Setup-authentication-pada-Django>)<br />
&emsp;&emsp;[**Membuat halaman login pada proyek tugas Flutter**](<#Membuat-halaman-login-pada-proyek-tugas-Flutter>)<br />
&emsp;&emsp;[**Membuat model kustom sesuai dengan proyek aplikasi Django**](<#Membuat-model-kustom-sesuai-dengan-proyek-aplikasi-Django>)<br />
&emsp;&emsp;[**Membuat halaman yang berisi daftar semua item yang terdapat pada *endpoint* `JSON` di Django yang telah kamu *deploy***](<#Membuat-halaman-yang-berisi-daftar-semua-item-yang-terdapat-pada-endpoint-JSON-di-Django-yang-telah-kamu-deploy>)<br />
&emsp;&emsp;[**Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item**](<#Membuat-halaman-detail-untuk-setiap-item-yang-terdapat-pada-halaman-daftar-Item>)<br />
&emsp;&emsp;[**Mengubah kode program `menu.dart`, `left_drawer.dart`, dan `add_item.dart` sesuai dengan perubahan model `Item`**](<#Mengubah-kode-program-menu.dart-left_drawer.dart-dan-add_item.dart-sesuai-dengan-perubahan-model-Item>)<br />
&emsp;&emsp;[**Membuat *register* pada aplikasi Flutter**](<#Membuat-register-pada-aplikasi-Flutter>)<br />
&emsp;&emsp;[**Melakukan *filter* untuk daftar item**](<#Melakukan-filter-untuk-daftar-item>)<br />
&emsp;&emsp;[**Menjawab pertanyaan-pertanyaan tugas 9**](<#Menjawab-pertanyaan-pertanyaan-tugas-9>)<br />
&emsp;&emsp;&emsp;[**Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**](<#Apakah-bisa-kita-melakukan-pengambilan-data-JSON-tanpa-membuat-model-terlebih-dahulu-Jika-iya-apakah-hal-tersebut-lebih-baik-daripada-membuat-model-sebelum-melakukan-pengambilan-data-JSON>)<br />
&emsp;&emsp;&emsp;[**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**](<#Jelaskan-fungsi-dari-CookieRequest-dan-jelaskan-mengapa-instance-CookieRequest-perlu-untuk-dibagikan-ke-semua-komponen-di-aplikasi-Flutter>)<br />
&emsp;&emsp;&emsp;[**Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**](<#Jelaskan-mekanisme-pengambilan-data-dari-JSON-hingga-dapat-ditampilkan-pada-Flutter>)<br />
&emsp;&emsp;&emsp;[**Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**](<#Jelaskan-mekanisme-autentikasi-dari-input-data-akun-pada-Flutter-ke-Django-hingga-selesainya-proses-autentikasi-oleh-Django-dan-tampilnya-menu-pada-Flutter>)<br />
&emsp;&emsp;&emsp;[**Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**](<#Sebutkan-seluruh-widget-yang-kamu-pakai-pada-tugas-ini-dan-jelaskan-fungsinya-masing-masing>)<br />


# Tugas 7: Elemen Dasar Flutter
Mengimplementasikan aplikasi [Yu-Gi-Oh! Card Collection Project](https://github.com/andhikapraa/yugioh-card) dengan menggunakan Flutter.

## Tugas 7 Checklist
*from* [Tugas 7: Elemen Dasar Flutter](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-7)
- [X] Membuat sebuah program Flutter baru dengan tema _inventory_ seperti tugas-tugas sebelumnya.
- [X] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - [X] Melihat daftar item (`Lihat Item`)
    - [X] Menambah item (`Tambah Item`)
    - [X] Logout (`Logout`)
- [X] Memunculkan `Snackbar` dengan tulisan:
    - [X] "Kamu telah menekan tombol Lihat Item" ketika tombol `Lihat Item` ditekan.
    - [X] "Kamu telah menekan tombol Tambah Item" ketika tombol `Tambah Item` ditekan.
    - [X] "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.
- [X] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root folder*.
    - [X] Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?
    - [X] Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    - [X] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
- [X] Melakukan `add`-`commit`-`push` ke GitHub.
- [X] *BONUS*: Mengimplementasikan warna-warna yang berbeda untuk setiap tombol.

### Membuat program Flutter baru
Membuat program Flutter baru dengan nama `yugioh_card` dengan perintah `flutter create yugioh_card` pada terminal. Program ini akan dibuat pada direktori `yugioh_card`.

### Membuat tiga tombol sederhana dengan `Snackbar`
Setelah program Flutter baru dibuat, kita akan membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar item, menambah item, dan logout. Namun sebelum itu, kita perlu merapihkan struktur proyek Flutter yang baru saja dibuat, yaitu dengan memisahkan menu yang akan kita buat ke dalam sebuah *widget* baru. Kita akan membuat *widget* baru bernama `menu.dart` pada direktori `lib/widgets`. Berikut adalah kode program `menu.dart`:
```dart
import 'package:flutter/material.dart';

class MenuItem {
    final String title;
    final IconData icon;
    final Function onTap;
    
    MenuItem({
        required this.title,
        required this.icon,
        required this.onTap,
    });
}

class Menu extends StatelessWidget {
    Menu({Key? key}) : super(key: key);

    final List<MenuItem> menuItems = [
        MenuItem(
            title: 'Lihat Item',
            icon: Icons.list,
            onTap: () {},
        ),
        MenuItem(
            title: 'Tambah Item',
            icon: Icons.add,
            onTap: () {},
        ),
        MenuItem(
            title: 'Logout',
            icon: Icons.logout,
            onTap: () {},
        ),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Yu-Gi-Oh! Card Collection',
                  ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        children: <Widget>[
                            const Padding(
                                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: Text(
                                    'Menu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                            ),
                            GridView.count(
                                primary: true,
                                padding: const EdgeInsets.all(20.0),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                crossAxisCount: 3,
                                shrinkWrap: true,
                                children: menuItems.map((item) {
                                    return MenuCard(item);
                                }).toList(),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}

class MenuCard extends StatelessWidget {
  final MenuItem item;

  const MenuCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF0D6EFD),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.title}!"),
              duration: const Duration(seconds: 1),
            ));
          item.onTap();
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

Kode program di atas sudah mengimplementasikan tiga tombol sederhana dengan ikon dan teks untuk melihat daftar item, menambah item, dan logout. Selain itu, kode program di atas juga sudah mengimplementasikan `Snackbar` yang akan muncul ketika tombol-tombol tersebut ditekan.

Selanjutnya, kita akan mengubah kode program `main.dart` menjadi seperti berikut:
```dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yu-Gi-Oh! Card Collection',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF0D6EFD),
        scaffoldBackgroundColor: const Color(0xFF001B35),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF001427),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF031633),
          contentTextStyle: TextStyle(
            color: Color(0xFF6EA8FE)
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: Menu(),
    );
  }
}
```

Kode program di atas akan menghasilkan tampilan sebagai berikut:
![Menu](https://raw.githubusercontent.com/andhikapraa/yugioh-card-flutter/main/screenshot/ygocc-menu-1.png)

### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol
Untuk mengimplementasikan warna-warna yang berbeda untuk setiap tombol, kita perlu mengubah kode program `menu.dart` menjadi seperti berikut:
```dart
import 'package:flutter/material.dart';

class MenuItem {
    final String title;
    final IconData icon;
    final Color color;
    final Function onTap;
    
    MenuItem({
        required this.title,
        required this.icon,
        required this.color,
        required this.onTap,
    });
}

class Menu extends StatelessWidget {
    Menu({Key? key}) : super(key: key);

    final List<MenuItem> menuItems = [
        MenuItem(
            title: 'Lihat Item',
            icon: Icons.list,
            color: const Color(0xFF0D6EFD),
            onTap: () {},
        ),
        MenuItem(
            title: 'Tambah Item',
            icon: Icons.add,
            color: const Color(0xFF198754),
            onTap: () {},
        ),
        MenuItem(
            title: 'Logout',
            icon: Icons.logout,
            color: const Color(0xFFDC3545),
            onTap: () {},
        ),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Yu-Gi-Oh! Card Collection',
                  ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        children: <Widget>[
                            const Padding(
                                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: Text(
                                    'Menu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                            ),
                            GridView.count(
                                primary: true,
                                padding: const EdgeInsets.all(20.0),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                crossAxisCount: 3,
                                shrinkWrap: true,
                                children: menuItems.map((item) {
                                    return MenuCard(item);
                                }).toList(),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}

class MenuCard extends StatelessWidget {
  final MenuItem item;

  const MenuCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.title}!"),
              duration: const Duration(seconds: 1),
            ));
          item.onTap();
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

Kode program di atas akan menghasilkan tampilan sebagai berikut:
![Menu](https://raw.githubusercontent.com/andhikapraa/yugioh-card-flutter/main/screenshot/ygocc-menu-1.png)

### Menjawab pertanyaan-pertanyaan tugas 7
#### Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi dengan Flutter, *widget* merupakan elemen dasar untuk membangun antarmuka pengguna dan mereka dibedakan menjadi dua jenis utama yaitu *Stateless* dan *Stateful*.

1. *Stateless Widget*: Komponen ini digunakan ketika bagian dari aplikasi dapat disajikan/ditampilkan tanpa mengetahui informasi tambahan atau tanpa mengubah konfigurasi selama *runtime*. Dalam kata lain, *widget* tidak pernah berubah atau tidak memiliki status yang dapat berubah. Sebagai contoh, ikon, judul adalah *stateless widget*.

2. *Stateful Widget*: Berbeda dengan *Stateless*, *Stateful Widget* digunakan ketika Anda membutuhkan *widget* yang dapat berubah seiring waktu, seperti pengguna melakukan interaksi atau fungsi yang dapat mengubah tampilan aplikasi yang sedang berjalan, seperti *Checkbox*, *Radio Button*, *Slider*, *InkWell*, *Form*, dan *DateTimePicker* adalah beberapa contoh dari *Stateful Widgets*.

Jadi perbedaan utamanya adalah bahwa *Stateless widget* tidak memerlukan perubahan status selama *runtime* sedangkan *Stateful widget* memungkinkan perubahan status selama *runtime*, seperti interaksi pengguna atau data yang berubah seiring waktu.

#### Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. `Scaffold`: *Widget* ini digunakan untuk membuat tata letak dasar aplikasi. *Widget* ini menyediakan fungsi seperti *app bar*, *body*, *drawer*, dan lain-lain. *Widget* ini juga menyediakan fungsi untuk menampilkan *snackbar* dan *bottom sheet*.

2. `AppBar`: *Widget* ini digunakan untuk membuat *app bar* yang berisi judul dan tombol kiri dan kanan. *Widget* ini juga menyediakan fungsi untuk menampilkan *menu*.

3. `Text`: *Widget* ini digunakan untuk membuat teks.

4. `Icon`: *Widget* ini digunakan untuk membuat ikon.

5. `Padding`: *Widget* ini digunakan untuk membuat jarak antar *widget*.

6. `Column`: *Widget* ini digunakan untuk membuat kolom.

7. `GridView`: *Widget* ini digunakan untuk membuat *grid*.

8. `Material`: *Widget* ini digunakan untuk membuat *widget* yang mengikuti desain material.

9. `InkWell`: *Widget* ini digunakan untuk membuat *widget* yang dapat diubah warnanya ketika ditekan.

10. `Center`: *Widget* ini digunakan untuk membuat *widget* yang berada di tengah.

11. `Container`: *Widget* ini digunakan untuk membuat *widget* yang dapat diubah warnanya.

12. `SnackBar`: *Widget* ini digunakan untuk membuat *snackbar*.

13. `ScaffoldMessenger`: *Widget* ini digunakan untuk membuat *snackbar*. *Widget* ini juga menyediakan fungsi untuk menampilkan *snackbar*.


# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
Mengimplementasikan _navigation_, _layouts_, _forms_, dan _input elements_ pada aplikasi [Yu-Gi-Oh! Card Collection Project](https://github.com/andhikapraa/yugioh-card) dengan menggunakan Flutter.

## Tugas 8 Checklist
*from* [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-8)
- [X] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
    - [X] Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
    - [X] Memiliki sebuah tombol `Save`.
    - [X] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
        - [X] Setiap elemen input tidak boleh kosong.
        - [X] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
- [X] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama.
- [X] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru.
- [X] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    - [X] Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
    - [X] Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    - [X] Ketika memiih opsi (`Tambah Item`), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
- [X] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root folder* (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    - [X] Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    - [X] Jelaskan masing-masing *layout* widget pada Flutter dan konteks penggunaannya masing-masing!
    - [X] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    - [X] Bagaimana penerapan *clean architecture* pada aplikasi Flutter?
    - [X] Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial)
- [X] Melakukan `add`-`commit`-`push` ke GitHub.
- [X] *BONUS*:
    - [X] Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.

        > Kamu dapat memanfaatkan objek model untuk mengerjakan fitur ini.
    - [X] Mengarahkan pengguna ke halaman tersebut jika menekan tombol `Lihat Produk` pada halaman utama atau drawer.

### *Refactoring* sebelum memulai tugas 8
Sebelum memulai tugas 8, kita akan melakukan *refactoring* pada kode program `menu.dart` dan `main.dart` yang telah dibuat pada tugas 7. Kita akan membuat 2 *folder* baru pada direktori `lib`, yaitu `widgets` dan `screens` yang akan digunakan untuk menyimpan *widget* dan *screen* yang akan kita buat selanjutnya. Selain itu, kita akan memindahkan kode program `menu.dart` ke direktori `lib/screens`. Kita juga akan memisahkan `MenuItem` dan `MenuCard` ke dalam *widget* baru bernama `menu_item.dart` dan `menu_card.dart` yang akan kita buat pada direktori `lib/widgets`.

### Membuat halaman form tambah item baru
Setelah *refactoring* selesai dilakukan, kita akan membuat halaman form tambah item baru berdasarkan model yang telah dibuat di Django. Kita akan membuat *screen* baru bernama `add_item.dart` pada direktori `lib/screens`. Kode program `add_item.dart` bisa dilihat pada [link ini](https://github.com/andhikapraa/yugioh-card-flutter/blob/main/lib/screens/add_item.dart).
> Kode program `add_item.dart` terlalu panjang untuk dimasukkan ke dalam README.md.

### Mengarahkan pengguna ke halaman form tambah item baru
Setelah halaman form tambah item baru dibuat, kita akan mengarahkan pengguna ke halaman tersebut ketika tombol `Tambah Item` pada halaman utama ditekan. Untuk mengarahkan pengguna ke halaman form tambah item baru, kita perlu mengubah kode program `menu_item.dart`, `menu_card.dart`, dan `menu.dart` menjadi seperti berikut:
```dart
// menu_item.dart
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final Color color;
  final Function(BuildContext context) onTap;

  MenuItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}

// menu_card.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/widgets/menu_item.dart';

class MenuCard extends StatelessWidget {
  final MenuItem item;

  const MenuCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          item.onTap(context);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// menu.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/widgets/menu_item.dart';
import 'package:yugioh_card/widgets/menu_card.dart';
import 'package:yugioh_card/screens/add_item.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Lihat Item',
      icon: Icons.list,
      color: const Color(0xFF0D6EFD),
      onTap: (BuildContext context) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(
            content: Text("Kamu telah menekan tombol Lihat Item!"),
            duration: Duration(seconds: 2),
          ));
      },
    ),
    MenuItem(
      title: 'Tambah Item',
      icon: Icons.add,
      color: const Color(0xFF198754),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemFormPage()),
        );
      },
    ),
    MenuItem(
      title: 'Logout',
      icon: Icons.logout,
      color: const Color(0xFFDC3545),
      onTap: (BuildContext context) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(
            content: Text("Kamu telah menekan tombol Logout!"),
            duration: Duration(seconds: 2),
          ));
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yu-Gi-Oh! Card Collection',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: menuItems.map((item) {
                  return MenuCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

### Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru
Untuk memunculkan data setelah menekan tombol `Save` pada halaman formulir tambah item baru, kita perlu membuat sebuah *function* bernama `showFormData` pada `add_item.dart` yang akan memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up`. Kode program `showFormData` adalah sebagai berikut:
```dart
void showFormData(BuildContext context, Item item) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Card Saved Successfully'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Name: ${item.name}'),
              Text('Amount: ${item.amount}'),
              Text('Description: ${item.description}'),
              Text('Card Type: ${item.cardType}'),
              Text('Passcode: ${item.passcode}'),
              Text('Attribute: ${item.attribute}'),
              Text('Types: ${item.types}'),
              Text('Level: ${item.level}'),
              Text('ATK: ${item.atk}'),
              Text('DEF: ${item.def}'),
              Text('Effect Type: ${item.effectType}'),
              Text('Card Property: ${item.cardProperty}'),
              Text('Rulings: ${item.rulings}'),
              item.image ?? const Text('No image selected.'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
```

Selanjutnya, kita perlu memanggil *function* `showFormData` pada `add_item.dart` ketika tombol `Save` ditekan. Kode program `add_item.dart` setelah *function* `showFormData` dipanggil adalah sebagai berikut:
```dart
// add_item.dart
...
child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      Colors.indigo,
    ),
  ),
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      showFormData(context, item); // Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up`
    }
  },
  child: const Text(
    'Save',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
)
...
```

### Membuat sebuah drawer pada aplikasi
Untuk membuat sebuah drawer pada aplikasi, kita perlu membuat sebuah *widget* bernama `left_drawer.dart` pada direktori `lib/widgets`. Kode program `left_drawer.dart` adalah sebagai berikut:
```dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:yugioh_card/screens/add_item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF001427),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                  radius: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                // App Name and Version
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yu-Gi-Oh!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Card Collection',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline),
              title: const Text('Tambah Item'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemFormPage()),
                );
              },
            ),
          ],
        ),
      ],
    ));
  }
}

```
Setelah itu, kita perlu memanggil *widget* `LeftDrawer` pada setiap *screen* yang akan kita buat selanjutnya. Kita akan memanggil *widget* `LeftDrawer` pada `menu.dart` dan `add_item.dart`. Kode program `menu.dart` dan `add_item.dart` setelah *widget* `LeftDrawer` dipanggil adalah sebagai berikut:
```dart
// menu.dart
...
import 'package:yugioh_card/widgets/left_drawer.dart';

...
Scaffold(
  appBar: AppBar(
    title: const Text(
      'Yu-Gi-Oh! Card Collection',
    ),
  ),
  drawer: const LeftDrawer(), // Memanggil widget LeftDrawer
  ...
)

// add_item.dart
...
import 'package:yugioh_card/widgets/left_drawer.dart';

...
Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Tambah Item',
      ),
    ),
  drawer: const LeftDrawer(), // Memanggil widget LeftDrawer
  ...
)
```

Dengan demikian, kita telah berhasil membuat sebuah drawer pada aplikasi.

### Membuat model `Item`
Untuk membuat model `Item`, kita perlu membuat sebuah *folder* baru bernama `models` pada direktori `lib`. Selanjutnya, kita akan membuat sebuah *file* bernama `item.dart` pada direktori `lib/models`. Kode program `item.dart` adalah sebagai berikut:
```dart
class Item {
  String name;
  int amount;
  String description;
  String cardType;
  int passcode;
  String attribute;
  String types;
  int level;
  int atk;
  int def;
  String effectType;
  String cardProperty;
  String rulings;
  String imagePath;

  Item({
    required this.name,
    required this.amount,
    required this.description,
    required this.cardType,
    required this.passcode,
    required this.attribute,
    required this.types,
    required this.level,
    required this.atk,
    required this.def,
    required this.effectType,
    required this.cardProperty,
    required this.rulings,
    required this.imagePath,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'],
      amount: json['amount'],
      description: json['description'],
      cardType: json['card_type'],
      passcode: json['passcode'],
      attribute: json['attribute'],
      types: json['types'],
      level: json['level'],
      atk: json['atk'],
      def: json['deff'],
      effectType: json['effect_type'],
      cardProperty: json['card_property'],
      rulings: json['rulings'],
      imagePath: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'amount': amount,
        'description': description,
        'card_type': cardType,
        'passcode': passcode,
        'attribute': attribute,
        'types': types,
        'level': level,
        'atk': atk,
        'deff': def,
        'effect_type': effectType,
        'card_property': cardProperty,
        'rulings': rulings,
        'image': imagePath,
      };
}

```
Lalu pada `add_item.dart`, kita akan menggunakan model `Item` yang telah dibuat.

### Membuat halaman daftar item
Untuk membuat halaman daftar item, kita perlu membuat sebuah *screen* baru bernama `item_detail.dart` dan `item_list.dart` pada direktori `lib/screens`. Selain itu, kita juga perlu membuat sebuah *widget* baru bernama `item_card.dart` pada direktori `lib/widgets`. Kode program `item_detail.dart`, `item_list.dart`, dan `item_card.dart` adalah sebagai berikut:
```dart
// item_detail.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:yugioh_card/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              if (item.imagePath.startsWith('assets'))
                Image.asset(
                  item.imagePath,
                  width: 300,
                  height: 440,
                )
              else
                Image.file(
                  File(item.imagePath),
                  width: 300,
                  height: 440,
                ),
              const Padding(padding: EdgeInsets.all(8)),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF00071f),
                  border: Border.all(color: const Color(0xFF1D3E67)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount: ${item.amount}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "${item.cardType} | ${item.attribute} | ${item.level}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.effectType,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "[${item.types}]",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "ATK/ ${item.atk} DEF/ ${item.def}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "#${item.passcode}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.cardProperty,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.rulings,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// item_list.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:yugioh_card/widgets/item_card.dart';

class ItemListPage extends StatelessWidget {
  final List<Item> items;

  const ItemListPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LeftDrawer(),
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return ItemCard(items[index]);
        },
      ),
    );
  }
}

// item_card.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:yugioh_card/screens/item_detail.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ItemDetail(item: item)));
        },
        child: Stack(
          children: [
            if (item.imagePath.startsWith('assets'))
              Image.asset(
                item.imagePath,
                width: 300,
                height: 440,
              )
            else
              Image.file(
                File(item.imagePath),
                width: 300,
                height: 440,
              ),
            Positioned(
              bottom: 5,
              left: 5,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 20,
                child: Text(
                  item.amount.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

### Mengarahkan pengguna ke halaman daftar item
Untuk mengarahkan pengguna ke halaman daftar item, kita perlu mengubah kode program `menu.dart` menjadi seperti berikut:
```dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/widgets/menu_item.dart';
import 'package:yugioh_card/widgets/menu_card.dart';
import 'package:yugioh_card/screens/add_item.dart';
import 'package:yugioh_card/screens/item_list.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Lihat Item',
      icon: Icons.list_alt_outlined,
      color: const Color(0xFF0D6EFD),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemListPage(items: items)),
        );
      },
    ),
    ...
  ];
  ...
}

```
Dan kita juga perlu menambahkan kode program berikut pada `left_drawer.dart`:
```dart
...
import 'package:yugioh_card/screens/item_list.dart';
import 'package:yugioh_card/models/item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ...
        Column(
          children: [
            ...
            ListTile(
              leading: const Icon(Icons.list_alt_outlined),
              title: const Text('Lihat Item'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemListPage(items: items)),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

```

Dengan demikian, implementasi tugas 8 telah selesai dilakukan.

### Menjawab pertanyaan-pertanyaan tugas 8
#### Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
`Navigator.push()` dan `Navigator.pushReplacement()` merupakan *method* yang digunakan untuk mengarahkan pengguna ke halaman lain. Perbedaan utama antara `Navigator.push()` dan `Navigator.pushReplacement()` adalah bahwa `Navigator.push()` akan menambahkan halaman baru ke dalam *stack* halaman sedangkan `Navigator.pushReplacement()` akan mengganti halaman yang sedang ditampilkan dengan halaman baru.

Contoh penggunaan `Navigator.push()` adalah sebagai berikut:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const ItemFormPage()),
);
```
Dengan kode program di atas, kita akan mengarahkan pengguna ke halaman form tambah item baru ketika tombol `Tambah Item` pada halaman utama ditekan dan halaman form tambah item baru akan ditambahkan ke dalam *stack* halaman.

Contoh penggunaan `Navigator.pushReplacement()` adalah sebagai berikut:
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => Menu()),
);
```
Dengan kode program di atas, kita akan mengarahkan pengguna ke halaman utama ketika tombol `Halaman Utama` pada drawer ditekan dan halaman utama akan menggantikan halaman yang sedang ditampilkan.

#### Jelaskan masing-masing *layout* widget pada Flutter dan konteks penggunaannya masing-masing!
*Layout* widget pada Flutter adalah *widget* yang digunakan untuk mengatur tata letak dari *widget* lainnya. Berikut adalah beberapa *layout* widget pada Flutter:

|    Widget    | Deskripsi | Konteks penggunaan |
|--------------|-----------|--------------------|
| `Container`  | Mengatur ukuran, warna, dan margin *widget* *child*. | Dasar untuk semua *layout* widget. Dapat digunakan untuk mengatur ukuran, warna, dan margin *widget* lainnya. |
|    `Row`     | Mengatur *widget* *child* secara horizontal. | Menampilkan daftar item, seperti menu, daftar belanja, atau daftar lagu. |
|   `Column`   | Mengatur *widget* *child* secara vertikal. | Menampilkan teks, gambar, atau video. |
|  `ListView`  | Mengatur *widget* *child* secara vertikal dengan *scrolling*. | Menampilkan daftar item yang panjang, seperti daftar berita, daftar kontak, atau daftar produk. |
|  `GridView`  | Mengatur *widget* *child* secara vertikal dan horizontal dengan *scrolling*. | Menampilkan gambar, foto, atau produk. |
|   `Stack`    | Mengatur *widget* *child* agar dapat tumpang tindih. | Menampilkan komponen UI yang saling tumpang tindih, seperti tombol dan menu. |
|    `Wrap`    | Mengatur *widget* *child* secara horizontal dan vertikal. | Menampilkan daftar item yang dapat digulir ke kanan dan ke kiri, seperti daftar berita atau daftar kontak. |
|  `Expanded`  | Mengatur *widget* *child* agar dapat mengisi ruang yang tersedia. | Menampilkan komponen UI yang harus mengisi ruang yang tersedia, seperti tombol atau menu. |
|  `Flexible`  | Mengatur *widget* *child* agar dapat mengisi ruang yang tersedia dengan ukuran yang dapat berubah. | Menampilkan komponen UI yang ukurannya dapat disesuaikan dengan ukuran layar, seperti teks atau gambar. |
| `Positioned` | Mengatur *widget* *child* agar dapat ditempatkan pada posisi tertentu. | Menampilkan komponen UI pada posisi tertentu, seperti tombol atau menu. |
|  `SizedBox`  | Mengatur ukuran *widget* *child*. | Mengatur ukuran *widget* *child* secara spesifik. |
|   `Spacer`   | Mengatur jarak antar *widget* *child*. | Mengatur jarak antar *widget* *child* secara spesifik. |

#### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Elemen input pada form yang saya pakai pada tugas kali ini adalah `TextFormField`, `DropdownButtonFormField`, dan `ElevatedButton`. Saya menggunakan `TextFormField` karena elemen input ini dapat digunakan untuk membuat *text field* yang dapat divalidasi. Saya menggunakan `DropdownButtonFormField` karena elemen input ini dapat digunakan untuk membuat *dropdown* yang dapat divalidasi. Saya menggunakan `ElevatedButton` karena elemen input ini dapat digunakan untuk membuat tombol untuk mengupload gambar dan menyimpan data.

#### Bagaimana penerapan *clean architecture* pada aplikasi Flutter?
*Clean architecture* adalah sebuah arsitektur yang memisahkan kode program menjadi beberapa *layer* yang saling terhubung untuk meningkatkan fleksibilitas dan memudahkan pengujian. *Clean architecture* terdiri dari 3 *layer*, yaitu *presentation layer*, *domain layer*, dan *data layer*. *Presentation layer* adalah *layer* yang berisi kode program yang berhubungan dengan *user interface* dan *user input*. *Domain layer* adalah *layer* yang berisi kode program yang berhubungan dengan bisnis logika. *Data layer* adalah *layer* yang berisi kode program yang berhubungan dengan *database* dan *API*.

Pada aplikasi Flutter, penerapan *clean architecture* dapat dilakukan dengan memisahkan kode program menjadi beberapa *folder* yang saling terhubung. *Folder* yang berisi kode program yang berhubungan dengan *user interface* dan *user input* adalah `lib/screens` dan `lib/widgets`. *Folder* yang berisi kode program yang berhubungan dengan bisnis logika adalah `lib/models`. *Folder* yang berisi kode program yang berhubungan dengan *database* dan *API* adalah `lib/services`. Setelah itu, untuk menghubungkan masing-masing *layer*, kita dapat menggunakan *dependency injection*.


# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter
Mengintegrasikan layanan web Django yang telah dibuat pada tugas 6 dengan aplikasi Yu-Gi-Oh! Card Collection Flutter.

## Tugas 9 Checklist
*from* [Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-9)
- [X] Memastikan *deployment* proyek tugas Django kamu telah berjalan dengan baik.
- [X] Membuat halaman login pada proyek tugas Flutter.
- [X] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [X] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [X] Membuat halaman yang berisi daftar semua item yang terdapat pada *endpoint* `JSON` di Django yang telah kamu *deploy*.
    - [X] Tampilkan *name*, *amount*, dan *description* dari masing-masing item pada halaman ini.
- [X] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    - [X] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
    - [X] Tampilkan seluruh atribut pada model item kamu pada halaman ini.
    - [X] Tambahkan tombol untuk kembali ke halaman daftar item.
- [X] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root folder* (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    - [X] Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    - [X] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    - [X] Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
    - [X] Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    - [X] Sebutkan seluruh *widget* yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    - [X] Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).
- [X] Melakukan `add`-`commit`-`push` ke GitHub.
- [X] *BONUS*:
    - [X] Mengimplementasikan fitur registrasi akun pada aplikasi Flutter.
    - [X] Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.


### Setup *authentication* pada Django
Sebelum memulai tugas 9, kita perlu melakukan setup *authentication* pada Django. Untuk melakukan setup *authentication* pada Django, kita perlu melakukan langkah-langkah sebagai berikut:
1. Membuat `django-app` baru bernama `authentication` dengan menggunakan *command* `python manage.py startapp authentication` dan menambahkan `authentication` pada `INSTALLED_APPS` pada `settings.py`.
2. Menginstall `django-cors-headers` dengan menggunakan *command* `pip install django-cors-headers` dan menambahkan `corsheaders` pada `INSTALLED_APPS` pada `settings.py` dan `corsheaders.middleware.CorsMiddleware` pada `MIDDLEWARE` pada `settings.py`.
3. Menambahkan beberapa variabel berikut pada `settings.py`:
    ```python
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    CSRF_COOKIE_SECURE = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SAMESITE = 'None'
    SESSION_COOKIE_SAMESITE = 'None'
    ```
4. Membuat *view* baru bernama `register`, `login`, dan `logout` pada `views.py` dan menambahkan *path* baru pada `urls.py`. Berikut adalah kode program `views.py` dan `urls.py` setelah *view* dan *path* baru ditambahkan:
    ```python
    # views.py
    from django.http import JsonResponse
    from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
    from django.views.decorators.csrf import csrf_exempt
    from django.contrib.auth.models import User


    @csrf_exempt
    def login(request):
        if request.method == "POST":
            username = request.POST["username"]
            password = request.POST["password"]
            user = authenticate(request, username=username, password=password)

            if user:
                if user.is_active:
                    auth_login(request, user)
                    return JsonResponse({
                        "username": user.username,
                        "status": True,
                        "message": "Login successful"
                    }, status=200)
                else:
                    return JsonResponse({
                        "status": False,
                        "message": "Account disabled"
                    }, status=401)
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Invalid login details"
                }, status=401)
        else:
            return JsonResponse({
                "status": False,
                "message": "Invalid request"
            }, status=400)


    @csrf_exempt
    def logout(request):
        if request.method == "POST":
            auth_logout(request)
            return JsonResponse({
                "status": True,
                "message": "Logout successful"
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Invalid request"
            }, status=400)


    @csrf_exempt
    def register(request):
        if request.method == "POST":
            username = request.POST["username"]
            password = request.POST["password"]
            password2 = request.POST["password2"]
            if password != password2:
                return JsonResponse({
                    "status": False,
                    "message": "Passwords do not match"
                }, status=400)
            if User.objects.filter(username=username).exists():
                return JsonResponse({
                    "status": False,
                    "message": "Username already exists"
                }, status=400)
            user = User.objects.create_user(username=username, password=password)
            user.save()
            return JsonResponse({
                "status": True,
                "message": "Successfully registered as " + username
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Invalid request"
            }, status=400)
    ```
    ```python
    # urls.py
    from django.urls import path
    from . import views

    urlpatterns = [
        path("login", views.login, name="login"),
        path("logout", views.logout, name="logout"),
        path("register", views.register, name="register"),
    ]
    ```
5. Menambahkan *path* baru pada `urls.py` pada `yugioh_card`:
    ```python
    # urls.py
    from django.contrib import admin
    from django.urls import path, include
    from django.conf import settings
    from django.conf.urls.static import static

    urlpatterns = [
        path("admin/", admin.site.urls),
        path("", include("main.urls")),
        path("auth/", include("authentication.urls")),
    ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    ```
Dengan demikian, setup *authentication* pada Django telah selesai dilakukan.

### Membuat halaman login pada proyek tugas Flutter
Setelah setup *authentication* pada Django selesai dilakukan, kita akan membuat halaman login pada proyek tugas Flutter. Sebelum membuat halaman login, kita perlu menginstall `provider` dan `pbp_django_auth` terlebih dahulu dengan menjalankan perintah berikut pada terminal:
```console
flutter pub add provider
flutter pub add pbp_django_auth
```
Setelah itu, kita perlu memodifikasi `root widget` pada `main.dart` menjadi seperti berikut:
```dart
// main.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Yu-Gi-Oh! Card Collection',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF0D6EFD),
          scaffoldBackgroundColor: const Color(0xFF001B35),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF001427),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFF001B35),
          ),
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Color(0xFF031633),
            contentTextStyle: TextStyle(color: Color(0xFF6EA8FE)),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: Menu(),
      ),
    );
  }
}

```
Selanjutnya, kita perlu membuat halaman login pada `lib/screens/login.dart`. Kode program `login.dart` adalah sebagai berikut:
```dart
// login.dart
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF0D6EFD),
          scaffoldBackgroundColor: const Color(0xFF001B35),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF001427),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFF001B35),
          ),
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Color(0xFF031633),
            contentTextStyle: TextStyle(color: Color(0xFF6EA8FE)),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final request = Provider.of<CookieRequest>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                final response = await request
                    .login("https://pras-yugioh-card.onrender.com/auth/login", {
                  "username": username,
                  "password": password,
                });

                if (request.loggedIn) {
                  String message = response["message"];
                  String uname = response["username"];
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text("$message! Welcome $uname!"),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Login Failed"),
                      content: Text(response["message"]),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0, // Increase font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

### Membuat model kustom sesuai dengan proyek aplikasi Django
Setelah membuat halaman login pada proyek tugas Flutter, kita akan membuat model kustom sesuai dengan proyek aplikasi Django. Karena sebelumnya kita telah membuat model `Item` pada tugas 8, kita akan mengubahnya dengan hasil *covert* dari *JSON to Dart* dari situs [quicktype.io](https://app.quicktype.io/). Berikut adalah kode program `item.dart` setelah diubah:
```dart
// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
    String model;
    int pk;
    Fields fields;

    Item({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int amount;
    String description;
    String cardType;
    int passcode;
    String attribute;
    String types;
    int level;
    int atk;
    int deff;
    String effectType;
    String cardProperty;
    String rulings;
    String image;
    int user;

    Fields({
        required this.name,
        required this.amount,
        required this.description,
        required this.cardType,
        required this.passcode,
        required this.attribute,
        required this.types,
        required this.level,
        required this.atk,
        required this.deff,
        required this.effectType,
        required this.cardProperty,
        required this.rulings,
        required this.image,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
        cardType: json["card_type"],
        passcode: json["passcode"],
        attribute: json["attribute"],
        types: json["types"],
        level: json["level"],
        atk: json["atk"],
        deff: json["deff"],
        effectType: json["effect_type"],
        cardProperty: json["card_property"],
        rulings: json["rulings"],
        image: json["image"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
        "description": description,
        "card_type": cardType,
        "passcode": passcode,
        "attribute": attribute,
        "types": types,
        "level": level,
        "atk": atk,
        "deff": deff,
        "effect_type": effectType,
        "card_property": cardProperty,
        "rulings": rulings,
        "image": image,
        "user": user,
    };
}
  
```
> Karena model `Item` sebelumnya diubah, maka diperlukan perubahan pada kode program `item_detail.dart`, `item_list.dart`, `add_item.dart`, dan `menu.dart` pada `lib/screens` dan `item_card.dart` dan `left_drawer.dart` pada `lib/widgets`. Perubahan akan dilakukan seiring dengan pengerjaan tugas 9.

### Membuat halaman yang berisi daftar semua item yang terdapat pada *endpoint* `JSON` di Django yang telah kamu *deploy*
Sebelum itu, perlu *package* tambahan bernama `http` dengan menjalankan perintah berikut pada terminal:
```console
flutter pub add http
```

Setelah itu, kita juga perlu menambahkan kode pada file `android/app/src/main/AndroidManifest.xml` untuk mengizinkan aplikasi mengakses internet. Kode program `AndroidManifest.xml` setelah kode ditambahkan adalah sebagai berikut:
```xml
<!-- AndroidManifest.xml -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <uses-permission android:name="android.permission.INTERNET"/>
    <application
        ...
    </application>
</manifest>
```

Setelah itu, kita akan membuat halaman yang berisi daftar semua item yang terdapat pada *endpoint* `JSON` di Django yang telah kita *deploy*. Karena sebelumnya halaman berisi daftar item sudah dibuat, kita hanya perlu mengubah kode program `item_list.dart` menjadi seperti berikut:
```dart
// item_list.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:yugioh_card/widgets/item_card.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  Future<List<Item>> fetchItems(BuildContext context) async {
    final request = context.watch<CookieRequest>();
    var url = 'https://pras-yugioh-card.onrender.com/json';
    var response = await request.get(url);

    List<Item> items = [];
    for (var i in response) {
      if (i != null) {
        Item item = Item.fromJson(i);
        items.add(item);
      }
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LeftDrawer(),
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: FutureBuilder(
        future: fetchItems(context),
        builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
          if (snapshot.hasData && snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'You have no cards',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Item>? items = snapshot.data;
            return GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return ItemCard(items[index]);
              },
            );
          }
        },
      ),
    );
  }
}

```

### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item
Karena sebelumnya halaman detail untuk setiap item sudah dibuat, kita hanya perlu mengubah kode program `item_detail.dart` menjadi seperti berikut:
```dart
// item_detail.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Image.network(
                "https://pras-yugioh-card.onrender.com/media/${item.fields.image}",
                width: 300,
                height: 440,
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF00071f),
                  border: Border.all(color: const Color(0xFF1D3E67)),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount: ${item.fields.amount}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "${item.fields.cardType} | ${item.fields.attribute} | ${item.fields.level}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.fields.effectType,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "[${item.fields.types}]",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.fields.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "ATK/ ${item.fields.atk} DEF/ ${item.fields.deff}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      "#${item.fields.passcode}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.fields.cardProperty,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.fields.rulings,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```
Selain itu, kita juga perlu mengubah kode program `item_card.dart` menjadi seperti berikut:
```dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:yugioh_card/screens/item_detail.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ItemDetail(item: item)));
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                "https://pras-yugioh-card.onrender.com/media/${item.fields.image}",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 20,
                child: Text(
                  item.fields.amount.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

### Mengubah kode program `menu.dart`, `left_drawer.dart`, dan `add_item.dart` sesuai dengan perubahan model `Item`
Karena sebelumnya kode program `menu.dart`, `left_drawer.dart`, dan `add_item.dart` telah dibuat, kita hanya perlu mengubah kode program tersebut sesuai dengan perubahan model `Item`. Berikut adalah kode program `menu.dart` setelah diubah:
```dart
// menu.dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/widgets/menu_item.dart';
import 'package:yugioh_card/widgets/menu_card.dart';
import 'package:yugioh_card/screens/add_item.dart';
import 'package:yugioh_card/screens/item_list.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Lihat Item',
      icon: Icons.list_alt_outlined,
      color: const Color(0xFF0D6EFD),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemListPage()),
        );
      },
    ),
    MenuItem(
      title: 'Tambah Item',
      icon: Icons.add_circle_outline,
      color: const Color(0xFF198754),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemFormPage()),
        );
      },
    ),
    MenuItem(
      title: 'Logout',
      icon: Icons.logout,
      color: const Color(0xFFDC3545),
      onTap: (BuildContext context) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(
            content: Text("Kamu telah menekan tombol Logout!"),
            duration: Duration(seconds: 2),
          ));
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yu-Gi-Oh! Card Collection',
        ),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: menuItems.map((item) {
                  return MenuCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```
Berikut adalah kode program `left_drawer.dart` setelah diubah:
```dart
import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:yugioh_card/screens/add_item.dart';
import 'package:yugioh_card/screens/item_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF001427),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                // App Name and Version
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yu-Gi-Oh!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Card Collection',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline),
              title: const Text('Tambah Item'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemFormPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt_outlined),
              title: const Text('Lihat Item'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemListPage()),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

```
Berikut adalah kode program `add_item.dart` setelah diubah:
```dart
// add_item.dart
// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemFormPage extends StatefulWidget {
  const ItemFormPage({Key? key}) : super(key: key);

  @override
  State<ItemFormPage> createState() => _ItemFormPageState();
}

class _ItemFormPageState extends State<ItemFormPage> {
  final _formKey = GlobalKey<FormState>();
  var _name = '';
  var _amount = '';
  var _description = '';
  var _cardType = '';
  var _passcode = '';
  var _attribute = '';
  var _types = '';
  var _level = '';
  var _atk = '';
  var _def = '';
  var _effectType = '';
  var _cardProperty = '';
  var _rulings = '';
  var _image = '';

  Future<bool> postWithImage(BuildContext context, Fields item) async {
    var url = 'https://pras-yugioh-card.onrender.com/create-flutter/';
    var request = http.MultipartRequest('POST', Uri.parse(url));

    final cookieRequest = context.read<CookieRequest>();
    request.headers.addAll(cookieRequest.headers);

    request.fields['name'] = item.name;
    request.fields['amount'] = item.amount.toString();
    request.fields['description'] = item.description;
    request.fields['card_type'] = item.cardType;
    request.fields['passcode'] = item.passcode.toString();
    request.fields['attribute'] = item.attribute;
    request.fields['types'] = item.types;
    request.fields['level'] = item.level.toString();
    request.fields['atk'] = item.atk.toString();
    request.fields['deff'] = item.deff.toString();
    request.fields['effect_type'] = item.effectType;
    request.fields['card_property'] = item.cardProperty;
    request.fields['rulings'] = item.rulings;

    request.files.add(await http.MultipartFile.fromPath('image', item.image));

    var response = await http.Response.fromStream(await request.send());

    return jsonDecode(response.body)['status'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tambah Item',
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Card Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Blue-Eyes White Dragon',
                labelText: 'Card Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _name = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Card Name is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '3',
                labelText: 'Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _amount = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Amount is required';
                }
                if (int.tryParse(value) == null) {
                  return 'Amount must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText:
                    'This legendary dragon is a powerful engine of destruction. Virtually invincible, very few have faced this awesome creature and lived to tell the tale.',
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _description = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Description is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Monster',
                labelText: 'Card Type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Card Type',
              onChanged: (String? value) {
                setState(() {
                  _cardType = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Card Type') {
                  return 'Card Type is required';
                }
                return null;
              },
              items: <String>[
                'Select Card Type',
                'Monster',
                'Spell',
                'Trap',
                'Command',
                'Counter',
                'Skill',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '89631139',
                labelText: 'Passcode',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _passcode = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Passcode is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Light',
                labelText: 'Attribute',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Attribute',
              onChanged: (String? value) {
                setState(() {
                  _attribute = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Attribute') {
                  return 'Attribute is required';
                }
                return null;
              },
              items: <String>[
                'Select Attribute',
                'Dark',
                'Divine',
                'Earth',
                'Fire',
                'Laugh',
                'Light',
                'Water',
                'Wind',
                '?',
                '(No Attribute)',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Dragon / Normal',
                labelText: 'Types',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _types = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Types is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '8',
                labelText: 'Level',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _level = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Level is required';
                }
                if (int.tryParse(value) == null) {
                  return 'Level must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '3000',
                labelText: 'ATK',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _atk = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'ATK is required';
                }
                if (int.tryParse(value) == null) {
                  return 'ATK must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '2500',
                labelText: 'DEF',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _def = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'DEF is required';
                }
                if (int.tryParse(value) == null) {
                  return 'DEF must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Normal',
                labelText: 'Effect Type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _effectType = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Effect Type is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Normal',
                labelText: 'Card Property',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Card Property',
              onChanged: (String? value) {
                setState(() {
                  _cardProperty = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Card Property') {
                  return 'Card Property is required';
                }
                return null;
              },
              items: <String>[
                'Select Card Property',
                'Normal',
                'Continuous',
                'Counter',
                'Equip',
                'Field',
                'Quick-Play',
                'Ritual',
                '(No Property)',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'None',
                labelText: 'Rulings',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _rulings = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Rulings is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 300,
                height: 440,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: _image == ''
                    ? const Center(
                        child: Text('No image selected.'),
                      )
                    : Image.file(
                        File(_image),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 50,
                    maxWidth: 400,
                  );
                  setState(() {
                    _image = image!.path;
                  });
                },
                child: const Text('Select Image'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              // Add padding to the bottom and top of the button
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () async {
                    if (_image.isEmpty) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text("Image is required!"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                    } else if (_formKey.currentState!.validate() &&
                        _image.isNotEmpty) {
                      final item = Fields(
                        name: _name,
                        amount: int.parse(_amount),
                        description: _description,
                        cardType: _cardType,
                        passcode: int.parse(_passcode),
                        attribute: _attribute,
                        types: _types,
                        level: int.parse(_level),
                        atk: int.parse(_atk),
                        deff: int.parse(_def),
                        effectType: _effectType,
                        cardProperty: _cardProperty,
                        rulings: _rulings,
                        image: _image,
                        user: 1,
                      );
                      var response = await postWithImage(context, item);
                      if (response == true) {
                        showFormData(
                            context,
                            Fields(
                              name: _name,
                              amount: int.parse(_amount),
                              description: _description,
                              cardType: _cardType,
                              passcode: int.parse(_passcode),
                              attribute: _attribute,
                              types: _types,
                              level: int.parse(_level),
                              atk: int.parse(_atk),
                              deff: int.parse(_def),
                              effectType: _effectType,
                              cardProperty: _cardProperty,
                              rulings: _rulings,
                              image: _image,
                              user: 1,
                            ));
                        _formKey.currentState!.reset();
                        setState(() {
                          _image = '';
                        });
                      } else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Card Failed to Save!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                      }
                    }
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0, // Increase font size
                    ),
                  ),
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}

void showFormData(BuildContext context, Fields item) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Card Saved Successfully'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Name: ${item.name}'),
              Text('Amount: ${item.amount}'),
              Text('Description: ${item.description}'),
              Text('Card Type: ${item.cardType}'),
              Text('Passcode: ${item.passcode}'),
              Text('Attribute: ${item.attribute}'),
              Text('Types: ${item.types}'),
              Text('Level: ${item.level}'),
              Text('ATK: ${item.atk}'),
              Text('DEF: ${item.deff}'),
              Text('Effect Type: ${item.effectType}'),
              Text('Card Property: ${item.cardProperty}'),
              Text('Rulings: ${item.rulings}'),
              Image.file(
                File(item.image),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

```

### Membuat *logout* pada aplikasi Flutter
Karena sebelumnya kode program `menu.dart` telah dibuat, kita hanya perlu mengubah kode program tersebut pada function `logout` menjadi seperti berikut:
```dart
// menu.dart
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/widgets/menu_item.dart';
import 'package:yugioh_card/widgets/menu_card.dart';
import 'package:yugioh_card/screens/add_item.dart';
import 'package:yugioh_card/screens/item_list.dart';
import 'package:yugioh_card/screens/login.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Lihat Item',
      icon: Icons.list_alt_outlined,
      color: const Color(0xFF0D6EFD),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemListPage()),
        );
      },
    ),
    MenuItem(
      title: 'Tambah Item',
      icon: Icons.add_circle_outline,
      color: const Color(0xFF198754),
      onTap: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemFormPage()),
        );
      },
    ),
    MenuItem(
      title: 'Logout',
      icon: Icons.logout,
      color: const Color(0xFFDC3545),
      onTap: (BuildContext context) async {
        final request = Provider.of<CookieRequest>(context, listen: false);
        final response = await request
            .logout("https://pras-yugioh-card.onrender.com/auth/logout");
        if (response['status']) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(response['message']),
                duration: const Duration(seconds: 2),
              ),
            );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Logout Failed"),
              content: Text(response["message"]),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        }
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yu-Gi-Oh! Card Collection',
        ),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: menuItems.map((item) {
                  return MenuCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

### Membuat *register* pada aplikasi Flutter
Selanjutnya, kita akan membuat *register* pada aplikasi Flutter dengan membuat *file* baru bernama `register.dart` pada folder `lib/screens`. Kode program `register.dart` adalah sebagai berikut:
```dart
// register.dart
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:yugioh_card/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();
  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    final request = Provider.of<CookieRequest>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'),
              radius: 40,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yu-Gi-Oh!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Card Collection',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            TextField(
              controller: _password2Controller,
              obscureText: _obscureText2,
              decoration: InputDecoration(
                labelText: 'Verify Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText2 ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Have an account? Login',
                style: TextStyle(
                  color: Color(0xFF6EA8FE),
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () async {
                final response = await request.post(
                    "https://pras-yugioh-card.onrender.com/auth/register", {
                  "username": _usernameController.text,
                  "password": _passwordController.text,
                  "password2": _password2Controller.text,
                });
                if (response['status']) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(response['message']),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Register Failed"),
                      content: Text(response["message"]),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```
Selanjutnya, kita akan mengubah kode program `login.dart` menjadi seperti berikut:
```dart
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yugioh_card/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:yugioh_card/screens/register.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF0D6EFD),
          scaffoldBackgroundColor: const Color(0xFF001B35),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF001427),
          ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFF001B35),
          ),
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Color(0xFF031633),
            contentTextStyle: TextStyle(color: Color(0xFF6EA8FE)),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final request = Provider.of<CookieRequest>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'),
              radius: 40,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yu-Gi-Oh!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Card Collection',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()),
                );
              },
              child: const Text(
                'Don\'t have an account? Register here!',
                style: TextStyle(
                  color: Color(0xFF6EA8FE),
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                final response = await request
                    .login("https://pras-yugioh-card.onrender.com/auth/login", {
                  "username": username,
                  "password": password,
                });

                if (request.loggedIn) {
                  String message = response["message"];
                  String uname = response["username"];
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text("$message! Welcome $uname!"),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Login Failed"),
                      content: Text(response["message"]),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

### Melakukan *filter* untuk daftar item
Karena pada Django REST Framework telah dibuat *filter* untuk daftar item, maka tidak perlu melakukan perubahan pada kode program Flutter.

### Menjawab pertanyaan-pertanyaan tugas 9
#### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, bisa. Kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu, salah satunya dengan menggunakan `jsonDecode` pada `dart:convert`.

Namun, hal tersebut tidak lebih baik maupun lebih buruk daripada membuat model terlebih dahulu. Karena, jika kita membuat model terlebih dahulu, maka kita bisa melakukan *type checking* pada data yang kita ambil dan ketika data JSON yang diambil memiliki struktur yang kompleks, maka kita bisa mengambil data tersebut dengan lebih mudah.

Pengambilan data JSON tanpa membuat model terlebih dahulu hanya akan memudahkan kita ketika data JSON yang diambil memiliki struktur yang sederhana.

#### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah class yang digunakan untuk melakukan *request* ke server dengan menggunakan *cookie* yang telah disimpan pada *shared preferences*. Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter agar kita dapat mengelola *cookie* secara konsisten ketika pengguna melakukan *login* dan melakukan *request* ke server.

#### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Pertama, kita melakukan *request* ke server dengan menggunakan `get` pada `CookieRequest`. Kemudian, kita melakukan *decode* pada data JSON yang diterima dari server dengan menggunakan `jsonDecode` pada `dart:convert`. Setelah itu, kita melakukan *mapping* data JSON yang telah di-*decode* ke dalam model yang telah kita buat sebelumnya atau memasukkan data JSON tersebut ke dalam `List` atau `Map` sesuai dengan kebutuhan kita. Terakhir, kita menampilkan data tersebut pada aplikasi Flutter.

#### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Pertama, kita mengambil data username dan password yang diinputkan oleh pengguna. Kemudian, kita melakukan *request* ke server dengan menggunakan `login` pada `CookieRequest`. Ketika *request* berhasil, maka kita akan mendapatkan *response* dari server berupa data JSON yang berisi pesan dan username pengguna dan *cookie* akan disimpan pada *shared preferences*. Setelah itu, kita akan menampilkan pesan yang diterima dari server dan menu pada aplikasi Flutter.

#### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
| Widget | Fungsi |
| ------ | ------ |
| `ItemCard` | Menampilkan data item dalam bentuk card. |
| `MenuCard` | Menampilkan menu dalam bentuk card. |
| `LeftDrawer` | Menampilkan drawer berisi menu. |

Dengan demikian, proyek aplikasi flutter telah selesai dibuat.