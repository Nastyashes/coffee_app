import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => DeliveryState();
}

class DeliveryState extends State<Delivery> {
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
        title: const Padding(
            padding: EdgeInsets.only(right: 40),
            child: Center(
              child: Text('Delivery',
                  style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(47, 45, 44, 1))),
            )),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Maps.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter)),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  children: [
                    const ImageIcon(
                      AssetImage('assets/icons/indicator.png'),
                      color: Color.fromRGBO(234, 234, 234, 1),
                      size: 44,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(),
                        child: Text('10 minutes left',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(48, 51, 54, 1)))),
                    const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('Delivery to ',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(128, 128, 128, 1))),
                      Text('Jl. Kpg Sutoyo',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(48, 51, 54, 1))),
                    ]),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 16),
                        child: Divider(
                          color: Color.fromRGBO(234, 234, 234, 1),
                          thickness: 4,
                          indent: 30,
                          endIndent: 30,
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: const Color.fromRGBO(234, 234, 234, 1))),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color:
                                            const Color.fromRGBO(222, 222, 222, 1))),
                                child: const ImageIcon(
                                    AssetImage('assets/icons/bike.png'),
                                    color: Color.fromRGBO(198, 124, 78, 1),
                                    size: 32),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Delivered your order',
                                          style: TextStyle(
                                              fontFamily: 'Sora',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  48, 51, 54, 1))),
                                      SizedBox(height: 6),
                                      Text(
                                          'We deliver your goods to you in  \nthe shortes possible time.',
                                          style: TextStyle(
                                              fontFamily: 'Sora',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  128, 128, 128, 1)))
                                    ]),
                              )
                            ],
                          ),
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/image/Driver.png'),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(14)),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Johan Hawn',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(48, 51, 54, 1))),
                                    Text('Personal Courier',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                128, 128, 128, 1)))
                                  ],
                                )),
                            Expanded(child: Container(height: 54)),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                      color: const Color.fromRGBO(222, 222, 222, 1))),
                              child: const ImageIcon(
                                AssetImage('assets/icons/call.png'),
                                size: 54,
                                color: Color.fromRGBO(128, 128, 128, 1),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
