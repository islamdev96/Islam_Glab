// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../widgets/card_text.dart';
import '../../../../widgets/card_title.dart';
import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import '../contact_mobile/widget_mobile/card_text_mobile.dart';
import 'widget_mobile/title_heder.dart';
import 'widget_mobile/title_mobile.dart';

class ContactHomeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        const titleHederMobile(),
        CardTextMobile(
          text:
              'You can create  website, desktop and  an application mobile (Android & iOS ) , Start your project now , All this with just one code This makes your application complete and fast and easy to maintain and update , All this at very low prices and with high quality and speed .',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Column(
          children: [
            CardTitle(
              title: 'Contact us via',
            ),
            CardText(
              text:
                  'Email :  \nislamsayedbayoumi@gmail.com  \n\n\nWhatsApp :  \n+201065807020 .',
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        const AllSocialMedia(),
      ],
    );
  }
}
