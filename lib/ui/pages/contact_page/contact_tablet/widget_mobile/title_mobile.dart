// ignore_for_file: sized_box_for_whitespace, unused_local_variable, must_be_immutable, camel_case_types, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class titleMobile extends StatelessWidget {
  titleMobile({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 1,
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
