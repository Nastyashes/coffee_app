import 'package:coffee_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle header1 = GoogleFonts.sora(
      fontSize: 34, fontWeight: FontWeight.w600, color: AppColors.white);
      static TextStyle header2 = GoogleFonts.sora(
      fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.white);
  static TextStyle title1 =
      GoogleFonts.sora(fontSize: 20, fontWeight: FontWeight.w600);
  static TextStyle title2 =
      GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600);
  static TextStyle title3 =
      GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600);
  static TextStyle title4 =
      GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w600);
      
  static TextStyle body1 =
      GoogleFonts.sora(fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle body1medium  = GoogleFonts.sora(fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle body2 =
      GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle body2medium =
      GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle body3 =
      GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle body3medium =
      GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600);


  static TextStyle buttom1 = GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600, color:AppColors.white);
  static TextStyle buttom2 = GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w400, color:AppColors.darkGray);
  static TextStyle tabButton1 = GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w600, color:AppColors.white);
  static TextStyle tabButton2 = GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w400, color:AppColors.darkSalateGray);
  
}

extension CopyWithStyles on TextStyle {
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get lightGrey1 => copyWith(color: AppColors.lightgray1);
  TextStyle get lightGrey2 => copyWith(color: AppColors.lightgray2);
  TextStyle get lightGrey3 => copyWith(color: AppColors.lightgray3);
  TextStyle get grey => copyWith(color: AppColors.gray);
  TextStyle get grey1 => copyWith(color: AppColors.gray1);
  TextStyle get darkSalateGray => copyWith(color: AppColors.darkSalateGray);
  TextStyle get peru => copyWith(color: AppColors.peru);
  TextStyle get darkGrey => copyWith(color: AppColors.darkGray);

  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withSize(double size) => copyWith(fontSize: size);
}
