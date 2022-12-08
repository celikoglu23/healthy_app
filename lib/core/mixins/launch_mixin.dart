import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  /// [mixin] should be created for such packages.

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
