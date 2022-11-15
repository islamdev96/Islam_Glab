// ignore_for_file: sized_box_for_whitespace, unused_local_variable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ignore: must_be_immutable
class CardTextTablet extends StatelessWidget {
  CardTextTablet({
    super.key,
    required this.text,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .02,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.009,
            ),
            color: Colors.grey[20],
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                child: AutoSizeText(
                  text,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
