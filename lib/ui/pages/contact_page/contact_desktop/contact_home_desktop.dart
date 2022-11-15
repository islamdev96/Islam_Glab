// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../widgets/about_me/ex.dart';
import '../../../../../widgets/about_me/skills_about_widget.dart';
import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import 'widget_desktop/title_heder.dart';
import 'widget_desktop/text_desktop.dart';
import 'widget_desktop/title_desktop.dart';

class ContactHomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const titleHeder(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: AutoSizeText(
              'You can create  website, desktop and  an application mobile (Android & iOS ) , Start your project now , All this with just one code This makes your application complete and fast and easy to maintain and update , All this at very low prices and with high quality and speed .',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                fontSize: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.height * 0.027
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.height * 0.03
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.height * 0.02
                            : MediaQuery.of(context).size.height * 0.001,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              titleDesktop(
                title: 'Contact us via',
              ),
              textDesktop(
                text:
                    'Email           :       islamsayedbayoumi@gmail.com.   \n \nWhatsApp   :       +201065807020  \n  \n',
              ),
            ],
          ),
          const AllSocialMedia(),
        ],
      ),
    );
  }
}
