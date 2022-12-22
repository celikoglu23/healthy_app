import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/extensions/context_extensions.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/app/app_constants.dart';
import '../text/custom_text.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatefulWidget {
  late String? text;
  final double? width;
  final double? height;
  final double? radius;
  final VoidCallback onTap;
  final Color? iconColor;
  final IconData? icon;
  final double? fontSize;
  final Color? textColor;
  final Color? buttonColor;
  final bool? isBold;
  final bool isCircleButton;
  late Color? borderColor;
  late FontWeight? fontWeight;
  final double? iconSize;
  final bool? isTherePadding;
  final double? width2;

  final String? path;
  final bool? isGradient;

  ButtonWidget({
    Key? key,
    this.text = "",
    this.width = 40,
    this.width2 = 1,
    this.height = 5,
    this.buttonColor = Colors.white,
    required this.onTap,
    this.radius = 0.06,
    this.path,
    this.iconColor,
    this.icon,
    this.fontSize = 1.2,
    this.textColor = Colors.black,
    this.isBold = true,
    this.borderColor,
    this.fontWeight = FontWeight.w500,
    this.iconSize = 0.025,
    this.isTherePadding = true,
    this.isGradient = false,
    this.isCircleButton = false,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTap: widget.onTap,
      child: Transform.scale(
        scale: _scale,
        child: Padding(
          padding: EdgeInsets.all(widget.isTherePadding == true ? 8.0 : 2),
          child: Container(
            height: widget.height?.h,
            width: widget.width?.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
                colors: widget.isGradient!
                    ? <Color>[
                        AppConstants.black,
                        AppConstants.silver,
                        AppConstants.dew,
                      ]
                    : [
                        widget.buttonColor!,
                        widget.buttonColor!,
                      ],
              ),
              color: Colors.deepPurple.shade300,
              borderRadius:
                  BorderRadius.circular(context.dynamicWidth(widget.radius!)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.path != null
                    ? SvgPicture.asset(
                        widget.path!.toSvg,
                        height: 1.h + 18,
                      )
                    : widget.icon != null
                        ? Icon(
                            widget.icon,
                            color: widget.iconColor,
                            size: context.dynamicHeight(widget.iconSize!),
                          )
                        : const SizedBox.shrink(),
                const SizedBox(width: 10),
                CustomText(
                  widget.text!,
                  textStyle: TextStyle(
                      color: widget.textColor,
                      fontWeight: widget.fontWeight,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
