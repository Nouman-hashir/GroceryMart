

import '../../../grocery_mart.dart';

class AppTextStyles {
  static TextStyle poppins({
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    double height = 1.0,
  }) {
    return GoogleFonts.poppins(
      color: color,
      height: height,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle montserrat({
    Color? color,
    required double fontSize,
    required FontWeight fontWeight,
    double height = 1.0,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
