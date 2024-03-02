import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TAppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(color: Colors.black),
      displayMedium: GoogleFonts.poppins(color: Colors.black),
      displaySmall: GoogleFonts.sendFlowers(color: Colors.black),
      headlineSmall:GoogleFonts.sendFlowers(color: Colors.black),
      ),
    );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(color: Colors.blue),
      displayMedium: GoogleFonts.poppins(color: Colors.blue),
      displaySmall: GoogleFonts.sendFlowers(color: Colors.blue),
      headlineSmall:GoogleFonts.sendFlowers(color: Colors.blue),
    ));
}