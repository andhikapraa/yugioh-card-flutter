// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_card/widgets/left_drawer.dart';
import 'package:yugioh_card/models/item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemFormPage extends StatefulWidget {
  const ItemFormPage({Key? key}) : super(key: key);

  @override
  State<ItemFormPage> createState() => _ItemFormPageState();
}

class _ItemFormPageState extends State<ItemFormPage> {
  final _formKey = GlobalKey<FormState>();
  var _name = '';
  var _amount = '';
  var _description = '';
  var _cardType = '';
  var _passcode = '';
  var _attribute = '';
  var _types = '';
  var _level = '';
  var _atk = '';
  var _def = '';
  var _effectType = '';
  var _cardProperty = '';
  var _rulings = '';
  var _image = '';

  Future<bool> postWithImage(BuildContext context, Fields item) async {
    var url = 'https://pras-yugioh-card.onrender.com/create-flutter/';
    var request = http.MultipartRequest('POST', Uri.parse(url));

    final cookieRequest = context.read<CookieRequest>();
    request.headers.addAll(cookieRequest.headers);

    request.fields['name'] = item.name;
    request.fields['amount'] = item.amount.toString();
    request.fields['description'] = item.description;
    request.fields['card_type'] = item.cardType;
    request.fields['passcode'] = item.passcode.toString();
    request.fields['attribute'] = item.attribute;
    request.fields['types'] = item.types;
    request.fields['level'] = item.level.toString();
    request.fields['atk'] = item.atk.toString();
    request.fields['deff'] = item.deff.toString();
    request.fields['effect_type'] = item.effectType;
    request.fields['card_property'] = item.cardProperty;
    request.fields['rulings'] = item.rulings;

    request.files.add(await http.MultipartFile.fromPath('image', item.image));

    var response = await http.Response.fromStream(await request.send());

    return jsonDecode(response.body)['status'];
  }

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
                  _name = value!;
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
                  _amount = value!;
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
                  _description = value!;
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
                  _cardType = value!;
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
                  _passcode = value!;
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
                  _attribute = value!;
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
                  _types = value!;
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
                  _level = value!;
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
                  _atk = value!;
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
                  _def = value!;
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
                  _effectType = value!;
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
                  _cardProperty = value!;
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
                  _rulings = value!;
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
                child: _image == ''
                    ? const Center(
                        child: Text('No image selected.'),
                      )
                    : Image.file(
                        File(_image),
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
                    _image = image!.path;
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
                  onPressed: () async {
                    if (_image.isEmpty) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text("Image is required!"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                    } else if (_formKey.currentState!.validate() &&
                        _image.isNotEmpty) {
                      final item = Fields(
                        name: _name,
                        amount: int.parse(_amount),
                        description: _description,
                        cardType: _cardType,
                        passcode: int.parse(_passcode),
                        attribute: _attribute,
                        types: _types,
                        level: int.parse(_level),
                        atk: int.parse(_atk),
                        deff: int.parse(_def),
                        effectType: _effectType,
                        cardProperty: _cardProperty,
                        rulings: _rulings,
                        image: _image,
                        user: 1,
                      );
                      var response = await postWithImage(context, item);
                      if (response == true) {
                        showFormData(
                            context,
                            Fields(
                              name: _name,
                              amount: int.parse(_amount),
                              description: _description,
                              cardType: _cardType,
                              passcode: int.parse(_passcode),
                              attribute: _attribute,
                              types: _types,
                              level: int.parse(_level),
                              atk: int.parse(_atk),
                              deff: int.parse(_def),
                              effectType: _effectType,
                              cardProperty: _cardProperty,
                              rulings: _rulings,
                              image: _image,
                              user: 1,
                            ));
                        _formKey.currentState!.reset();
                        setState(() {
                          _image = '';
                        });
                      } else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Card Failed to Save!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                      }
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

void showFormData(BuildContext context, Fields item) {
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
              Text('DEF: ${item.deff}'),
              Text('Effect Type: ${item.effectType}'),
              Text('Card Property: ${item.cardProperty}'),
              Text('Rulings: ${item.rulings}'),
              Image.file(
                File(item.image),
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
