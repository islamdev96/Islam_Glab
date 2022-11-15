// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuildSkills extends StatelessWidget {
  BuildSkills(this.skill, this.level, {Key? key}) : super(key: key);
  String skill;
  double level;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Card(
      color: Colors.blue[800],
      margin: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: deviceType == DeviceScreenType.mobile
                  ? MediaQuery.of(context).size.height * 0.02
                  : deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.height * 0.025
                      : deviceType == DeviceScreenType.tablet
                          ? MediaQuery.of(context).size.height * 0.025
                          : MediaQuery.of(context).size.height * 0.02,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey[500],
            color: Colors.white,
            minHeight: 1.5,
            value: level,
          ),
        ],
      ),
    );
  }
}
