import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle h1 = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h2 = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black54
  );

  static TextStyle h3 = GoogleFonts.montserrat(
      fontSize: 6.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black54
  );
}