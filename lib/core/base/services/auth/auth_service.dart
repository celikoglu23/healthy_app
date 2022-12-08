import 'package:vexana/vexana.dart';

abstract class IAuthService {
  final INetworkManager networkManager;

  IAuthService(this.networkManager);
}

class AuthService extends IAuthService {
  AuthService(super.networkManager);
}
