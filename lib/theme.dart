import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Default theme colors
Color purpleColor = const Color(0xff5843BE);
Color orangeColor = const Color(0xffFF9376);
Color blackColor = const Color(0xff000000);
Color whiteColor = const Color(0xffFFFFFF);
Color greyColor = const Color(0xff82868E);

// Dark mode theme colors
Color darkPurpleColor = const Color(0xff6A5ACD);
Color darkOrangeColor = const Color(0xffFFA07A);
Color darkBackgroundColor = const Color(0xff121212);
Color darkSurfaceColor = const Color(0xff1E1E1E);
Color darkGreyColor = const Color(0xffA9A9A9);

double edge = 24;

// Default text styles
TextStyle blackTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: whiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w300,
  color: greyColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: purpleColor,
);

TextStyle regularTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: blackColor,
);

// Dark mode text styles
TextStyle darkWhiteTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: whiteColor,
);

TextStyle darkGreyTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w300,
  color: darkGreyColor,
);

TextStyle darkPurpleTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: darkPurpleColor,
);

TextStyle darkRegularTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: whiteColor,
);

// Default theme data
ThemeData lightTheme = ThemeData(
  primaryColor: purpleColor,
  scaffoldBackgroundColor: whiteColor,
);

// Dark mode theme data
ThemeData darkTheme = ThemeData(
  primaryColor: darkPurpleColor,
  scaffoldBackgroundColor: darkBackgroundColor,
  dialogBackgroundColor: darkBackgroundColor,
  cardColor: darkSurfaceColor,
);
