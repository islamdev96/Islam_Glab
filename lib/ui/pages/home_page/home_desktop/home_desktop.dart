// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDesktop extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m \n Islam \n Sayed',
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: GoogleFonts.rubikMicrobe().fontFamily,
                        color: Colors.grey[750],
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Welcome to my official profile , I am a software developer, I love sharing my experience with others.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[700], fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.width * 0.13
                      : MediaQuery.of(context).size.width * 0.2,
                  child: CircleAvatar(
                      radius: deviceType == DeviceScreenType.desktop
                          ? MediaQuery.of(context).size.height * 0.6
                          : MediaQuery.of(context).size.height * 0.5,
                      backgroundImage: const AssetImage(
                        'assets/images/islam3.jpg',
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
