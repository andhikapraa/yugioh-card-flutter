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