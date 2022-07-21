import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.footerTextStyle,
  }) : super(key: key);

  final TextStyle footerTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: SizedBox(
        width: 672,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1,
              color: const Color.fromRGBO(34, 34, 34, 1),
            ),
            const SizedBox(
              height: 36,
            ),
            MediaQuery.of(context).size.width > 672
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Home",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Twitter",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "GitHub",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Snippets",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Books",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Articles",
                            style: footerTextStyle,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Twitter",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "GitHub",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Snippets",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Books",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Articles",
                          style: footerTextStyle,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width > 672 ? 0 : 22),
              child: Text(
                "Original Portfolio by Lee Robinson.",
                style: footerTextStyle,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
