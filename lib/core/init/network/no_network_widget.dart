import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/components/text/custom_text.dart';

import '../../constants/enums/network_result_enums.dart';
import '../../mixins/state_mixin.dart';
import 'network_change_manager.dart';

class NoNetworkWidget extends StatefulWidget {
  const NoNetworkWidget({super.key});

  @override
  State<NoNetworkWidget> createState() => _NoNetworkWidgetState();
}

class _NoNetworkWidgetState extends State<NoNetworkWidget> with StateMixin {
  late final INetworkChangeManager _networkChange;
  NetworkResultEnums? _networkResult;

  @override
  void initState() {
    super.initState();
    _networkChange = NetworkChangeManager();

    waitForScreen(() {
      _networkChange.handleNetworkChange((result) {
        _updateView(result);
      });
    });
  }

  Future<void> fetchFirstResult() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final result = await _networkChange.checkNetworkFirstTime();
      _updateView(result);
    });
  }

  void _updateView(NetworkResultEnums result) {
    setState(() {
      _networkResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(seconds: 1),
      crossFadeState: _networkResult == NetworkResultEnums.off
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstChild: const SizedBox(
        height: 30,
        child: Material(
          color: Colors.black,
          child: Center(
            child: CustomText("Bağlantı bulunamadı"),
          ),
        ),
      ),
      secondChild: const SizedBox.shrink(),
    );
  }
}
