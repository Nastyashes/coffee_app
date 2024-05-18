import 'package:coffee_app/home_page/tabbar_coffee/list_item.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/coffees/coffee_parameters.dart';

class Few extends StatelessWidget {
  const Few({super.key});

  @override
  Widget build(BuildContext context) {
    final likedItems = getLikedItems();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Liked Coffee'),
      ),
      body: ListView.builder(
        itemCount: likedItems.length,
        itemBuilder: (context, index) {
          return CoffeeItem(item: likedItems[index]);
        },
      ),
    );
  }
}