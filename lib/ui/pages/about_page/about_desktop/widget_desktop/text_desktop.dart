import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class textDesktop extends StatelessWidget {
  textDesktop({required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
      child: AutoSizeText(
        text,
        overflow: TextOverflow.clip,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
            fontSize: MediaQuery.of(context).size.height * 0.03),
      ),
    );
  }
}
