class Coffee {
  final String name;
  final String additive;
  final String priseS;
  final String priseM;
  final String priseL;
  final String description;
  final String imageAsset;
  Coffee(
      {required this.name,
      required this.additive,
      required this.priseS,
      required this.priseM,
      required this.priseL,
      required this.description,
      required this.imageAsset});
}

enum CoffeeType {
  cappuccino,
  machiato,
  latte,
  americano,
  espresso,
}

List<Coffee> items = [
  Coffee(
      name: 'Cappuccino',
      additive: 'With Chocolate',
      priseS: '4,23',
      priseM: '4,53',
      priseL: '4,73',
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/Cappucino1.png'),
  Coffee(
      name: 'Cappuccino',
      additive: 'With Chocolate',
      priseS: '4,23',
      priseM: '4,53',
      priseL: '4,73',
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/Cappucino1.png'),
  Coffee(
      name: 'Cappuccino',
      additive: 'With Chocolate',
      priseS: '4,23',
      priseM: '4,53',
      priseL: '4,73',
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/Cappucino1.png'),
  Coffee(
      name: 'Cappuccino',
      additive: 'With Chocolate',
      priseS: '4,23',
      priseM: '4,53',
      priseL: '4,73',
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/Cappucino1.png'),
  Coffee(
      name: 'Cappuccino',
      additive: 'With Chocolate',
      priseS: '4,23',
      priseM: '4,53',
      priseL: '4,73',
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/Cappucino1.png')
];

List<Coffee> getItemsByType(CoffeeType type) {
  switch (type) {
    case CoffeeType.cappuccino:
      return items;
    default:
      return [];
  }
}
