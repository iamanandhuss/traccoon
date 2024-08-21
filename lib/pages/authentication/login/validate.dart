import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:traccoon/utils/globals.dart';
import 'dart:async';
import 'reset.dart';
import '../../../utils/colors.dart';
import './invalidotp.dart';

class Validate extends StatefulWidget {
  const Validate({Key? key}) : super(key: key);

  @override
  State<Validate> createState() => ValidatePage();
}

class ValidatePage extends State<Validate> {
  final interval = const Duration(seconds: 1);


  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {if (MediaQuery.of(context).size.width >= 370 &&
        MediaQuery.of(context).size.width < 380) {
      signinpad = 0.06;
      padd = 0.09;
    } else if (MediaQuery.of(context).size.width >= 390 &&
        MediaQuery.of(context).size.width < 400) {
      signinpad = 0.1;
      padd = 0.09;
    } else if (MediaQuery.of(context).size.width >= 300 &&
        MediaQuery.of(context).size.width < 370) {
      signinpad = 0.08;
      padd = 0.09;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 1000) {
      signinpad = 0.33;
      padd = 0.09;
    } else if (MediaQuery.of(context).size.width < 300) {
      signinpad = 0.0;
      padd = 0.0;
    }
    else if (MediaQuery.of(context).size.width <=414) {
      signinpad = 0.2;
      padd = 0.02;
    } else {
      signinpad = 0.15;
      padd = 0.09;
    }
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .02,
                    left: MediaQuery.of(context).size.width * .02),
                child: BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: SvgPicture.asset("assets/logo.svg"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
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
                      top: MediaQuery.of(context).size.height * 0.06),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Validate OTP",
                          style: TextStyle(
                              color:  whitemodeColor["greyshade5"],
                              fontFamily: "Montserrat",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                          ),
                          child:  Text(
                            "An OTP has been sent to demo@gmail.com",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: whitemodeColor["greyshade6"],
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child:  Text(
                            "Enter OTP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: whitemodeColor["greyshade6"],
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        OtpTextField(
                          numberOfFields: 4,
                          borderColor:whitemodeColor["greyshade7"],
                          showFieldAsBox: false,
                          onCodeChanged: (String code) {},
                       
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Center(
                                child: Text(
                              timerText,
                              style:  TextStyle(color: whitemodeColor["greyshade8"]),
                            ))),
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
                                    builder: (context) => const Reset()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                gradient:  LinearGradient(
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
                                left: MediaQuery.of(context).size.width * 0.1,
                                right: MediaQuery.of(context).size.width * 0.1,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              child: Text(
                                "Verify OTP",
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
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * padd,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.06,
                              ),
                              child: Text(
                                "Didn’t receive OTP code?",
                                style: TextStyle(
                                    color:
                                        whitemodeColor["greyshade9"],
                                    fontFamily: " k2d",
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:  (context) => const Invalid()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * signinpad,
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      color:
                                          whitemodeColor["greyshade9"],
                                      fontFamily: "Montserrat",
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
