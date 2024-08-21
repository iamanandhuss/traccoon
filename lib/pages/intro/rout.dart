import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/pages/dashboard/home.dart';
import 'package:traccoon/utils/colors.dart';

class Rout extends StatefulWidget {
  const Rout({Key? key}) : super(key: key);

  @override
  State<Rout> createState() => RoutPage();
}

class RoutPage extends State<Rout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [Padding(
              padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
              child: SvgPicture.asset("assets/logo.svg"),
            )],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Text(
              "Select your route",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color:whitemodeColor["greyshade12"],
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.textScaleFactorOf(context) * 22),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.height * 0.1,
                  right: MediaQuery.of(context).size.height * 0.1),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color:whitemodeColor["greyshade1"],
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontFamily: "k2d")),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: whitemodeColor["greenshade"],
                          child: SvgPicture.asset("assets/bus.svg"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: Text(
                          "Route 1",
                          style: TextStyle(
                              color: whitemodeColor["greyshade2"],
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: "k2d"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                       GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: whitemodeColor["greenshade1"],
                          child: SvgPicture.asset("assets/bus.svg"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03,
                            left: MediaQuery.of(context).size.width * 0.15,
                            right: MediaQuery.of(context).size.width * 0.15),
                        child: Text(
                          "Route 2",
                          style: TextStyle(
                              color: whitemodeColor["greyshade2"],
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: "k2d"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                       GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: whitemodeColor["greenshade1"],
                          child: SvgPicture.asset("assets/bus.svg"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: Text(
                          "Route 3",
                          style: TextStyle(
                              color:whitemodeColor["greyshade2"],
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: "k2d"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.height * 0.08,
                right: MediaQuery.of(context).size.height * 0.08),
            child: Text(
              "quis - nostrud - exercitation - ullamco - laboris - nisi - ut aliquip - ex ea commodo - consequat",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: whitemodeColor["greyshade13"],
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                  fontFamily: "k2d"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: 
                MediaQuery.of(context).size.height*0.03
               ),
            child: Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      whitemodeColor["primaryshade3"]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.1,
                      top: MediaQuery.of(context).size.height * .01,
                      bottom: MediaQuery.of(context).size.height * 0.01)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                      color: whitemodeColor["white"],
                      fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                      fontFamily: "K2D",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
