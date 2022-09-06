import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../model/launch_url.dart';

class CategorySvg extends StatelessWidget {
  const CategorySvg({
    Key? key,
    required this.launchurl,
    required this.svg,
  }) : super(key: key);
  final String launchurl;

  final String svg;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return IconButton(
      icon: SvgPicture.asset(
        svg,
        height: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.height * 0.1
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.height * 0.1
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.height * 0.1
                    : MediaQuery.of(context).size.height * 0.9,
        width: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 1
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 1
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 1
                    : MediaQuery.of(context).size.width * 0.9,
      ),
      onPressed: () {
        launchURL(launchurl);
      },
    );
  }
}
