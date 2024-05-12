import 'package:coffee_app/order_page/counter_coffee.dart';
import 'package:coffee_app/order_page/detail_cart.dart/cappucino_chokolade.dart';
import 'package:flutter/material.dart';

class Deliver extends StatelessWidget {
  const Deliver({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text('Delivery Address',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(47, 45, 44, 1)))),
              const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('Jl. Kpg Sutoyo',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(48, 51, 54, 1)))),
              const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(128, 128, 128, 1)))),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage('assets/icons/edit.png'),
                        color: Color.fromRGBO(48, 51, 54, 1)),
                    label: const Text(
                      'Edit Address',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(48, 51, 54, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/icons/note.png'),
                        color: Color.fromRGBO(48, 51, 54, 1),
                      ),
                      label: const Text(
                        'Add Note',
                        style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(48, 51, 54, 1)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Color.fromRGBO(234, 234, 234, 1),
              thickness: 1,
              indent: 30,
              endIndent: 30,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Row(
            children: [
              const CappuccinoChocolateCard(),
              Expanded(
                  child: Container(
                width: double.infinity,
              )),
              const CoffeeCount(),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Color.fromRGBO(244, 244, 244, 1),
              thickness: 4,
              indent: 0,
              endIndent: 0,
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )),
                  side: const MaterialStatePropertyAll(
                      BorderSide(color: Color.fromRGBO(234, 234, 234, 1)))),
              child: SizedBox(
                height: 56,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageIcon(
                        AssetImage('assets/icons/discount.png'),
                        size: 24,
                        color: Color.fromRGBO(198, 124, 78, 1),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('1 Discount is applied',
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(47, 45, 44, 1)))),
                      Expanded(
                          child: Container(
                        width: 20,
                      )),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(47, 45, 44, 1),
                        size: 20,
                      )
                    ]),
              ),
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Payment Summary', 
              style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(47, 45, 44, 1)))],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Price',
            style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(47, 45, 44, 1))),
             Text('\$4.53',
             style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(47, 45, 44, 1)))],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Delivery Fee',
            style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(47, 45, 44, 1))),
                                   Text('\$2.0 \$1.0',
                                   style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(47, 45, 44, 1)))],
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Divider(
              color: Color.fromRGBO(234, 234, 234, 1),
              thickness: 1,
              indent: 30,
              endIndent: 30,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Total Payment',
            style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(47, 45, 44, 1))),
                                   Text('\$5.53',
                                   style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(47, 45, 44, 1)))],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
               Padding(
            padding: const EdgeInsets.symmetric( vertical: 12), child:  Row(
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/moneys.png'),
                    size: 24,
                    color: Color.fromRGBO(198, 124, 78, 1),
                  ),
                 Padding(padding:  const EdgeInsets.symmetric(horizontal: 12),child:  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromRGBO(198, 124, 78, 1),),
                   
                    height: 24, width: 54, alignment: Alignment.center,
                    child: const Text(
                      'Cash',
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),),),
                   Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromRGBO(246, 246, 246, 1),),
                   
                    height: 24,  alignment: Alignment.center,
                    child: const Text('\$5.53', style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(47, 45, 44, 1)),
                    ),), 
                    Expanded(child: Container(width: 24,)),
                    IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('assets/icons/vector.png'), size: 24,))
                ],
              )),
             Row(children: [ Expanded(
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
                              textStyle: const MaterialStatePropertyAll(TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                            ),
                            onPressed: () {Navigator.pushNamed(context, '/delivery');},
                            child: const Text('Order'),)))])
            ]))
      ],
    );
  }
}
