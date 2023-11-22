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
