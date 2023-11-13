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
