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
