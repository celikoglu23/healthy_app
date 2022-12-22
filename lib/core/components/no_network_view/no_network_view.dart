import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/base/state/base_state.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';

class NoNetworkView extends StatefulWidget {
  const NoNetworkView({Key? key}) : super(key: key);

  @override
  State<NoNetworkView> createState() => _NoNetworkViewState();
}

class _NoNetworkViewState extends BaseState<NoNetworkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset("login".toJpg)));
  }
}
