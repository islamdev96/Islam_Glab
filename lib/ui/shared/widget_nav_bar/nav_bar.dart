// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/shared/widget_nav_bar/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../pages/about_page/about_page.dart';
import '../../pages/contact_page/contact_page.dart';
import '../../pages/home_page/home_page.dart';
import 'text_button_icon.dart';
import 'text_button_logo.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      color: kNavBarColor,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      height: deviceType == DeviceScreenType.mobile
          ? MediaQuery.of(context).size.height * 0.1
          : deviceType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.height * 0.1
              : deviceType == DeviceScreenType.tablet
                  ? MediaQuery.of(context).size.height * 0.15
                  : MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: <Widget>[
          const TextButtonLogo(),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routeName);
                  },
                  child: TextButtonWidget(title: 'Home'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AboutPage.routeName);
                  },
                  child: TextButtonWidget(title: ' About'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ContactPage.routeName);
                  },
                  child: TextButtonWidget(title: 'Contact'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
