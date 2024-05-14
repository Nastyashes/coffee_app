import 'package:coffee_app/detail_page/coffee_class.dart';
import 'package:coffee_app/detail_page/coffee_size_button.dart';
import 'package:coffee_app/order_page/order_page.dart';
import 'package:coffee_app/themes/button_theme.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final Coffee coffee;

  const Detail({super.key, required this.coffee});

  @override
  State<Detail> createState() => DetailState();
}

class DetailState extends State<Detail> {
  bool isExpanded = false;
  bool isLiked = false;
  late String selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.coffee.priseM;
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
              color: isLiked ? AppColors.peru : AppColors.darkGray,
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            )
          ],
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                height: 226,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage(widget.coffee.imageAsset),
                        fit: BoxFit.cover)),
              )),
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
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding( 
                  padding: const EdgeInsets.only(left: 25),
                  child:IconButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        iconColor: MaterialStatePropertyAll(AppColors.gold),
                        iconSize: MaterialStatePropertyAll(20)),
                    onPressed: () {},
                    icon: 
                            const ImageIcon(AssetImage('assets/icons/rating.png'))),
                    ), 
                  Text('4.8',
                        style: AppFonts.title3.darkGrey),
              Text(
                '(230)',
                style: AppFonts.body1.darkGrey,
              ),
              const Expanded(
                  child: SizedBox(
                height: 44,
              )),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Image(image: AssetImage('assets/icons/bean.png'))),
              const Padding(
                  padding: EdgeInsets.only(left: 5, right: 30),
                  child: Image(
                    image: AssetImage('assets/icons/milk.png'),
                    alignment: Alignment.centerRight,
                  ))
            ],
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Divider(
                color: AppColors.dividergray,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Description',
                style: AppFonts.title3.darkGrey,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            ]),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Size',
                style: AppFonts.title3.darkGrey,
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CoffeeSizeButton(context,
                  coffee: Coffee(
                      priseS: widget.coffee.priseS,
                      priseM: widget.coffee.priseM,
                      priseL: widget.coffee.priseL,
                      name: '',
                      additive: '',
                      description: '',
                      imageAsset: ''))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(children: [
              Column(children: [
                Text('Price', style: AppFonts.body2.lightGrey2),
                const SizedBox(
                  height: 6,
                ),
                Text(selectedSize, style: AppFonts.title2.peru),
              ]),
              const SizedBox(width: 42),
              Expanded(
                  child: SizedBox(
                      height: 62,
                      child: ElevatedButton(
                        style: headButtonStyle,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  OrderPage(coffee: widget.coffee),
                            ),
                          );
                        },
                        child: const Text('Buy Now'),
                      )))
            ]),
          )
        ]));
  }
}

