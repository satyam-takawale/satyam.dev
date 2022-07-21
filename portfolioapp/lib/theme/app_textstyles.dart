import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle menuTextStyle = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
  static TextStyle nameTextStyle = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 45, fontWeight: FontWeight.w700);
  static TextStyle nameTextStyleForWeb = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700);

  static TextStyle nameSubtitleTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromRGBO(136, 136, 136, 1),
      fontSize: 16,
      fontWeight: FontWeight.w400);
  static TextStyle companyNameTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromARGB(255, 95, 95, 95),
      fontSize: 16,
      fontWeight: FontWeight.w400);

  static TextStyle footerTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromRGBO(136, 136, 136, 1),
      fontSize: 16,
      fontWeight: FontWeight.w400);
  static TextStyle sectionTitleTextStyle = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 36, fontWeight: FontWeight.w700);
  static TextStyle sectionTitleTextStyleForWeb = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700);

  static TextStyle experiencePositionTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromRGBO(234, 234, 234, 1),
      fontSize: 18,
      fontWeight: FontWeight.w500);
  static TextStyle experienceCompanyNameTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromRGBO(102, 102, 102, 1),
      fontSize: 14,
      fontWeight: FontWeight.w400);
  static TextStyle experienceDescriptionTextStyle = GoogleFonts.ibmPlexSans(
    color: const Color.fromRGBO(153, 153, 153, 1),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
