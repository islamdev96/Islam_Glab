// ignore_for_file: use_key_in_widget_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/pages/home_page/home_page.dart';
import 'package:islam_sayed/ui/shared/new/dawer_widget.dart';

import 'ui/pages/about_page/about_page.dart';
import 'ui/pages/contact_page/contact_page.dart';

void main() {
  // ignore_for_file: annotate_overrides

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => IslamWeb(),
    ),
  );
}

class IslamWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        AboutPage.routeName: (_) => AboutPage(),
        ContactPage.routeName: (_) => ContactPage(),
        DrawerWidget.routeName: (_) => const DrawerWidget(),
      },
    );
  }
}
