// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/pages/about_page/about_page.dart';
import 'package:islam_sayed/ui/pages/contact_page/contact_page.dart';
import 'package:islam_sayed/ui/shared/center_widget.dart';
import 'package:islam_sayed/ui/shared/new/dawer_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../shared/widget_nav_bar/constants.dart';
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
      drawer: const Center(
        child: Drawer(
          backgroundColor: kPrimaryColor2,
          elevation: 11,
          child: DrawerWidget(),
        ),
      ),
      appBar: deviceType == DeviceScreenType.mobile
          ? AppBar(
              elevation: 0,
              toolbarHeight: MediaQuery.of(context).size.height * 0.08,
              actions: [
                const TextButtonLogo(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
              backgroundColor: kPrimaryColor2,
              iconTheme: const IconThemeData(
                color: kNavBarColor,
              ),
            )
          : null,
      body: CenterdedWidget(
        child: SingleChildScrollView(
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
              AboutPage(),
              ContactPage(),
            ],
          ),
        ),
      ),
    );
  }
}
