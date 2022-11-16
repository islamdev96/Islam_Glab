// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islam_sayed/ui/shared/widget_nav_bar/constants.dart';

class CenterdedWidget extends StatelessWidget {
  final Widget child;

  const CenterdedWidget({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor2,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200, minWidth: 900),
          child: child),
    );
  }
}
