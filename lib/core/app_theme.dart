import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_taker/core/app_color.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primaryThemeColorLight,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.primaryThemeColorLight,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: GoogleFonts.nunito(
        color: Colors.black, fontSize: 32, fontWeight: FontWeight.w600,),
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.nunito(
          fontSize: 96, fontWeight: FontWeight.w700, letterSpacing: -1.5, color: Colors.black),
      displayMedium: GoogleFonts.nunito(
          fontSize: 60, fontWeight: FontWeight.w700, letterSpacing: -0.5, color: Colors.black),
      displaySmall: GoogleFonts.nunito(
          fontSize: 48, fontWeight: FontWeight.w700, color: Colors.black),
      headlineLarge: GoogleFonts.nunito(
          fontSize: 34, fontWeight: FontWeight.w500, letterSpacing: 0.25, color: Colors.black),
      headlineMedium: GoogleFonts.nunito(
          fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
      headlineSmall:  GoogleFonts.nunito(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      titleLarge: GoogleFonts.nunito(
          fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
      titleMedium: GoogleFonts.nunito(
          fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15, color: Colors.black),
      titleSmall: GoogleFonts.nunito(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1, color: Colors.black),
      bodyLarge: GoogleFonts.nunito(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: Colors.black),
      bodyMedium: GoogleFonts.nunito(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: Colors.black),
      bodySmall: GoogleFonts.nunito(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4, color: Colors.black),
      labelLarge: GoogleFonts.nunito(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25, color: Colors.black),
      labelMedium: GoogleFonts.nunito(
          fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.5, color: Colors.black),
      labelSmall: GoogleFonts.nunito(
          fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 1.5, color: Colors.black),
    ),

  );

}