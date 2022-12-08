import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobile_template/core/init/main_build/main_build.dart';
import 'package:flutter_mobile_template/core/init/theme/app_theme.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sizer/sizer.dart';

import 'core/base/bloc/app_bloc_observer.dart';
import 'core/init/dependency_injector.dart';
import 'core/init/routes/routes.dart';

void main() async {
  await _init();
  Bloc.observer = AppBlocObserver.instance;
  runZoned(
    () => runApp(
      MultiRepositoryProvider(
        providers: DependencyInjector.instance.repositoryProviders,
        child: MultiBlocProvider(
          providers: DependencyInjector.instance.globalBlocProviders,
          child: const MyApp(),
        ),
      ),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDateFormatting('tr');
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('tr');
    return Sizer(
      builder: (context, orientation, deviceType) {
        final botToastBuilder = BotToastInit();
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Mobile App Template',
          routerConfig: Routes.instance.routes,
          builder: (context, child) => botToastBuilder(
            context,
            MainBuild(child: child),
          ),
          theme: AppTheme.instance.appTheme,
        );
      },
    );
  }
}
