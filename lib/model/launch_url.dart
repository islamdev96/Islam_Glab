import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await launch(
    // forceWebView: true,
    // enableJavaScript: true,
    url,
  )) {
    // // ignore: deprecated_member_use
    // await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}
