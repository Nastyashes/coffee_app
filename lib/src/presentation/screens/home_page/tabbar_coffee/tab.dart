import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:flutter/material.dart';
import 'list_item.dart';

class CoffeeTab extends StatelessWidget {
  const CoffeeTab({super.key, required this.type});

  final CoffeeType type;

  @override
  Widget build(BuildContext context) {
    final list = getItemsByType(type);
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 149 / 239,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: list.map((e) => CoffeeItem(item: e)).toList(),
    );
  }
}
