import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {Key? key,
      required this.experiencePositionTextStyle,
      required this.experienceCompanyNameTextStyle,
      required this.experienceDescriptionTextStyle,
      required this.companyLogo,
      required this.companyName,
      required this.description,
      required this.duration,
      required this.role})
      : super(key: key);

  final TextStyle experiencePositionTextStyle;
  final TextStyle experienceCompanyNameTextStyle;
  final TextStyle experienceDescriptionTextStyle;
  final String companyName;
  final String role;
  final String duration;
  final String description;
  final String companyLogo;

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
          if (MediaQuery.of(context).size.width > 672)
            ClipOval(
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(companyLogo),
              ),
            ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(role, style: experiencePositionTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(companyName,
                              style: experienceCompanyNameTextStyle)
                        ],
                      ),
                    ),
                    Text(duration, style: experienceCompanyNameTextStyle),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(description, style: experienceDescriptionTextStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
