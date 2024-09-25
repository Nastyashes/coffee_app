class Coffee {
  final String name;
  final String additive;
  final double priseS;
  final double priseM;
  final double priseL;
  final String description;
  final String imageAsset;
  bool isLiked;
  CoffeeSize selectedSize;

  Coffee({
    required this.name,
    required this.additive,
    required this.priseS,
    required this.priseM,
    required this.priseL,
    required this.description,
    required this.imageAsset,
    this.isLiked = false,
    this.selectedSize = CoffeeSize.small,
  });

  Coffee copyWith({
    String? name,
    String? additive,
    double? priseS,
    double? priseM,
    double? priseL,
    String? description,
    String? imageAsset,
    bool? isLiked,
    CoffeeSize? selectedSize,
  }) {
    return Coffee(
      name: name ?? this.name,
      additive: additive ?? this.additive,
      priseS: priseS ?? this.priseS,
      priseM: priseM ?? this.priseM,
      priseL: priseL ?? this.priseL,
      description: description ?? this.description,
      imageAsset: imageAsset ?? this.imageAsset,
      isLiked: isLiked ?? this.isLiked,
      selectedSize: selectedSize ?? this.selectedSize,
    );
  }

  double getPrice(CoffeeSize selectedSize) {
    switch (selectedSize) {
      case CoffeeSize.small:
        return priseS;
      case CoffeeSize.medium:
        return priseM;
      case CoffeeSize.large:
        return priseL;
      default:
        return priseM; // За замовчуванням
    }
  }
}

enum CoffeeType {
  cappuccino,
  machiato,
  latte,
  americano,
  espresso,
}

enum CoffeeSize {
  small,
  medium,
  large,
}

List<Coffee> items = [
  Coffee(
      name: 'Cappucino',
      additive: 'Chocolate',
      priseS: 4.23,
      priseM: 4.53,
      priseL: 4.73,
      description:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
      imageAsset: 'assets/image/cappucino_chocolate.png',
      isLiked: false),
  Coffee(
    name: 'Cappucino',
    additive: 'Oat Milk',
    priseS: 3.70,
    priseM: 3.90,
    priseL: 4.00,
    description:
        ' Experience the smooth taste of cappuccino enhanced with oat milk. This drink combines a creamy texture with a light, sweet hint of oat milk, perfect for those seeking something special and new in their coffee cup.',
    imageAsset: 'assets/image/cappucino_oat_milk.png',
    isLiked: true,
  ),
  Coffee(
      name: 'Cappucino',
      additive: 'Caramel',
      priseS: 3.24,
      priseM: 3.64,
      priseL: 3.84,
      description:
          'Treat yourself to a sweet delight with cappuccino infused with caramel. The caramel adds a pleasant sweetness and aroma, making each sip uniquely enjoyable.',
      imageAsset: 'assets/image/cappucino_caramel.png',
      isLiked: false),
  Coffee(
      name: 'Cappucino',
      additive: 'Cream',
      priseS: 4.05,
      priseM: 4.25,
      priseL: 4.45,
      description:
          'Enjoy a classic cappuccino with a rich, creamy twist. This drink features a robust flavor with a thick, velvety cream texture, making it ideal for any time of the day.',
      imageAsset: 'assets/image/cappucino_cream.png',
      isLiked: false),
  Coffee(
      name: 'Machiato',
      additive: 'Caramel',
      priseS: 3.80,
      priseM: 4.10,
      priseL: 4.30,
      description:
          'A macchiato is an espresso coffee drink with a small amount of milk, usually foamed. Caramel Macchiato combines espresso with vanilla syrup, steamed milk, milk foam, and caramel drizzle.',
      imageAsset: 'assets/image/macchiato_caramel.png',
      isLiked: false),
  Coffee(
      name: 'Latte',
      additive: 'Caramel',
      priseS: 3.95,
      priseM: 4.25,
      priseL: 4.45,
      description:
          'Latte is a coffee drink made with espresso and steamed milk. Caramel Latte features espresso with vanilla syrup, steamed milk, and caramel drizzle.',
      imageAsset: 'assets/image/latte_caramel.png',
      isLiked: true),
  Coffee(
      name: 'Espresso',
      additive: 'None',
      priseS: 2.50,
      priseM: 2.80,
      priseL: 3.00,
      description:
          'Espresso is a concentrated form of coffee made by forcing hot water under pressure through finely-ground coffee beans.',
      imageAsset: 'assets/image/espresso_none.png',
      isLiked: false),
  Coffee(
      name: 'Americano',
      additive: 'Caramel',
      priseS: 4.00,
      priseM: 4.30,
      priseL: 4.50,
      description:
          'Add a hint of caramel to your Americano, giving it a sweet twist.',
      imageAsset: 'assets/image/americano_caramel.png',
      isLiked: false),
  Coffee(
    name: 'Americano',
    additive: 'Vanilla',
    priseS: 3.70,
    priseM: 4.00,
    priseL: 4.20,
    description:
        'Enhance your Americano with a dash of vanilla, for a fragrant and sweet aroma.',
    imageAsset: 'assets/image/americano_vanilla.png',
    isLiked: false,
  ),
];

List<Coffee> getItemsByType(CoffeeType type) {
  switch (type) {
    case CoffeeType.cappuccino:
      return items.where((coffee) => coffee.name == 'Cappucino').toList();
    case CoffeeType.machiato:
      return items.where((coffee) => coffee.name == 'Machiato').toList();
    case CoffeeType.latte:
      return items.where((coffee) => coffee.name == 'Latte').toList();
    case CoffeeType.americano:
      return items.where((coffee) => coffee.name == 'Americano').toList();
    case CoffeeType.espresso:
      return items.where((coffee) => coffee.name == 'Espresso').toList();
    default:
      return [];
  }
}

List<Coffee> getLikedItems() {
  return items.where((coffee) => coffee.isLiked).toList();
}

double calculateTotalPrice(Map<Coffee, int> coffeeCounts) {
  double total = 0;

  coffeeCounts.forEach((coffee, count) {
    double price;
    switch (coffee.selectedSize) {
      case CoffeeSize.small:
        price = coffee.priseS;
        break;
      case CoffeeSize.medium:
        price = coffee.priseM;
        break;
      case CoffeeSize.large:
        price = coffee.priseL;
        break;
    }

    total += price * count;
  });

  return total;
}
