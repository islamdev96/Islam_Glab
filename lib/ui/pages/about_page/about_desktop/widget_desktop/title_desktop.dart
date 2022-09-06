import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class titleDesktop extends StatelessWidget {
  titleDesktop({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.09,
      child: AutoSizeText(
        title,
        overflow: TextOverflow.clip,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: MediaQuery.of(context).size.height * 0.04),
      ),
    );
  }
}
