import 'package:flutter/material.dart';
import 'package:portfolioapp/constants/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {Key? key,
      required this.experiencePositionTextStyle,
      required this.experienceCompanyNameTextStyle,
      required this.experienceDescriptionTextStyle,
      required this.description,
      required this.projectName})
      : super(key: key);

  final TextStyle experiencePositionTextStyle;
  final TextStyle experienceCompanyNameTextStyle;
  final TextStyle experienceDescriptionTextStyle;
  final String projectName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border:
              Border.all(width: 1, color: const Color.fromRGBO(34, 34, 34, 1))),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (MediaQuery.of(context).size.width > 672)
          //   ClipOval(
          //     child: SizedBox(
          //       height: 40,
          //       width: 40,
          //       child: Image.asset(companyLogo),
          //     ),
          //   ),
          // const SizedBox(
          //   width: 12,
          // ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(projectName, style: experiencePositionTextStyle),
                const SizedBox(
                  height: 8,
                ),
                Text(description, style: experienceDescriptionTextStyle),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const FlutterLogo(size: 16),
                    const SizedBox(
                      width: 8,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Image.asset(AssetName.dartLogo),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
