import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../base/functions/base_functions.dart';

class AutoLeadingButton extends StatefulWidget {
  final GoRouterState? navigatorState;
  const AutoLeadingButton({Key? key, required this.navigatorState})
      : super(key: key);

  @override
  State<AutoLeadingButton> createState() => _AutoLeadingButtonState();
}

class _AutoLeadingButtonState extends State<AutoLeadingButton> {
  // TODO Watch issue ShellRoutes seem to cause NavigatorObserver to not fire
  //  https://github.com/flutter/flutter/issues/112196
  @override
  void didUpdateWidget(covariant AutoLeadingButton oldWidget) {
    // print("didUpdateWidget");
    // print("oldFullPath ${oldWidget.navigatorState.hashCode}");
    // print("newFullPath ${widget.navigatorState.hashCode}");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> mainNavigatorKey =
        GlobalKey<NavigatorState>(debugLabel: 'main');
    // print("build");
    final hasDrawer = Scaffold.of(context).hasDrawer;
    final modalRoute = ModalRoute.of(context);
    // GoRouter.of(context) or context.* always return rootRouter ??
    // final rootRouterKey = rootNavigatorKey.currentState!.context;
    // final mainRouterKey = mainNavigatorKey.currentState!.context;
    // final rootRouter = GoRouter.of(rootRouterKey);
    // final mainRouter = GoRouter.of(mainRouterKey);
    // print("rootRouterKey ${rootRouterKey}");
    // print("mainRouterKey ${mainRouterKey}");
    // print("rootRouter ${rootRouter.navigator?.widget}");
    // print("mainRouter ${mainRouter.navigator?.widget}");
    final useCloseButton =
        modalRoute is PageRoute<dynamic> && modalRoute.fullscreenDialog;
    return mainNavigatorKey.currentState?.canPop() ?? false
        ? (useCloseButton
            ? CloseButton(onPressed: context.pop)
            : platformBackButton(onPressed: context.pop))
        : hasDrawer
            ? IconButton(
                icon: SvgPicture.asset(
                  'menu'.toSvg,
                ),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                onPressed: Scaffold.of(context).openDrawer,
              )
            : Container();
  }
}
