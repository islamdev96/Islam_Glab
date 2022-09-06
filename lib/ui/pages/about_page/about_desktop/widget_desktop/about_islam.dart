// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AboutIslam extends StatelessWidget {
  const AboutIslam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.01,
              vertical: MediaQuery.of(context).size.height * 0.009,
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
                height: 45.0,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: const Text(
                  'About ISLAM',
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.black,
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
