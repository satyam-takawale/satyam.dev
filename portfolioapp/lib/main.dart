import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/utils/gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle menuTextStyle = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);

  TextStyle nameTextStyle = GoogleFonts.ibmPlexSans(
      color: Colors.white, fontSize: 45, fontWeight: FontWeight.w700);

  TextStyle namesubtitleTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromRGBO(136, 136, 136, 1),
      fontSize: 16,
      fontWeight: FontWeight.w400);
  TextStyle companyNameTextStyle = GoogleFonts.ibmPlexSans(
      color: const Color.fromARGB(255, 95, 95, 95),
      fontSize: 16,
      fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Header(menuTextStyle: menuTextStyle),
            Bio(
                nameTextStyle: nameTextStyle,
                namesubtitleTextStyle: namesubtitleTextStyle,
                companyNameTextStyle: companyNameTextStyle)
          ],
        ),
      ),
    );
  }
}

class Bio extends StatelessWidget {
  const Bio({
    Key? key,
    required this.nameTextStyle,
    required this.namesubtitleTextStyle,
    required this.companyNameTextStyle,
  }) : super(key: key);

  final TextStyle nameTextStyle;
  final TextStyle namesubtitleTextStyle;
  final TextStyle companyNameTextStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 672,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I'm Satyam Takawale.",
                style: nameTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(children: [
                Text("I work as a software developer at ",
                    style: namesubtitleTextStyle),
                GradientText(
                  "Biencaps Systems",
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
              Text(
                  "I love to develop best in class apps, obsessed with designing fluid interfaces, and perfectionist at heart.",
                  style: namesubtitleTextStyle),
            ],
          )),
          SizedBox(
            height: 122,
            width: 122,
            child: Center(
              child: ClipOval(
                  child: SizedBox(
                      height: 105,
                      width: 105,
                      child: Image.asset("assets/images/profile.jpg"))),
            ),
          )
        ],
      ),
    );
  }
}

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
        SizedBox(
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
        ),
        const SizedBox(
          height: 64,
        ),
      ],
    );
  }
}
