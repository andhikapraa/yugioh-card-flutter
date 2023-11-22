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
