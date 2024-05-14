import 'package:coffee_app/detail_page/coffee_class.dart';
import 'package:coffee_app/order_page/detail_cart.dart/coffee_mini_card.dart';
import 'package:coffee_app/order_page/detail_cart.dart/counter_coffee.dart';
import 'package:coffee_app/themes/button_theme.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';

class Deliver extends StatelessWidget {
  final Coffee coffee;
  const Deliver({super.key, required this.coffee});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text('Delivery Address',
                      style: AppFonts.title3.darkGrey)),
              Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child:
                      Text('Jl. Kpg Sutoyo', style: AppFonts.title4.darkGrey)),
              Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                      style: AppFonts.body1)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton.icon(
                    style: const ButtonStyle(
                        side: MaterialStatePropertyAll(
                            BorderSide(color: AppColors.bordergray))),
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage('assets/icons/edit.png'),
                        color: AppColors.editbutton),
                    label: Text(
                      'Edit Address',
                      style: AppFonts.body1.editbutton),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: OutlinedButton.icon(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: AppColors.bordergray))),
                      onPressed: () {},
                      icon: const ImageIcon(AssetImage('assets/icons/note.png'),
                          color: AppColors.editbutton),
                      label: Text(
                        'Add Note',
                        style: AppFonts.body1.editbutton,),),
                  )
                ]),
            ]),),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color:AppColors.dividerlight,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Row(
            children: [
              CappuccinoCard(
                coffee: coffee,
              ),
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
              color: AppColors.dividerlight,
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
                      BorderSide(color: AppColors.borderlight))),
              child: SizedBox(
                height: 56,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageIcon(
                        AssetImage('assets/icons/discount.png'),
                        size: 24,
                        color: AppColors.peru,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text('1 Discount is applied',
                              style: AppFonts.title4.darkGrey)),
                      Expanded(
                          child: Container(
                        width: 20,
                      )),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.darkGray,
                        size: 20,
                      )
                    ]),
              ),
            )),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Payment Summary',
                  style: AppFonts.title3.darkGrey)
            ],
          ),
        ),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price',
                  style: AppFonts.body2.darkGrey),
              Text('\$ 4,53',
                  style: AppFonts.title4.darkGrey)
            ],
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Fee',
                  style: AppFonts.body2.darkGrey),
              Text('\$2.0 \$1.0',
                  style: AppFonts.title4.darkGrey)
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Divider(
              color: AppColors.borderlight,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            )),
        Padding(
          padding:const  EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Payment',
                  style: AppFonts.body2.darkGrey),
              Text('\$5.53',
                  style: AppFonts.title4.darkGrey)
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage('assets/icons/moneys.png'),
                        size: 24,
                        color: AppColors.peru,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.peru,
                          ),
                          height: 24,
                          width: 54,
                          alignment: Alignment.center,
                          child: Text(
                            'Cash',
                            style: AppFonts.body1.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.borderlight,
                        ),
                        height: 24,
                        alignment: Alignment.center,
                        child:  Text(
                          '\$5.53',
                          style: AppFonts.body1.darkGrey,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: 24,
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('assets/icons/vector.png'),
                            size: 24,
                            color: AppColors.gray1,
                          ))
                    ],
                  )),
              Row(children: [
                Expanded(
                    child: SizedBox(
                        height: 62,
                        child: ElevatedButton(
                          style: headButtonStyle,
                          onPressed: () {
                            Navigator.pushNamed(context, '/delivery');
                          },
                          child: const Text('Order'),
                        )))
              ])
            ]))
      ],
    );
  }
}
