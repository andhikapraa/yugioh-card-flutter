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
- [ ] [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-8)

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
- [ ] Menjawab beberapa pertanyaan berikut pada `README.md` pada *root folder* (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    - [ ] Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    - [ ] Jelaskan masing-masing *layout* widget pada Flutter dan konteks penggunaannya masing-masing!
    - [ ] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    - [ ] Bagaimana penerapan *clean architecture* pada aplikasi Flutter?
    - [ ] Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial)
- [ ] Melakukan `add`-`commit`-`push` ke GitHub.
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
                Navigator.push(
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
