// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class titleHederMobile extends StatelessWidget {
  const titleHederMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.001,
            ),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.11),
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        blurStyle: BlurStyle.solid),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(65.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(55.0),
                  ),
                ),
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: Text(
                  'Create your digital platform now',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      color: const Color(0xFFF66C0A),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
