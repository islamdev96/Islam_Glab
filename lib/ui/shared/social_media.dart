import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'category_image.dart';
import 'category_svg.dart';

class AllSocialMedia extends StatefulWidget {
  const AllSocialMedia({Key? key}) : super(key: key);

  @override
  State<AllSocialMedia> createState() => _AllSocialMediaState();
}

class _AllSocialMediaState extends State<AllSocialMedia> {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Column(
      children: [
        Text('All Social Media',
            style: TextStyle(
                fontSize: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.height * 0.017
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.height * 0.017
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.height * 0.022
                            : MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.bold)),
        Container(
          width: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 2
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 2
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 2
                      : MediaQuery.of(context).size.width * 0.9,
          height: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.height * 0.1
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.height * 0.1
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.height * 0.06
                      : MediaQuery.of(context).size.height * 0.9,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CategorySvg(
                svg: 'assets/images/soshal/facebook.svg',
                launchurl: 'https://facebook.com/Flutter.Dart2',
              ),
              CategorySvg(
                svg: 'assets/images/soshal/linkedin.svg',
                launchurl: 'https://www.linkedin.com/in/islam-sayed-311733249/',
              ),
              CategorySvg(
                svg: 'assets/images/soshal/github.svg',
                launchurl: 'https://github.com/islamdev96',
              ),
              CategorySvg(
                svg: 'assets/images/soshal/play.svg',
                launchurl:
                    'https://play.google.com/store/apps/details?id=com.islamdev.socialMedia',
              ),
              CategorySvg(
                svg: 'assets/images/soshal/whatsapp.svg',
                launchurl: 'https://api.whatsapp.com/send?phone=201065807020',
              ),
              CategoryImage(
                launchurl:
                    'https://www.upwork.com/freelancers/~01ff89b13f40ddfecc',
                image: 'assets/images/soshal/upwork.png',
              )
            ],
          ),
        ),
      ],
    );
  }
}
