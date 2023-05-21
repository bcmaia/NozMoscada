import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the primary color for the app
const Color kPrimaryColor = Color(0xFF42A5F5);

// Define the accent color for the app
const Color kAccentColor = Color(0xFFE91E63);

// Define the app theme
final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    inversePrimary: const Color.fromARGB(255, 100, 51, 23),
    primary: const Color.fromARGB(255, 34, 128, 37),
    secondary: const Color.fromARGB(255, 192, 65, 65),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.openSans().fontFamily,
      fontSize: 28.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.openSans().fontFamily,
      fontSize: 16.0,
    ),
  ),
);
