import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  String name;
  int amount;
  String description;
  String cardType;
  int passcode;
  String attribute;
  String types;
  int level;
  int atk;
  int deff;
  String effectType;
  String cardProperty;
  String rulings;
  String image;
  int user;

  Fields({
    required this.name,
    required this.amount,
    required this.description,
    required this.cardType,
    required this.passcode,
    required this.attribute,
    required this.types,
    required this.level,
    required this.atk,
    required this.deff,
    required this.effectType,
    required this.cardProperty,
    required this.rulings,
    required this.image,
    required this.user,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
        cardType: json["card_type"],
        passcode: json["passcode"],
        attribute: json["attribute"],
        types: json["types"],
        level: json["level"],
        atk: json["atk"],
        deff: json["deff"],
        effectType: json["effect_type"],
        cardProperty: json["card_property"],
        rulings: json["rulings"],
        image: json["image"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
        "description": description,
        "card_type": cardType,
        "passcode": passcode,
        "attribute": attribute,
        "types": types,
        "level": level,
        "atk": atk,
        "deff": deff,
        "effect_type": effectType,
        "card_property": cardProperty,
        "rulings": rulings,
        "image": image,
        "user": user,
      };
}
