// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardTextMobile extends StatelessWidget {
  CardTextMobile({
    super.key,
    required this.text,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.009,
            ),
            color: Colors.grey[20],
            child: Padding(
              padding: const EdgeInsets.all(22.0),
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
      ],
    );
  }
}
