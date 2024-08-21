import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:traccoon/pages/intro/location.dart';
import 'package:traccoon/utils/colors.dart';
import '../../utils/globals.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => OtpPage();
}

class OtpPage extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 370 &&
        MediaQuery.of(context).size.width < 380) {
      signinpad = 0.1;
      padd=0.12;
    } else if (MediaQuery.of(context).size.width >= 380 &&
        MediaQuery.of(context).size.width < 400) {
      signinpad = 0.1;
      padd=0.13;
    } else if (MediaQuery.of(context).size.width >= 300 &&
        MediaQuery.of(context).size.width < 370) {
      signinpad = 0.08;
      padd=0.1;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 1000) {
      signinpad = 0.2;
      padd=0.18;
    } else if (MediaQuery.of(context).size.width < 300) {
      signinpad = 0.02;
      padd=0.02;
    } else if (MediaQuery.of(context).size.width <414) {
      signinpad = 0.08;
      padd=0.14;
    } else if (MediaQuery.of(context).size.width >= 270 &&
        MediaQuery.of(context).size.width < 300) {
      padd = 0.0;
      signinpad = 0;
    }
    else {
      signinpad = 0.08;
      padd=0.15;
    }
    return Scaffold(
      body: ListView(
        children: [
           Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                  child: SvgPicture.asset("assets/logo.svg"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.09,
                  ),
                  child: Center(
                      child: Text(
                    "Accout Verification",
                    style: TextStyle(
                        color: whitemodeColor["greyshade2"],
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 20),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.18,
                      right: MediaQuery.of(context).size.width * 0.18),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                    style: TextStyle(
                        color: whitemodeColor["greyshade1"],
                        fontFamily: "k2d",
                        fontSize: MediaQuery.textScaleFactorOf(context) * 17),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: OtpTextField(
                    numberOfFields: 4,
                    borderColor: whitemodeColor["greyshade7"],
                    showFieldAsBox: false,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * padd),
                  child: Text("Don’t receive the OTP",
                      style: TextStyle(
                        color: whitemodeColor["greyshade1"],
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width * signinpad),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Resend OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: "k2d",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 15,
                              color: whitemodeColor["primaryshade2"])),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Location()));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            whitemodeColor["primary"]),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.24,
                                right: MediaQuery.of(context).size.width * 0.24,
                                top: MediaQuery.of(context).size.height * .01,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.01)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Location()));
                      },
                      child: Text(
                        "VERIFY",
                        style: TextStyle(
                            color: whitemodeColor["white"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 12,
                            fontFamily: "K2D",
                            fontWeight: FontWeight.w700),
                      )),
                )),
          )
        ],
      ),
    );
  }
}
