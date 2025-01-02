import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/core/theme/app_colors.dart';

class AppTheme {
  // ThemeData
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      brightness: Brightness.light,
      textTheme: GoogleFonts.latoTextTheme(),
    );
  }
}
