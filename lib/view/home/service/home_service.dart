import 'package:vexana/vexana.dart';

abstract class IHomeService {
  final INetworkManager networkManager;
  IHomeService(this.networkManager);
}

/// [IHomeService] is not a correct naming. Named as such as an example,
/// please edit here according to the project's requirements.

class HomeService extends IHomeService {
  HomeService(super.networkManager);
}
