// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/pages/contact_page/contact_mobile/widget_mobile/card_text_mobile.dart';
import 'package:islam_sayed/ui/shared/widget_nav_bar/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../widgets/card_text.dart';
import '../../../../widgets/card_title.dart';
import '../../../shared/center_widget.dart';
import '../../../shared/social_media.dart';
import '../contact_tablet/widget_mobile/card_text_tablet.dart';
import 'widget_mobile/title_heder.dart';
import 'widget_mobile/title_mobile.dart';

class ContactHomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ),
        const titleHederMobile(),
        CardTextMobile(
          text:
              'You can create a website, desktop, and  an application mobile (Android & iOS ), Start your project now, All this with just one code This makes your application complete and fast and easy to maintain and update, All this at a very low price and with high quality and speed .',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(
              title: 'Contact us via',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                // ignore: deprecated_member_use
                onTap: () => launch(
                    'https://play.google.com/store/apps/developer?id=ISLAM+SAYED'),
                child: const Text(
                  'Google Play',
                  style: TextStyle(
                    color: kNavBarColor,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () =>
                    launch('https://api.whatsapp.com/send?phone=201065807020'),
                child: const Text(
                  'WhatsApp :  \n01065807020 ',
                  style: TextStyle(
                    color: kNavBarColor,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: InkWell(
                // ignore: deprecated_member_use

                child: Text(
                  'Email :  islamsayedbayoumi@gmail.com ',
                  style: TextStyle(
                    color: kNavBarColor,
                    fontSize: 20,
                  ),
                ),
              ),
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
