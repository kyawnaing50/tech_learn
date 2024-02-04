import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TechLearnTextStyles {
  static String onlineLearingText = "Learn with Technology, you can learn from everywhere, every time.";
  static String interactiveLearingText = "Engage with quizzes, games, and interactive lessons.";
  static String welcomeLearingText =
      "Embark on a journey of knowledge and discovery with us. Let's make learning exciting together.";

  static TextStyle headingTextStyle({
    double fontSize = 24.0,
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }

  static TextStyle smallTextStyle({
    double fontSize = 16.0,
    Color? color, // =// Colors.black,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }

  static TextStyle myanTextStyle({
    double fontSize = 14.0,
    Color? color, // = Colors.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.notoSansMyanmar(
        textStyle: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }

  static TextStyle buttonTextStyleTextStyle({
    double fontSize = 16.0,
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ));
  }
}
