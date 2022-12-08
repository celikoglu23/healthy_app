import 'package:flutter/cupertino.dart';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

extension DurationExtensions on num {
  Duration get microseconds => Duration(microseconds: round());
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());
  Duration get seconds => Duration(microseconds: (this * 1000 * 1000).round());
  Duration get minutes =>
      Duration(microseconds: (this * 1000 * 1000 * 60).round());
  Duration get hours =>
      Duration(microseconds: (this * 1000 * 1000 * 60 * 60).round());
  Duration get days =>
      Duration(microseconds: (this * 1000 * 1000 * 60 * 60 * 24).round());
  Duration get ms => milliseconds;
}

extension DoubleExtension on double {
  String get toShortDoubleNumber =>
      "${toString().split(".").first}.${toString().split(".")[1].substring(0, 2)}";
}
