import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardText extends StatelessWidget {
  CardText({
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
          // height: deviceType == DeviceScreenType.mobile
          //     ? MediaQuery.of(context).size.height * 0.3
          //     : deviceType == DeviceScreenType.desktop
          //         ? MediaQuery.of(context).size.height * 0.35
          //         : deviceType == DeviceScreenType.tablet
          //             ? MediaQuery.of(context).size.height * 0.5
          //             : MediaQuery.of(context).size.height * 1,
          width: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 1
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.26
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.7
                      : MediaQuery.of(context).size.width * 1,
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
              child: Center(
                child: AutoSizeText(
                  text,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    fontSize: deviceType == DeviceScreenType.mobile
                        ? MediaQuery.of(context).size.height * 0.027
                        : deviceType == DeviceScreenType.desktop
                            ? MediaQuery.of(context).size.height * 0.03
                            : deviceType == DeviceScreenType.tablet
                                ? MediaQuery.of(context).size.height * 0.03
                                : MediaQuery.of(context).size.height * 0.001,
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
