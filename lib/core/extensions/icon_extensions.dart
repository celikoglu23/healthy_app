import 'package:flutter/material.dart';
import '../constants/enums/icon_enums.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';

import 'package:flutter_svg/flutter_svg.dart';

extension IconExtensions on IconEnums {
  Widget get appIcon {
    switch (this) {
      case IconEnums.menu:
        return SvgPicture.asset(IconEnums.menu.name.toSvg);
    }
  }
}
