import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {Key? key,
      required this.sectionTitleTextStyle,
      required this.nameSubtitleTextStyle,
      required this.sectionSubTitle,
      required this.sectionTitleTextStyleForWeb,
      required this.sectionTitle})
      : super(key: key);

  final String sectionTitle;
  final String sectionSubTitle;
  final TextStyle sectionTitleTextStyle;
  final TextStyle nameSubtitleTextStyle;
  final TextStyle sectionTitleTextStyleForWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 64,
        ),
        Text(
          sectionTitle,
          style: MediaQuery.of(context).size.width > 672
              ? sectionTitleTextStyle
              : sectionTitleTextStyleForWeb,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          sectionSubTitle,
          style: nameSubtitleTextStyle,
        ),
      ],
    );
  }
}
