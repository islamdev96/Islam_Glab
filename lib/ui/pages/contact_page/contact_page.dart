// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../shared/widget_nav_bar/nav_bar.dart';
import 'contact_desktop/contact_home_desktop.dart';
import 'contact_mobile/contact_home_mobile.dart';
import 'contact_tablet/contact_home_tablet.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Column(
      children: [
        SingleChildScrollView(
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
                    return ContactHomeMobile();
                  } else if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop) {
                    return ContactHomeDesktop();
                  } else if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return ContactHomeTablet();
                  } else {
                    return ContactHomeMobile();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
