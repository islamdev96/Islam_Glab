// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../widgets/about_me/body_page.dart';
import '../../../../widgets/card_text.dart';
import '../../../../widgets/card_title.dart';
import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';

class AboutHomeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return CenterdedWidget(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              children: [
                CardTitle(
                  title: 'About me',
                ),
                CardText(
                  text:
                      'I am a flutter software developer, with strong flutter and dart skills, and a good understanding of data structure and algorithms.  Moreover, I have knowledge of Networks and good research skills to solve problems.',
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Column(
              children: [
                CardTitle(
                  title: 'what I do',
                ),
                CardText(
                  text:
                      'I am working in the field of software development. I Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Column(
              children: [
                CardTitle(
                  title: 'Education ',
                ),
                CardText(
                  text:
                      'Graduated with a Bachelor\'s degree in Accounting Faculty of Commerce, Cairo University, Egypt',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ],
            ),
            BodyPage(),
            const AllSocialMedia(),
          ],
        ),
      ),
    );
  }
}
