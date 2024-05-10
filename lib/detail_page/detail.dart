import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => DetailState();
}

class DetailState extends State<Detail> {
  late String selectedSize;
  @override
  void initState() {
    super.initState();
    selectedSize = '4,53';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          title: Center(child:  Text('Detail', style: TextStyle(fontFamily: 'Sora', fontSize: 18,
           fontWeight: FontWeight.w600, color: Color.fromRGBO(47, 45, 44, 1)),),),
          actions: [IconButton(onPressed: (){}, icon: ImageIcon(AssetImage('assets/icons/heart.png')))],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                height: 226,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage('assets/image/Cappucino1.png'),
                        fit: BoxFit.cover)),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Cappucino',
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(47, 45, 44, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Text(
              'with Chocolate',
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(155, 155, 155, 1)),
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: TextButton.icon(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                          textStyle: MaterialStatePropertyAll(TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                          iconColor: MaterialStatePropertyAll(
                              Color.fromRGBO(251, 190, 33, 1)),
                          iconSize: MaterialStatePropertyAll(20)),
                      onPressed: () {},
                      icon: const Icon(Icons.star),
                      label: const Text('4.8',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 45, 44, 1),
                          )))),
              Text('(230)'),
              Expanded(
                  child: SizedBox(
                height: 44,
              )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Image(image: AssetImage('assets/icons/bean.png'))),
              Padding(
                  padding: EdgeInsets.only(left: 5, right: 30),
                  child: Image(
                    image: AssetImage('assets/icons/milk.png'),
                    alignment: Alignment.centerRight,
                  ))
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Divider(
                color: Color.fromRGBO(234, 234, 234, 1),
                thickness: 1,
                indent: 30,
                endIndent: 30,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: const Text(
                'Description',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(47, 45, 44, 1)),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(155, 155, 155, 1)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Size',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(47, 45, 44, 1)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedSize = '4,23';
                          });
                        },
                        child: Text('S'),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          fixedSize:
                              MaterialStateProperty.all(Size.fromHeight(43)),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return selectedSize == '4,23'
                                ? Color.fromRGBO(255, 245, 238, 1)
                                : Color.fromRGBO(255, 255, 255, 1);
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return selectedSize == '4,23'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(47, 45, 44, 1);
                          }),
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                              (states) {
                            return BorderSide(
                              color: selectedSize == '4,23'
                                  ? Color.fromRGBO(198, 124, 78, 1)
                                  : Color.fromRGBO(222, 222, 222, 1),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedSize = '4,53';
                        });
                      },
                      child: Text('M'),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        fixedSize:
                            MaterialStateProperty.all(Size.fromHeight(43)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,53'
                              ? Color.fromRGBO(255, 245, 238, 1)
                              : Color.fromRGBO(255, 255, 255, 1);
                        }),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,53'
                              ? Color.fromRGBO(198, 124, 78, 1)
                              : Color.fromRGBO(47, 45, 44, 1);
                        }),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                            (states) {
                          return BorderSide(
                            color: selectedSize == '4,53'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(222, 222, 222, 1),
                          );
                        }),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedSize = '4,73';
                        });
                      },
                      child: Text('L'),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        fixedSize:
                            MaterialStateProperty.all(Size.fromHeight(43)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,73'
                              ? Color.fromRGBO(255, 245, 238, 1)
                              : Color.fromRGBO(255, 255, 255, 1);
                        }),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,73'
                              ? Color.fromRGBO(198, 124, 78, 1)
                              : Color.fromRGBO(47, 45, 44, 1);
                        }),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                            (states) {
                          return BorderSide(
                            color: selectedSize == '4,73'
                                ? Color.fromRGBO(198, 124, 78, 1)
                                : Color.fromRGBO(222, 222, 222, 1),
                          );
                        }),
                      ),
                    ),
                  )),
                ],
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      'Price',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(155, 155, 155, 1)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text('$selectedSize',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(198, 124, 78, 1))),
                  ]),
                  SizedBox(width: 42),
                  Expanded(
                      child: Container(
                          height: 62,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(198, 124, 78, 1)),
                              foregroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 255, 255, 1)),
                              textStyle: MaterialStatePropertyAll(TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                            ),
                            onPressed: () {Navigator.pushNamed(context, '/order');},
                            child: Text('Buy Now'),
                          )))
                ],
              )),
        ]));
  }
}
