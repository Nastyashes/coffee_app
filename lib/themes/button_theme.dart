import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';

final ButtonStyle headButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all(AppColors.white),
  backgroundColor: MaterialStateProperty.all(
    AppColors.peru,
  ),
  textStyle: MaterialStatePropertyAll(AppFonts.buttom1),
  minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 62)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);
