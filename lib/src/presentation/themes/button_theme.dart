import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';

final ButtonStyle headButtonStyle = ButtonStyle(
  foregroundColor: WidgetStateProperty.all(AppColors.white),
  backgroundColor: WidgetStateProperty.all(
    AppColors.peru,
  ),
  textStyle: WidgetStatePropertyAll(AppFonts.buttom1),
  minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 62)),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);
