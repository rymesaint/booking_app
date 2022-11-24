import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

export 'app_color.dart';
export 'app_dimension.dart';
export 'app_font.dart';

class CustomTheme {
  static ThemeData themeData = ThemeData(
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primarySwatch: Colors.blue,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
