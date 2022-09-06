import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CategorySvgMo extends StatelessWidget {
  const CategorySvgMo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return SvgPicture.asset('assets/images/islam11.svg');
  }
}
