// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ignore: must_be_immutable
class BuildExperience extends StatelessWidget {
  BuildExperience(this.company, this.position, this.duration, {Key? key})
      : super(key: key);
  // {required String company, String? position, String? duration})
  String company;
  String position;
  String duration;
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10.0),
        child: Icon(
          Icons.work,
          size: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.height * 0.024
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.height * 0.03
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.height * 0.025
                      : MediaQuery.of(context).size.height * 0.02,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.height * 0.027
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.height * 0.025
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.height * 0.022
                      : MediaQuery.of(context).size.height * 0.02,
        ),
      ),
      subtitle: Text("$position ($duration)",
          style: TextStyle(
            color: Colors.black54,
            fontSize: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.height * 0.022
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.height * 0.025
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.height * 0.02
                        : MediaQuery.of(context).size.height * 0.02,
          )),
    );
  }
}
