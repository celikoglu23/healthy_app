import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.isThereAppBar! ? CustomAppBar() : null,
      body: widget.body,
    );
  }
}
