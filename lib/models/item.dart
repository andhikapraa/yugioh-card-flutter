class Item {
  String name;
  int amount;
  String description;
  String cardType;
  int passcode;
  String attribute;
  String types;
  int level;
  int atk;
  int def;
  String effectType;
  String cardProperty;
  String rulings;
  String imagePath;

  Item({
    required this.name,
    required this.amount,
    required this.description,
    required this.cardType,
    required this.passcode,
    required this.attribute,
    required this.types,
    required this.level,
    required this.atk,
    required this.def,
    required this.effectType,
    required this.cardProperty,
    required this.rulings,
    required this.imagePath,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'],
      amount: json['amount'],
      description: json['description'],
      cardType: json['card_type'],
      passcode: json['passcode'],
      attribute: json['attribute'],
      types: json['types'],
      level: json['level'],
      atk: json['atk'],
      def: json['deff'],
      effectType: json['effect_type'],
      cardProperty: json['card_property'],
      rulings: json['rulings'],
      imagePath: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'amount': amount,
        'description': description,
        'card_type': cardType,
        'passcode': passcode,
        'attribute': attribute,
        'types': types,
        'level': level,
        'atk': atk,
        'deff': def,
        'effect_type': effectType,
        'card_property': cardProperty,
        'rulings': rulings,
        'image': imagePath,
      };
}

// Temporary Data for Testing Purposes Only (Will be replaced with API)
List<Item> items = [
  Item(
    name: 'Blue-Eyes White Dragon',
    amount: 3,
    description:
        'This legendary dragon is a powerful engine of destruction. Virtually invincible, very few have faced this awesome creature and lived to tell the tale.',
    cardType: 'Monster',
    passcode: 89631139,
    attribute: 'Light',
    types: 'Dragon / Normal',
    level: 8,
    atk: 3000,
    def: 2500,
    effectType: 'Normal',
    cardProperty: 'Normal',
    rulings:
        'This card is treated as a Normal Monster while face-up on the field or in the Graveyard. While this card is a Normal Monster on the field, you can Normal Summon it to have it become an Effect Monster with this effect:\n● Once per turn: You can target 1 monster your opponent controls; destroy that target.',
    imagePath: 'assets/images/dummy/BlueEyesWhiteDragon.webp',
  ),
  Item(
    name: 'Dark Magician',
    amount: 2,
    description: 'The ultimate wizard in terms of attack and defense.',
    cardType: 'Monster',
    passcode: 46986414,
    attribute: 'Dark',
    types: 'Spellcaster / Normal',
    level: 7,
    atk: 2500,
    def: 2100,
    effectType: 'Normal',
    cardProperty: 'Normal',
    rulings:
        'This card is treated as a Normal Monster while face-up on the field or in the Graveyard. While this card is a Normal Monster on the field, you can Normal Summon it to have it become an Effect Monster with this effect:\n● Once per turn: You can Special Summon 1 "Dark Magician" from your hand, Deck, or Graveyard.',
    imagePath: 'assets/images/dummy/DarkMagician.webp',
  ),
  Item(
    name: 'Raigeki',
    amount: 1,
    description:
        'Destroy all monsters your opponent controls.\n\nYou can only activate 1 "Raigeki" per turn.',
    cardType: 'Spell',
    passcode: 12580477,
    attribute: '',
    types: 'Normal',
    level: 0,
    atk: 0,
    def: 0,
    effectType: 'Effect',
    cardProperty: 'Normal',
    rulings:
        'This card can be activated during the Damage Step.\nThis card can be activated during the Damage Step to destroy a monster that was Special Summoned by the effect of "Cyber Jar".\nThis card can be activated during the Damage Step to destroy a monster that was Special Summoned by the effect of "Cyber Jar".\nThis card can be activated during the Damage Step to destroy a monster that was Special Summoned by the effect of "Cyber Jar".',
    imagePath: 'assets/images/dummy/Raigeki.webp',
  ),
  Item(
    name: 'Solemn Judgment',
    amount: 1,
    description:
        'When a monster would be Summoned, OR a Spell/Trap Card is activated: Pay half your LP; negate the Summon or activation, and if you do, destroy that card.',
    cardType: 'Trap',
    passcode: 41420027,
    attribute: '',
    types: 'Counter',
    level: 0,
    atk: 0,
    def: 0,
    effectType: 'Activation requirement Cost Effect',
    cardProperty: 'Counter',
    rulings:
        'This card can be activated during the Damage Step.\nThis card can be activated during the Damage Step to negate the activation of a Spell/Trap Card that would inflict damage, such as "Final Flame".\nThis card can be activated during the Damage Step to negate the activation of a Spell/Trap Card that would inflict damage, such as "Final Flame".\nThis card can be activated during the Damage Step to negate the activation of a Spell/Trap Card that would inflict damage, such as "Final Flame".',
    imagePath: 'assets/images/dummy/SolemnJudgment.webp',
  ),
];
