import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';
import 'login.dart';

class Successful extends StatefulWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  State<Successful> createState() => SuccessfulPage();
}

class SuccessfulPage extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    bottom: MediaQuery.of(context).size.height * 0),
                child: SvgPicture.asset("assets/logo.svg"),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03,
                    right: MediaQuery.of(context).size.width * 0.02),
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03,
                ),
                decoration: BoxDecoration(
                  color: whitemodeColor["white"],
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: whitemodeColor["greyshade3"],
                      spreadRadius: 0,
                      blurRadius: 0.1,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.06,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15,
                        right: MediaQuery.of(context).size.width * 0.15,
                        top: MediaQuery.of(context).size.height * 0.06),
                    child: Column(
                      children: [
                        Text(
                          "Password Reset Successful !",textAlign: TextAlign.center,
                          style: TextStyle(
                              color: whitemodeColor["greyshade10"],
                              fontFamily: "k2d",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 22,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                          ),
                          child: const Text(
                            "You can use your new password to login to your account",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03,
                            bottom: MediaQuery.of(context).size.height * 0.05,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    whitemodeColor["primary"],
                                    whitemodeColor["primaryshade"],
                                  ],
                                ),
                              ),
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.015,
                                left: MediaQuery.of(context).size.width * 0.15,
                                right: MediaQuery.of(context).size.width * 0.15,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: whitemodeColor["white"],
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            16,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
