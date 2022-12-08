import 'package:flutter/material.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  Color mineShaft = const Color(0xFF333333);
  static const Color sandyBeach = Color(0xffFFEBCD);
  static Color background = const Color(0xffF0EEFB).withOpacity(1);
  static const Color white = Color(0xffFFFFFF);
  static const Color waterLeaf = Color(0xffA3E8DE);
  static const Color cargox = Color(0xffA4A4A4);
  static const Color text = Color(0xffB8B8B8);
  static const Color java = Color(0xFF27C3AA);
  static const Color cargoText = Color(0xFF767676);
  static const Color tradewind = Color(0xff5FB6A8);
  static const Color keppel = Color(0xff37A492);
  static const Color alto = Color(0xffDFDFDF);
  static const Color yourPink = Color(0xffFFC0B9);
  static const Color fairPink = Color(0xffFFECE5);
  static const Color mercury = Color(0xffE4E4E4);
  static const Color silverchalice = Color(0xffA4A4A4);
  static const Color silver = Color(0xffB8B8B8);
  static const Color wildSand = Color(0xffF6F6F6);
  static const Color boulder = Color(0xff767676);
  static const Color malibu = Color(0xff55C2FF);
  static const Color easternBlue = Color(0xff2280B4);
  static const Color orangepeel = Color(0xffFF9900);
  static const Color limeade = Color(0xff63AE00);
  static const Color aquamarine = Color(0xff3FFFDE);
  static const Color bermuda = Color(0xff6EDBC9);
  static const Color dew = Color(0xffF5FFFD);
  static const Color polar = Color(0xffEBFAF8);
  static const Color bittersweet = Color(0xffFF6161);
  static const Color gallery = Color(0xffECECEC);
  static const Color tahitigold = Color(0xffF08406);
  static const Color matrix = Color(0xffAB5A4B);
  static const Color piper = Color(0xffC06421);
  static const Color sepiaskin = Color(0xffA15C42);
  static const Color hollywoodcerise = Color(0xffF4008F);
  static const Color heliotrope = Color(0xffC76BFF);
  static const Color scorpion = Color(0xff5C5C5C);
  static const Color black = Color(0xff000000);
  static const Color mineshaft = Color(0xff343434);
  static const Color hawkesBlue = Color(0xffD7D7FD);
  static const Color wePeep = Color(0xffF5CDCE);
  static const Color onahau = Color(0xffD1F5FF);
  static const Color softPeach = Color(0xffF5ECEF);
  static const Color emperor = Color(0xff4F4F4F);
}
