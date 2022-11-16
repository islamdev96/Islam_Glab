// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {super.key, required this.text, required this.link, required this.color});
  final String text;
  final String link;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          focusNode: FocusNode(),
          autofocus: true,
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(const Size(190, 45)),
            backgroundColor: MaterialStateProperty.all<Color>(
              color,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          child: InkWell(
            onTap: () => launch(link),
            child: Text(
              text,
              style: TextStyle(
                fontSize: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.width * 0.045
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.width * 0.012
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.width * 0.03
                            : MediaQuery.of(context).size.width * 0.045,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
