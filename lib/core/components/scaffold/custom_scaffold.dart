import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/constants/app/app_constants.dart';
import 'package:go_router/go_router.dart';

import '../../base/state/base_state.dart';
import '../appbar/custom_app_bar.dart';

/// Since [Scaffold] structure will be the same
/// on many pages of the application, a common structure should be established.

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final GoRouterState? navigatorState;
  final bool? isThereAppBar;

  const CustomScaffold({
    super.key,
    required this.body,
    this.navigatorState,
    this.isThereAppBar = true,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends BaseState<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      appBar: widget.isThereAppBar! ? CustomAppBar() : null,
      body: widget.body,
    );
  }
}
