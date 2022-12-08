import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? hintText;
  final double borderRadius;
  final double fontsize;
  final Color borderSideColor;
  final Color fillColor;
  final Widget? suffixIcon;
  final Widget? suffix;
  final bool obsecureText;
  final Function(String?) onSaved;

  const TextFormFieldWidget(
      {Key? key,
      this.hintText,
      this.suffix,
      this.suffixIcon,
      required this.onSaved,
      this.borderRadius = 12,
      this.fontsize = 12,
      this.obsecureText = false,
      this.borderSideColor = AppConstants.waterLeaf,
      this.fillColor = AppConstants.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      obscureText: obsecureText,
      style: const TextStyle(color: AppConstants.scorpion),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffix: suffix,
        hintText: hintText,
        hintStyle: const TextStyle(color: AppConstants.scorpion),
        suffixIconConstraints: const BoxConstraints(),
        fillColor: AppConstants.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: AppConstants.white,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: AppConstants.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: AppConstants.white,
          ),
        ),
      ),
    );
  }
}
