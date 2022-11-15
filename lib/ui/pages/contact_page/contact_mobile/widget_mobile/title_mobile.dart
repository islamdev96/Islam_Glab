// ignore_for_file: must_be_immutable, camel_case_types

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class titleMobile extends StatelessWidget {
  titleMobile({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
