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
