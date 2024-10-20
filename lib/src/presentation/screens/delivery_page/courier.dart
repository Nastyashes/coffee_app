import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourierPhoneIcon extends StatelessWidget {
  const CourierPhoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const ImageIcon(AssetImage('assets/icons/call.png'),
            size: 54, color: AppColors.gray1),
        onPressed: () {
          showCourierDialog(context);
        });
  }
}

void showCourierDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          title: Text('Johan Hawn', style: AppFonts.body2.black),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '+380123456789',
                style: AppFonts.body2.black,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Clipboard.setData(
                        const ClipboardData(text: '+380123456789'));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text('Copy number!', style: AppFonts.body1.black),
                    ));
                  },
                  label: Text('Copy number', style: AppFonts.body1.black),
                  icon: const Icon(
                    Icons.copy,
                    color: AppColors.darkGray,
                  ))
            ],
          ),
        );
      });
}
