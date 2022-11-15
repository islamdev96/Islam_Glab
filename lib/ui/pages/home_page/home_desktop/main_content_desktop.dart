// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import 'body_desktop.dart';
import 'home_desktop.dart';

class MainContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        HomeDesktop(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        const BodyDesktop(),
      ],
    );
  }
}
