import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'register.dart';
import '../../utils/colors.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => IntroPage();
}

class IntroPage extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: SvgPicture.asset("assets/logo.svg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: SvgPicture.asset(
                "assets/ellipse.svg",
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: whitemodeColor["greyshade1"],
                      fontSize: MediaQuery.textScaleFactorOf(context) * 17,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  bottom: MediaQuery.of(context).size.height * 0.03),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        whitemodeColor["primary"]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.18,
                            right: MediaQuery.of(context).size.width * 0.18,
                            top: MediaQuery.of(context).size.height * .01,
                            bottom: MediaQuery.of(context).size.height * 0.01)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Register()));
                  },
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: whitemodeColor["white"],
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                        fontFamily: "K2D",
                        fontWeight: FontWeight.w700),
                  )),
            )
          ],
        )
      ],
    ));
  }
}
