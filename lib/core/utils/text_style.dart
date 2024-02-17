import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';

TextStyle getTitleStyle(
    {double fontSize = 18,
    FontWeight fontWeight = FontWeight.bold,
    Color color = const Color(0xffBEDE61)}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

TextStyle getBodyStyle(
    {double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

TextStyle getSmallStyle(
    {double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.grey}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

///
///
//
//////////////////////////////
TextStyle getStyleS18W600FnunsanCgreen({double fontsize = 18}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.greenLime,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS25W600Fnunsan({double fontsize = 25}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS18W600Fnunsan({double fontsize = 18}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS16W400Fnunsan({double fontsize = 16}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS10W600Fnunsan({double fontsize = 10}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS12W400Fnunsan({double fontsize = 12}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.greyTxti,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS12W700Fnunsan({double fontsize = 12}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w700,
      fontFamily: GoogleFonts.nunitoSans().fontFamily);
}

TextStyle getStyleS14W400Finter({double fontsize = 14}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily);
}

TextStyle getStyleS10W400Fpoppin({double fontsize = 10}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.whiteRegular,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.poppins().fontFamily);
}

TextStyle getStyleS10W500FpoppinCblk({double fontsize = 10}) {
  return TextStyle(
      fontSize: fontsize,
      color: AppColors.blackiPrimary,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
