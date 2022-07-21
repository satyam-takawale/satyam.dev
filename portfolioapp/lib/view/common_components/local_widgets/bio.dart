import 'package:flutter/material.dart';
import 'package:portfolioapp/constants/constants.dart';
import 'package:portfolioapp/utils/gradient_text.dart';

class Bio extends StatelessWidget {
  const Bio(
      {Key? key,
      required this.nameTextStyle,
      required this.nameSubtitleTextStyle,
      required this.nameTextStyleForWeb,
      required this.companyNameTextStyle,
      required this.footerTextStyle})
      : super(key: key);

  final TextStyle nameTextStyle;
  final TextStyle nameSubtitleTextStyle;
  final TextStyle companyNameTextStyle;
  final TextStyle footerTextStyle;
  final TextStyle nameTextStyleForWeb;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 672,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 672 ? 0 : 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (MediaQuery.of(context).size.width < 672)
              SizedBox(
                height: 122,
                width: 80,
                child: Center(
                  child: ClipOval(
                      child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(AssetName.profileImage))),
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Greeting Message
                    Text(
                      AppStrings.greetingMessage,
                      style: MediaQuery.of(context).size.width > 672
                          ? nameTextStyle
                          : nameTextStyleForWeb,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    /// Current Position
                    Wrap(children: [
                      Text("I work as a ${AppStrings.currentPosition} at ",
                          style: nameSubtitleTextStyle),
                      GradientText(
                        AppStrings.currentCompany,
                        style: companyNameTextStyle,
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade400,
                          Colors.blue.shade900,
                        ]),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),

                    /// Bio Description
                    Text(AppStrings.bioDescription,
                        style: nameSubtitleTextStyle),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("My favorite tech", style: footerTextStyle),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const FlutterLogo(size: 16),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Flutter', style: footerTextStyle)
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(AssetName.dartLogo),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Dart', style: footerTextStyle)
                          ],
                        )
                      ],
                    )
                  ],
                )),
                if (MediaQuery.of(context).size.width > 672)
                  SizedBox(
                    height: 122,
                    width: 122,
                    child: Center(
                      child: ClipOval(
                          child: SizedBox(
                              height: 105,
                              width: 105,
                              child: Image.asset(AssetName.profileImage))),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
