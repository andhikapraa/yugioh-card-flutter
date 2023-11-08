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
- [ ] [Tugas 7: Elemen Dasar Flutter](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-7)

# Table of Contents

[**Yu-Gi-Oh! Card Collection Project**](<#Yu-Gi-Oh-Card-Collection-Flutter-Project>)<br />
&emsp;[**Task Checklist**](<#Task-Checklist>)<br />
[**Table of contents**](<#Table-of-contents>)<br />


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
- [ ] Melakukan `add`-`commit`-`push` ke GitHub.
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
![Menu](https://user-images.githubusercontent.com/55692621/137630421-5b8b5b0a-0b0a-4b0a-8b0a-9b0b0b0b0b0b.png)

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
![Menu](https://user-images.githubusercontent.com/55692621/137630421-5b8b5b0a-0b0a-4b0a-8b0a-9b0b0b0b0b0b.png)

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