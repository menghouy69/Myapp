import 'package:flutter/material.dart';

/// Convert HEX strings to [Color]
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

/// Main app colors
class AppColors {
  static final Color primary = HexColor("#6A1B9A"); // deep purple
  static final Color secondary = HexColor("#FF7043"); // orange
  static final Color background = HexColor("#F5F5F5");
}

/// Text styles
class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle link = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    fontWeight: FontWeight.w600,
  );
}

/// Common padding
class AppPadding {
  static const EdgeInsets page = EdgeInsets.all(24);
}
