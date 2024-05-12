import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

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
    selectedSize = '4,53';
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
          title: const Center(
            child: Text(
              'Detail',
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(47, 45, 44, 1)),
            ),
          ),
          actions: [
            IconButton(
              icon: const ImageIcon(AssetImage('assets/icons/heart.png')),
              color: isLiked
                  ? const Color.fromRGBO(198, 124, 78, 1)
                  : const Color.fromRGBO(47, 45, 44, 1),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            )
          ],
        ),
        body: ListView( scrollDirection: Axis.vertical,
          children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                height: 226,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('assets/image/Cappucino1.png'),
                        fit: BoxFit.cover)),
              )),
          const Padding(
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
          const Padding(
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
                  padding: const EdgeInsets.only(left: 25),
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
              const Text('(230)'),
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
                color: Color.fromRGBO(234, 234, 234, 1),
                thickness: 1,
                indent: 30,
                endIndent: 30,
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Description',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(47, 45, 44, 1)),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text:
                        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
                    style: const TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(155, 155, 155, 1),
                    ),
                    children: [
                      TextSpan(
                        text: isExpanded ? '   Less' : ' Read More',
                        style: const TextStyle(
                            color: Color.fromRGBO(198, 124, 78, 1),
                            fontFamily: 'Sora',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
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
                  const Text(
                    'Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(155, 155, 155, 1),
                    ),
                  ),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Size',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(47, 45, 44, 1)),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedSize = '4,23';
                          });
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(43)),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return selectedSize == '4,23'
                                ? const Color.fromRGBO(255, 245, 238, 1)
                                : const Color.fromRGBO(255, 255, 255, 1);
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return selectedSize == '4,23'
                                ? const Color.fromRGBO(198, 124, 78, 1)
                                : const Color.fromRGBO(47, 45, 44, 1);
                          }),
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                              (states) {
                            return BorderSide(
                              color: selectedSize == '4,23'
                                  ? const Color.fromRGBO(198, 124, 78, 1)
                                  : const Color.fromRGBO(222, 222, 222, 1),
                            );
                          }),
                        ),
                        child: const Text('S'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedSize = '4,53';
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromHeight(43)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,53'
                              ? const Color.fromRGBO(255, 245, 238, 1)
                              : const Color.fromRGBO(255, 255, 255, 1);
                        }),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,53'
                              ? const Color.fromRGBO(198, 124, 78, 1)
                              : const Color.fromRGBO(47, 45, 44, 1);
                        }),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                            (states) {
                          return BorderSide(
                            color: selectedSize == '4,53'
                                ? const Color.fromRGBO(198, 124, 78, 1)
                                : const Color.fromRGBO(222, 222, 222, 1),
                          );
                        }),
                      ),
                      child: const Text('M'),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedSize = '4,73';
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromHeight(43)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,73'
                              ? const Color.fromRGBO(255, 245, 238, 1)
                              : const Color.fromRGBO(255, 255, 255, 1);
                        }),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return selectedSize == '4,73'
                              ? const Color.fromRGBO(198, 124, 78, 1)
                              : const Color.fromRGBO(47, 45, 44, 1);
                        }),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                            (states) {
                          return BorderSide(
                            color: selectedSize == '4,73'
                                ? const Color.fromRGBO(198, 124, 78, 1)
                                : const Color.fromRGBO(222, 222, 222, 1),
                          );
                        }),
                      ),
                      child: const Text('L'),
                    ),
                  )),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  Column(children: [
                    const Text(
                      'Price',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(155, 155, 155, 1)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(selectedSize,
                        style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(198, 124, 78, 1))),
                  ]),
                  const SizedBox(width: 42),
                  Expanded(
                      child: SizedBox(
                          height: 62,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromRGBO(198, 124, 78, 1)),
                              foregroundColor: const MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 255, 255, 1)),
                              textStyle: const MaterialStatePropertyAll(
                                  TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/order');
                            },
                            child: const Text('Buy Now'),
                          )))
                ],
              )),
        ]));
  }
}
