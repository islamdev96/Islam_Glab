import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/shared/new/elevated_button_widget.dart';

import '../widget_nav_bar/constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
              // color: ThemeBackgroundColorPage(context),
              ),
          child: SizedBox(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: MediaQuery.of(context).size.width * 0.4,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: MediaQuery.of(context).size.width * 0.15,
                backgroundImage: const AssetImage(
                  'assets/images/islam/9.jpg',
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            const ElevatedButtonWidget(
              color: kNavBarColor,
              link:
                  'https://play.google.com/store/apps/details?id=com.islamdev.socialMedia',
              text: 'Google Play',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ElevatedButtonWidget(
              color: Colors.green[800]!,
              link: 'https://api.whatsapp.com/send?phone=201065807020',
              text: 'WhatsApp',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Colors.blueAccent,
              link: 'https://facebook.com/Flutter.Dart2',
              text: 'Facebook',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Colors.black,
              link: 'https://github.com/islamdev96',
              text: 'GitHub',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Color(0xFFE10A43),
              link: 'https://api.whatsapp.com/send?phone=201065807020',
              text: '01065807020',
            ),
          ],
        ),
      ],
    );
  }
}
