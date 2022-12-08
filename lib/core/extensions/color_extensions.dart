import 'package:flutter/material.dart';

import '../constants/app/app_constants.dart';
import '../constants/enums/color_enums.dart';

extension ColorExtensions on ColorEnums {
  Color get appColor {
    switch (this) {
      case ColorEnums.main:
        return AppConstants.instance.mineShaft;
    }
  }
}
