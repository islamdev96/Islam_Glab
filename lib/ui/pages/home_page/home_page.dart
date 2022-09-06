// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/drawer_widget.dart';
import '../../shared/widget_nav_bar/nav_bar.dart';
import '../../shared/widget_nav_bar/text_button_logo.dart';
import 'home_desktop/main_content_desktop.dart';
import 'home_mobile/main_content_mobile.dart';
import 'home_tablet/main_content_tablet.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: deviceType == DeviceScreenType.mobile
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: MediaQuery.of(context).size.height * 0.08,
              actions: [
                const TextButtonLogo(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFFF66C0A),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(DrawerWidget.routeName);
                    },
                  ),
                ),
              ],
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            deviceType == DeviceScreenType.desktop
                ? NavBarWidget()
                : deviceType == DeviceScreenType.tablet
                    ? NavBarWidget()
                    : Container(
                        height: 0,
                      ),
            ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile) {
                  return MainContentMobile();
                } else if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop) {
                  return MainContentDesktop();
                } else if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet) {
                  return MainContentTablet();
                } else {
                  return MainContentMobile();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
