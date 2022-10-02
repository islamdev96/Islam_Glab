// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, unused_local_variable, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import 'body_mobile.dart';
import 'home_mobile.dart';

class MainContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return CenterdedWidget(
      child: Container(
        child: Column(
          children: [
            HomeMobile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const BodyMobile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
            ),
            const AllSocialMedia(),
          ],
        ),
      ),
    );
  }
}
