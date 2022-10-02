// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SizedBoxRespo extends StatelessWidget {
  const SizedBoxRespo(
      {Key? key,
      required this.mobile,
      required this.desktop,
      required this.tablet,
      required this.else1})
      : super(key: key);
  final double mobile;
  final double desktop;
  final double tablet;
  final double else1;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return SizedBox(
      height: deviceType == DeviceScreenType.mobile
          ? MediaQuery.of(context).size.height * mobile
          : deviceType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.height * desktop
              : deviceType == DeviceScreenType.tablet
                  ? MediaQuery.of(context).size.height * tablet
                  : MediaQuery.of(context).size.height * else1,
      width: deviceType == DeviceScreenType.mobile
          ? MediaQuery.of(context).size.width * mobile
          : deviceType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.width * desktop
              : deviceType == DeviceScreenType.tablet
                  ? MediaQuery.of(context).size.width * tablet
                  : MediaQuery.of(context).size.width * else1,
    );
  }
}
