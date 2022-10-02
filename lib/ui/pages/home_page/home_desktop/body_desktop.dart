// ignore_for_file: avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../widgets/card_text.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Container(
      child: Row(
        children: [
          CardText(
            text:
                'I am a flutter software developer, with strong flutter and dart skills, and a good understanding of data structure and algorithms.  Moreover, I have knowledge of Networks and good research skills to solve problems..',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          CardText(
            text:
                'Flutter transforms the app development process. Build, test,  and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          CardText(
            text:
                'Flutter is an open-source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
          ),
        ],
      ),
    );
  }
}
























// Column(
//       children: [
//          One_Card(
//             text:
//                 'I am a flutter software developer, with strong flutter and dart skills, and a good understanding of data structure and algorithms.  Moreover, I have knowledge of Networks and good research skills to solve problems..',
//           ),
//           const SizedBoxRespo(
//             mobile: 0.04,
//             desktop: 0.3,
//             tablet: 0.05,
//             else1: 0.05,
//           ),
//           One_Card(
//             text:
//                 'Flutter transforms the app development process. Build, test,  and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
//           ),
//           const SizedBoxRespo(
//             mobile: 0.04,
//             desktop: 0.3,
//             tablet: 0.05,
//             else1: 0.05,
//           ),
//           One_Card(
//             text:
//                 'Flutter is an open-source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
//           ),
//       ],
//     );