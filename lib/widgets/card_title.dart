// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardTitle extends StatelessWidget {
  CardTitle({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.height * 0.01
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.height * 0.001
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.height * 0.08
                        : MediaQuery.of(context).size.height * 0.01,
            vertical: MediaQuery.of(context).size.height * 0.009,
          ),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.11),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      blurStyle: BlurStyle.solid),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(65.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(55.0),
                ),
              ),
              height: 45.0,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: deviceType == DeviceScreenType.mobile
                        ? MediaQuery.of(context).size.width * 0.07
                        : deviceType == DeviceScreenType.desktop
                            ? MediaQuery.of(context).size.width * 0.017
                            : deviceType == DeviceScreenType.tablet
                                ? MediaQuery.of(context).size.width * 0.044
                                : MediaQuery.of(context).size.width * 0.01,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
