import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/presentation/screens/order_page/detail_cart.dart/bloc_coffee_counter/bloc_coffee_counter.dart';
import 'package:coffee_app/src/presentation/screens/order_page/detail_cart.dart/bloc_coffee_counter/event_coffee_counter.dart';
import 'package:coffee_app/src/presentation/screens/order_page/order_page.dart';
import 'package:coffee_app/src/presentation/themes/button_theme.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:coffee_app/src/entities/users/users.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'coffee_size_button.dart';

class Detail extends StatefulWidget {
  final Coffee coffee;
  final Function() onLiked;

  const Detail({super.key, required this.coffee, required this.onLiked});

  @override
  State<Detail> createState() => DetailState();
}

class DetailState extends State<Detail> {
  bool isExpanded = false;
  CoffeeSize selectedSize = CoffeeSize.medium; // Змінено на enum

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void updateSelectedSize(CoffeeSize size) {
    setState(() {
      selectedSize = size;
      widget.coffee.selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Center(
          child: Text(
            'Detail',
            style: AppFonts.title2.darkGrey,
          ),
        ),
        actions: [
          IconButton(
            icon: const ImageIcon(AssetImage('assets/icons/heart.png')),
            color: widget.coffee.isLiked ? AppColors.peru : AppColors.darkGray,
            onPressed: () {
              setState(() {
                widget.coffee.isLiked = !widget.coffee.isLiked;
              });
              widget.onLiked();
            },
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              height: 226,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(widget.coffee.imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              widget.coffee.name,
              style: AppFonts.title1.darkGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Text(
              'with ${widget.coffee.additive}',
              style: AppFonts.body1.lightGrey2,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: IconButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.transparent),
                    iconColor: WidgetStateProperty.all(AppColors.gold),
                    iconSize: WidgetStateProperty.all(20),
                  ),
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage('assets/icons/rating.png')),
                ),
              ),
              Text('4.8', style: AppFonts.title3.darkGrey),
              Text(
                '(230)',
                style: AppFonts.body1.darkGrey,
              ),
              const Expanded(child: SizedBox(height: 44)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Image(image: AssetImage('assets/icons/bean.png')),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, right: 30),
                child: Image(
                  image: AssetImage('assets/icons/milk.png'),
                  alignment: Alignment.centerRight,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Divider(
              color: AppColors.dividergray,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Text(
              'Description',
              style: AppFonts.title3.darkGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: widget.coffee.description,
                    style: AppFonts.body2.lightGrey2,
                    children: [
                      TextSpan(
                        text: isExpanded ? '   Less' : ' Read More',
                        style: AppFonts.title3.peru,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                      ),
                    ],
                  ),
                ),
                if (isExpanded)
                  Text(
                    widget.coffee.description,
                    style: AppFonts.body2.lightGrey2,
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Text(
              'Size',
              style: AppFonts.title3.darkGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CoffeeSizeButton(
              coffee: widget.coffee,
              onSizeSelected: updateSelectedSize,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('Price', style: AppFonts.body2.lightGrey2),
                    const SizedBox(height: 6),
                    Text(widget.coffee.getPrice(selectedSize).toString(),
                        style: AppFonts.title2.peru),
                  ],
                ),
                const SizedBox(width: 42),
                Expanded(
                  child: SizedBox(
                    height: 62,
                    child: ElevatedButton(
                      style: headButtonStyle,
                      onPressed: () {
                        BlocProvider.of<CoffeeCounterBloc>(context)
                            .add(AddCoffeeItem(coffee: widget.coffee));

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderPage(user: user),
                          ),
                        );
                      },
                      child: const Text('Buy Now'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
