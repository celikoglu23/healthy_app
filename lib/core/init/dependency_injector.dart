import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobile_template/core/base/bloc/auth/auth_bloc.dart';
import 'package:flutter_mobile_template/core/base/services/auth/auth_service.dart';
import 'package:flutter_mobile_template/view/home/bloc/home_bloc.dart';
import 'package:flutter_mobile_template/view/home/service/home_service.dart';
import 'package:provider/provider.dart';
import 'package:vexana/vexana.dart';

import 'network/vexana_manager.dart';

class DependencyInjector {
  static DependencyInjector? _instance;

  static DependencyInjector get instance {
    _instance ??= DependencyInjector._init();
    return _instance!;
  }

  late final INetworkManager networkManager;
  late final IHomeService homeService;
  late final HomeBloc homeBloc;
  late final IAuthService authService;
  late final AuthBloc authBloc;

  DependencyInjector._init() {
    networkManager = VexanaManager.instance.networkManager;
    homeService = HomeService(networkManager);
    homeBloc = HomeBloc(homeService);
    authService = AuthService(networkManager);
    authBloc = AuthBloc(authService);
  }

  List<RepositoryProvider> get repositoryProviders => [
        RepositoryProvider<IHomeService>(create: (context) => homeService),
        RepositoryProvider<IAuthService>(create: (context) => authService),
      ];

  List<BlocProvider<Bloc>> get globalBlocProviders => [
        BlocProvider<HomeBloc>(create: (context) => homeBloc),
        BlocProvider<AuthBloc>(create: (context) => authBloc),
      ];

  List<ChangeNotifierProvider<ChangeNotifier>> get otherProviders => [];
}
