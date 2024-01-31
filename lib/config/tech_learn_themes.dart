import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techlearn/config/tech_learn_colors.dart';

class TechLearnThemes {
  static ThemeData get lightTechLearnTheme => _getThemeData(Brightness.light);
  static ThemeData get darkTechLearnTheme => _getThemeData(Brightness.dark);

  static ThemeData _getThemeData(Brightness brightness) {
    return ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.inter().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: TechLearnColors.primary,
          brightness: brightness,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: TechLearnColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            gapPadding: 10,
            borderSide: BorderSide(color: TechLearnColors.neutral),
          ),
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ).apply(
          bodyColor: TechLearnColors.neutral,
          displayColor: TechLearnColors.neutral,
        ));
  }
}
