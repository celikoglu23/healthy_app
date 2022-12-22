import 'package:flutter/cupertino.dart';
import 'package:flutter_mobile_template/view/auth/login/login_view.dart';
import 'package:flutter_mobile_template/view/home/home_view.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'main');

class Routes {
  static Routes? _instance;
  static Routes get instance {
    _instance ??= Routes._init();
    return _instance!;
  }

  Routes._init();

  GoRouter routes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/login',
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return HomeView();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginView();
        },
      ),
    ],
  );
}
