import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  // bold
  static TextStyle titleTextBold = GoogleFonts.poppins(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headerTextBold = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle largeTextBold = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mediumTextBold = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalTextBold = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle smallTextBold = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle smallerTextBold = GoogleFonts.poppins(
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );

  // regular
  static TextStyle titleTextRegular = GoogleFonts.poppins(
    fontSize: 50,
    fontWeight: FontWeight.normal,
  );

  static TextStyle headerTextRegular = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );

  static TextStyle largeTextRegular = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumTextRegular = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalTextRegular = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle smallTextRegular = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle smallerTextRegular = GoogleFonts.poppins(
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );
}
