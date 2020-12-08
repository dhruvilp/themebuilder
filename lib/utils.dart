import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

///=======================================
///            URL LAUNCHER
///=======================================
void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

///=======================================
///            EMAIL LAUNCHER
///=======================================
void launchMailClient(String kEmail) async {
  try {
    await launch(kEmail);
  } catch (e) {
    await Clipboard.setData(ClipboardData(text: kEmail.replaceRange(0, 7, '')));
  }
}
