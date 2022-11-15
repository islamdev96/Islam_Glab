// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTablet extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: MediaQuery.of(context).size.width * 0.4,
                  child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.3,
                      backgroundImage: const AssetImage(
                        'assets/images/islam3.jpg',
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
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
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  AutoSizeText(
                    'Welcome to my official profile , I am a software developer, I love sharing my experience with others.',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
