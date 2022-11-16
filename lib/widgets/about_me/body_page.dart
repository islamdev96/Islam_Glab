import 'package:flutter/material.dart';

import '../../ui/shared/Sized_box_respo.dart';
import '../about_me/build_experience.dart';
import '../card_title.dart';
import 'skills_about_widget.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxRespo(
          mobile: 0.06,
          desktop: 0.3,
          tablet: 0.05,
          else1: 0.05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01,
            vertical: MediaQuery.of(context).size.height * 0.009,
          ),
          child: GestureDetector(
            child: CardTitle(
              title: 'Experience',
            ),
          ),
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
        const SkillsAboutWidget(),
        const SizedBoxRespo(
          mobile: 0.2,
          desktop: 0.2,
          tablet: 0.3,
          else1: 0.3,
        ),
      ],
    );
  }
}
