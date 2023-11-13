import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/item.dart';

class ItemFormPage extends StatefulWidget {
  const ItemFormPage({Key? key}) : super(key: key);

  @override
  State<ItemFormPage> createState() => _ItemFormPageState();
}

class _ItemFormPageState extends State<ItemFormPage> {
  final _formKey = GlobalKey<FormState>();
  var item = Item(
    name: '',
    amount: 0,
    description: '',
    cardType: '',
    passcode: 0,
    attribute: '',
    types: '',
    level: 0,
    atk: 0,
    def: 0,
    effectType: '',
    cardProperty: '',
    rulings: '',
    imagePath: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tambah Item',
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Card Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Blue-Eyes White Dragon',
                labelText: 'Card Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.name = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Card Name is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '3',
                labelText: 'Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.amount = int.parse(value!);
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Amount is required';
                }
                if (int.tryParse(value) == null) {
                  return 'Amount must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText:
                    'This legendary dragon is a powerful engine of destruction. Virtually invincible, very few have faced this awesome creature and lived to tell the tale.',
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.description = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Description is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Monster',
                labelText: 'Card Type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Card Type',
              onChanged: (String? value) {
                setState(() {
                  item.cardType = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Card Type') {
                  return 'Card Type is required';
                }
                return null;
              },
              items: <String>[
                'Select Card Type',
                'Monster',
                'Spell',
                'Trap',
                'Command',
                'Counter',
                'Skill',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '89631139',
                labelText: 'Passcode',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.passcode = int.parse(value!);
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Passcode is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Light',
                labelText: 'Attribute',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Attribute',
              onChanged: (String? value) {
                setState(() {
                  item.attribute = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Attribute') {
                  return 'Attribute is required';
                }
                return null;
              },
              items: <String>[
                'Select Attribute',
                'Dark',
                'Divine',
                'Earth',
                'Fire',
                'Laugh',
                'Light',
                'Water',
                'Wind',
                '?',
                '(No Attribute)',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Dragon / Normal',
                labelText: 'Types',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.types = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Types is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '8',
                labelText: 'Level',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.level = int.parse(value!);
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Level is required';
                }
                if (int.tryParse(value) == null) {
                  return 'Level must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '3000',
                labelText: 'ATK',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.atk = int.parse(value!);
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'ATK is required';
                }
                if (int.tryParse(value) == null) {
                  return 'ATK must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '2500',
                labelText: 'DEF',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.def = int.parse(value!);
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'DEF is required';
                }
                if (int.tryParse(value) == null) {
                  return 'DEF must be a number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Normal',
                labelText: 'Effect Type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.effectType = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Effect Type is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Normal',
                labelText: 'Card Property',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              value: 'Select Card Property',
              onChanged: (String? value) {
                setState(() {
                  item.cardProperty = value!;
                });
              },
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    value == 'Select Card Property') {
                  return 'Card Property is required';
                }
                return null;
              },
              items: <String>[
                'Select Card Property',
                'Normal',
                'Continuous',
                'Counter',
                'Equip',
                'Field',
                'Quick-Play',
                'Ritual',
                '(No Property)',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(
                        fontSize: 20.0,
                      )),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'None',
                labelText: 'Rulings',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  item.rulings = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Rulings is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 300,
                height: 440,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: item.imagePath == ''
                    ? const Center(
                        child: Text('No image selected.'),
                      )
                    : Image.file(
                        File(item.imagePath),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 50,
                    maxWidth: 400,
                  );
                  setState(() {
                    item.imagePath = image!.path;
                  });
                },
                child: const Text('Select Image'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              // Add padding to the bottom and top of the button
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showFormData(context, item);
                      items.add(item);
                      setState(() {
                        item = Item(
                          name: '',
                          amount: 0,
                          description: '',
                          cardType: '',
                          passcode: 0,
                          attribute: '',
                          types: '',
                          level: 0,
                          atk: 0,
                          def: 0,
                          effectType: '',
                          cardProperty: '',
                          rulings: '',
                          imagePath: '',
                        );
                      });
                      _formKey.currentState!.reset();
                    }
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0, // Increase font size
                    ),
                  ),
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}

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
              // Show the image
              item.imagePath == ''
                  ? const Center(
                      child: Text('No image selected.'),
                    )
                  : Image.file(
                      File(item.imagePath),
                      fit: BoxFit.cover,
                    ),
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
