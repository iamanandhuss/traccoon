import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/pages/intro/rout.dart';
import 'package:traccoon/utils/colors.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);
  @override
  State<Location> createState() => LocationPage();
}
class LocationPage extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Text(
              "Please turn-on your location",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color:whitemodeColor["greyshade12"],
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.textScaleFactorOf(context) * 22,
                  fontFamily: "k2d"),
            ),
          )),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.2,
                right: MediaQuery.of(context).size.width * 0.2),
            child: Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whitemodeColor["greyshade1"],
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      bottom: MediaQuery.of(context).size.height*0.03
                     ),
            child: Center(
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
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.1,
                              top: MediaQuery.of(context).size.height * .01,
                              bottom: MediaQuery.of(context).size.height * 0.01)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Rout()));
                    },
                                    
                      child: Text(
                        "TURN ON",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.textScaleFactorOf(context) * 12,
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
