import 'package:vexana/vexana.dart';

import '../../base/models/base_error_model.dart';

class VexanaManager {
  static VexanaManager? _instance;
  static VexanaManager get instance {
    if (_instance != null) return _instance!;
    _instance = VexanaManager._init();
    return _instance!;
  }

  static const String baseUrl = "http://localhost:3000/api";

  VexanaManager._init();

  INetworkManager<BaseErrorModel> networkManager =
      NetworkManager<BaseErrorModel>(
    isEnableLogger: true,
    isEnableTest: true,
    interceptor: InterceptorsWrapper(onRequest: (options, handler) {
      handler.next(options);
    }),
    errorModel: const BaseErrorModel(),
    options: BaseOptions(
      baseUrl: baseUrl,
      followRedirects: true,
    ),
  );
}
