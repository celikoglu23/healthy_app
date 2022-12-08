import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/constants/app/app_constants.dart';

class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;

  /// Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;

  ///  [Offset], used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
            color: AppConstants.instance.mineShaft.withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 10),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: AppConstants.instance.mineShaft.withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1)),
      ];
}
