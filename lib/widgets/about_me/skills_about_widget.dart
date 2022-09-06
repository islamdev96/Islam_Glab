import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../ui/shared/Sized_box_respo.dart';
import 'build_skill.dart';

class SkillsAboutWidget extends StatelessWidget {
  const SkillsAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      child: Card(
        color: Colors.blue[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxRespo(
              mobile: 0.09,
              desktop: 0.1,
              tablet: 0.07,
              else1: 0.05,
            ),
            Center(
              child: Text('Skills',
                  style: TextStyle(
                      fontSize: deviceType == DeviceScreenType.mobile
                          ? MediaQuery.of(context).size.height * 0.029
                          : deviceType == DeviceScreenType.desktop
                              ? MediaQuery.of(context).size.height * 0.03
                              : deviceType == DeviceScreenType.tablet
                                  ? MediaQuery.of(context).size.height * 0.04
                                  : MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white)),
            ),
            const SizedBoxRespo(
              mobile: 0.03,
              desktop: 0.1,
              tablet: 0.05,
              else1: 0.05,
            ),
            BuildSkills("Flutter", 0.75),
            BuildSkills("Dart", 0.75),
            BuildSkills("OOP", 0.82),
            BuildSkills("Clean Architecture", 0.45),
            BuildSkills("State Management ", 0.65),
            BuildSkills("Java", 0.40),
            BuildSkills("Data Structures", 0.45),
            BuildSkills("Algorithms ", 0.30),
            BuildSkills("C++ ", 0.45),
            BuildSkills("Web Design ", 0.65),
            const SizedBoxRespo(
              mobile: 0.07,
              desktop: 0.15,
              tablet: 0.1,
              else1: 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
