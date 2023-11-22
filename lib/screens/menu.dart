// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/menu_item.dart';
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
