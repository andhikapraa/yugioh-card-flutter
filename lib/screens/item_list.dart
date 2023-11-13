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
