import 'dart:io';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

_launchURLInMobile(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLInWeb(String url) {
  html.window.open(url, '');
}

void onProjectTap(String url) {
  if (url != null) {
    try {
      if (Platform.isIOS || Platform.isAndroid) {
        _launchURLInMobile(url);
      } else {
        _launchURLInWeb(url);
      }
    } catch (e) {
      _launchURLInWeb(url);
    }
    return;
  }
}
