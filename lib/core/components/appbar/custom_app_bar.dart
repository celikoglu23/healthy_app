import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/components/text/custom_text.dart';

/// Since [AppBar] structure will be the same
/// on many pages of the application, a common structure should be established.

class CustomAppBar extends AppBar {
  CustomAppBar({super.key});

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const CustomText('Mobile App Template'),
    );
  }
}
