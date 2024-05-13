import 'package:coffee_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle header = GoogleFonts.inter(
      fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.white);
  static TextStyle title1 =
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle title2 =
      GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle title3 =
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600);
  static TextStyle title3medium =
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle body1 =
      GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w500);
  static TextStyle body2 = GoogleFonts.inter(fontSize: 14);
  static TextStyle body2medium =
      GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle body3 =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w400);
  static TextStyle body3medium =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w500);
  static TextStyle body3semibold =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600);

  static TextStyle caption = GoogleFonts.inter(fontSize: 12);
  static TextStyle captionMedium =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle captionSemibold =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle tableHeader = GoogleFonts.inter(
      fontSize: 10,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      height: 1.6);
}

extension CopyWithStyles on TextStyle {
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get coral => copyWith(color: AppColors.coral);
  TextStyle get grey3 => copyWith(color: AppColors.gray3);
  TextStyle get grey2 => copyWith(color: AppColors.gray2);
  TextStyle get lightGrey1 => copyWith(color: AppColors.lightGray1);
  TextStyle get green => copyWith(color: AppColors.green);
  TextStyle get mainGreen => copyWith(color: AppColors.mainGreen);
  TextStyle get red => copyWith(color: AppColors.red);
  TextStyle get orange => copyWith(color: AppColors.orange);
  TextStyle get darkGrey => copyWith(color: AppColors.darkGray);

  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withSize(double size) => copyWith(fontSize: size);
}
