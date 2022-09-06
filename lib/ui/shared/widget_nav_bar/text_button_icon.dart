// ignore_for_file: must_be_immutable, file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Text(
      title,
      style: TextStyle(
        color: const Color(0xFFF66C0A),
        fontSize: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 0.055
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.012
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 0.026
                    : MediaQuery.of(context).size.width * 0.055,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
