// ignore_for_file: unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import '../../ui/shared/Sized_box_respo.dart';
import '../card_title.dart';
import 'build_experience.dart';

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTitle(
          title: 'Experience',
        ),
        BuildExperience(
          "Freelancer",
          "Web Developer",
          " 2015 - 2017",
        ),
        BuildExperience(
          "Freelancer",
          "Mobile Developer",
          " 2019 - 2020",
        ),
        BuildExperience(
          "Vodafone",
          "Customer Service",
          " 2020 - 2022",
        ),
        BuildExperience(
          "Freelancer",
          "Flutter Developer",
          " 2022 - present ",
        ),
        const SizedBoxRespo(
          mobile: 0.2,
          desktop: 0.3,
          tablet: 0.05,
          else1: 0.05,
        ),
      ],
    );
  }
}
