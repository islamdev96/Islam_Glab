import 'package:flutter/material.dart';

import '../../model/launch_url.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({
    Key? key,
    required this.launchurl,
    required this.image,
  }) : super(key: key);
  final String launchurl;
  final String image;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        image,
        height: 55,
        width: 55,
      ),
      onPressed: () {
        launchURL(launchurl);
      },
    );
  }
}
