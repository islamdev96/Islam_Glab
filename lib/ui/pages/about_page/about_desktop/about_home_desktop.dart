// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../widgets/about_me/body_page.dart';
import '../../../../widgets/about_me/ex.dart';
import '../../../../widgets/about_me/skills_about_widget.dart';
import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import 'widget_desktop/about_islam.dart';
import 'widget_desktop/text_desktop.dart';
import 'widget_desktop/title_desktop.dart';

class AboutHomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return CenterdedWidget(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const AboutIslam(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                titleDesktop(
                  title: 'About me',
                ),
                textDesktop(
                  text:
                      'I am a flutter software developer, with strong flutter and dart skills, and a good understanding of data structure and algorithms.  Moreover, I have knowledge of Networks and good research skills to solve problems.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                titleDesktop(
                  title: 'what I do',
                ),
                textDesktop(
                  text:
                      'I am working in the field of software development. I Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        children: [
                          AutoSizeText(
                            'Education ',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          AutoSizeText(
                            'Graduated with a Bachelor\'s degree in Accounting Faculty of Commerce, Cairo University, Egypt',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        children: [
                          AutoSizeText(
                            'Hobbies ',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          AutoSizeText(
                            'I love reading, learning something new every single day and I love the sport.',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const SkillsAboutWidget(),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const Ex(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const AllSocialMedia(),
          ],
        ),
      ),
    );
  }
}
