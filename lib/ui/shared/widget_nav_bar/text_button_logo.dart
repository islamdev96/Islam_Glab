import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/shared/widget_nav_bar/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../pages/home_page/home_page.dart';

class TextButtonLogo extends StatelessWidget {
  const TextButtonLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return TextButton.icon(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      },
      icon: Icon(
        Icons.auto_stories,
        color: kNavBarColor,
        size: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 0.07
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.022
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 0.04
                    : MediaQuery.of(context).size.width * 0.07,
      ),
      label: Text(
        'ISLAM GLAB',
        style: TextStyle(
          color: kNavBarColor,
          fontSize: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.055
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.013
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.035
                      : MediaQuery.of(context).size.width * 0.055,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
