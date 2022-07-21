import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.menuTextStyle,
  }) : super(key: key);

  final TextStyle menuTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        MediaQuery.of(context).size.width > 672
            ? SizedBox(
                width: 672,
                child: Row(
                  children: [
                    Text(
                      "Home",
                      style: menuTextStyle,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Projects", style: menuTextStyle),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Snippets",
                      style: menuTextStyle,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Dashboard", style: menuTextStyle),
                    Container()
                  ],
                ),
              )
            : SizedBox(
                width: 672,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 22,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
        const SizedBox(
          height: 64,
        ),
      ],
    );
  }
}
