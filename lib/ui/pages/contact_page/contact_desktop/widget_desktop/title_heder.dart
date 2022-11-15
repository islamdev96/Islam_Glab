// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class titleHeder extends StatelessWidget {
  const titleHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2,
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
                  'Create your digital platform now',
                  style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFFF66C0A),
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
