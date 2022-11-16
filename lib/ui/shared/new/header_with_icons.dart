// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget_nav_bar/constants.dart';

class HeaderWithIcons extends StatelessWidget {
  const HeaderWithIcons({super.key});

  // final Size size;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      // It will cover 20% of our total height
      // height: size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.height * 0.1
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.height * 0.18
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.height * 0.1
                        : MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              color: kPrimaryColor2,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  deviceType == DeviceScreenType.mobile
                      ? MediaQuery.of(context).size.width * 0.12
                      : deviceType == DeviceScreenType.desktop
                          ? MediaQuery.of(context).size.width * 0.18
                          : deviceType == DeviceScreenType.tablet
                              ? MediaQuery.of(context).size.width * 0.12
                              : MediaQuery.of(context).size.width * 0.18,
                ),
                bottomRight: Radius.circular(
                  deviceType == DeviceScreenType.mobile
                      ? MediaQuery.of(context).size.width * 0.12
                      : deviceType == DeviceScreenType.desktop
                          ? MediaQuery.of(context).size.width * 0.15
                          : deviceType == DeviceScreenType.tablet
                              ? MediaQuery.of(context).size.width * 0.12
                              : MediaQuery.of(context).size.width * 0.15,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.width * 0.1
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.width * 0.09
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.width * 0.1
                            : MediaQuery.of(context).size.width * 0.09,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.width * 0.03
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.width * 0.03
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.width * 0.03
                            : MediaQuery.of(context).size.width * 0.03,
              ),
              height: deviceType == DeviceScreenType.mobile
                  ? MediaQuery.of(context).size.width * 0.01
                  : deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.width * 0.01
                      : deviceType == DeviceScreenType.tablet
                          ? MediaQuery.of(context).size.width * 0.01
                          : MediaQuery.of(context).size.width * 0.01,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.facebook,
                      color: kBackgroundColor,
                      textDirection: TextDirection.rtl,
                      size: deviceType == DeviceScreenType.mobile
                          ? MediaQuery.of(context).size.width * 0.07
                          : deviceType == DeviceScreenType.desktop
                              ? MediaQuery.of(context).size.width * 0.07
                              : deviceType == DeviceScreenType.tablet
                                  ? MediaQuery.of(context).size.width * 0.07
                                  : MediaQuery.of(context).size.width * 0.07,
                    ),
                    onPressed: () {
                      launch(
                        'https://www.facebook.com/Quality.machines.sport.maintenance',
                      );
                    },
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: kBackgroundColor,
                        textDirection: TextDirection.rtl,
                        size: deviceType == DeviceScreenType.mobile
                            ? MediaQuery.of(context).size.width * 0.07
                            : deviceType == DeviceScreenType.desktop
                                ? MediaQuery.of(context).size.width * 0.07
                                : deviceType == DeviceScreenType.tablet
                                    ? MediaQuery.of(context).size.width * 0.07
                                    : MediaQuery.of(context).size.width * 0.07,
                      ),
                      onPressed: () {
                        launch(
                          "tel://01024176369",
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.whatsapp,
                        color: kBackgroundColor,
                        textDirection: TextDirection.rtl,
                        size: deviceType == DeviceScreenType.mobile
                            ? MediaQuery.of(context).size.width * 0.07
                            : deviceType == DeviceScreenType.desktop
                                ? MediaQuery.of(context).size.width * 0.07
                                : deviceType == DeviceScreenType.tablet
                                    ? MediaQuery.of(context).size.width * 0.07
                                    : MediaQuery.of(context).size.width * 0.07,
                      ),
                      onPressed: () {
                        launch(
                          'https://api.whatsapp.com/send?phone=201024176369',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
