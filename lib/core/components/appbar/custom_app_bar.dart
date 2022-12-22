import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/constants/app/app_constants.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';
import 'package:go_router/go_router.dart';

import 'auto_leading_button.dart';

// ignore: must_be_immutable
class CustomAppBar extends AppBar {
  final String? textTitle;
  final TextStyle? textStyle;
  String imagename;
  bool isOpenSearch = false;

  late String searchWord;
  final _formKey = GlobalKey<FormState>();
  final GoRouterState? navigatorState;

  CustomAppBar({
    Key? key,
    this.textTitle,
    this.textStyle,
    this.imagename = "appbar",
    this.navigatorState,
  }) : super(key: key);

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstants.backgroundAppbar,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: AutoLeadingButton(
        navigatorState: widget.navigatorState,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Image.asset("healthy".toJpg, height: 80),
      ),
    );
  }
}
