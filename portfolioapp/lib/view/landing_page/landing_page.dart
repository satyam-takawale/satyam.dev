import 'package:flutter/material.dart';
import 'package:portfolioapp/constants/constants.dart';
import 'package:portfolioapp/theme/app_textstyles.dart';
import 'package:portfolioapp/view/common_components/common_components.dart';
import 'package:portfolioapp/view/common_components/local_widgets/project_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: SizedBox(
        width: double.infinity,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Header(menuTextStyle: AppTextStyles.menuTextStyle),
                Bio(
                    nameTextStyle: AppTextStyles.nameTextStyle,
                    nameTextStyleForWeb: AppTextStyles.nameTextStyleForWeb,
                    nameSubtitleTextStyle: AppTextStyles.nameSubtitleTextStyle,
                    companyNameTextStyle: AppTextStyles.companyNameTextStyle,
                    footerTextStyle: AppTextStyles.footerTextStyle),
                SizedBox(
                  width: 672,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.width > 672 ? 0 : 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHeader(
                            sectionTitle: "Work Experience",
                            sectionSubTitle: "My work experience so far.",
                            sectionTitleTextStyle:
                                AppTextStyles.sectionTitleTextStyle,
                            nameSubtitleTextStyle:
                                AppTextStyles.nameSubtitleTextStyle,
                            sectionTitleTextStyleForWeb:
                                AppTextStyles.sectionTitleTextStyleForWeb),
                        const SizedBox(
                          height: 16,
                        ),
                        ExperienceCard(
                          experiencePositionTextStyle:
                              AppTextStyles.experiencePositionTextStyle,
                          experienceCompanyNameTextStyle:
                              AppTextStyles.experienceCompanyNameTextStyle,
                          experienceDescriptionTextStyle:
                              AppTextStyles.experienceDescriptionTextStyle,
                          companyLogo: AssetName.biencapsLogo,
                          companyName: AppStrings.currentCompany,
                          description:
                              'I work as a Software Developer at Biencaps Systems Pvt Ltd. Biencaps enables you to invest in ideas rather than in stocks based on market capitalisation.',
                          duration: 'Jan 2020 - Present • Full time',
                          role: 'Software Developer',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ExperienceCard(
                          experiencePositionTextStyle:
                              AppTextStyles.experiencePositionTextStyle,
                          experienceCompanyNameTextStyle:
                              AppTextStyles.experienceCompanyNameTextStyle,
                          experienceDescriptionTextStyle:
                              AppTextStyles.experienceDescriptionTextStyle,
                          companyLogo: AssetName.biencapsLogo,
                          companyName: AppStrings.currentCompany,
                          description:
                              'I work on an Anonymous Social Media Platform for Corporate people to share their company experiences. I picked up and learnt Flutter from ground up during my internship.',
                          duration: 'June 2019 - Jan 2020 • 6 months',
                          role: 'Software Development Intern',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 672,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.width > 672 ? 0 : 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHeader(
                            sectionTitle: "Projects",
                            sectionSubTitle:
                                "I created a few projects to learn more about the technologies I use. You can check them out here. Let me know what you think!",
                            sectionTitleTextStyle:
                                AppTextStyles.sectionTitleTextStyle,
                            nameSubtitleTextStyle:
                                AppTextStyles.nameSubtitleTextStyle,
                            sectionTitleTextStyleForWeb:
                                AppTextStyles.sectionTitleTextStyleForWeb),
                        const SizedBox(
                          height: 16,
                        ),
                        ProjectCard(
                          experiencePositionTextStyle:
                              AppTextStyles.experiencePositionTextStyle,
                          experienceCompanyNameTextStyle:
                              AppTextStyles.experienceCompanyNameTextStyle,
                          experienceDescriptionTextStyle:
                              AppTextStyles.experienceDescriptionTextStyle,
                          description:
                              ' is a place to share and see what your friends are upto.',
                          projectName: 'Core2web',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ProjectCard(
                          experiencePositionTextStyle:
                              AppTextStyles.experiencePositionTextStyle,
                          experienceCompanyNameTextStyle:
                              AppTextStyles.experienceCompanyNameTextStyle,
                          experienceDescriptionTextStyle:
                              AppTextStyles.experienceDescriptionTextStyle,
                          description:
                              'I work on an Anonymous Social Media Platform for Corporate people to share their company experiences. I picked up and learnt Flutter from ground up during my internship.',
                          projectName: 'Core2web',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                Footer(
                  footerTextStyle: AppTextStyles.footerTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
