import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/pages/authentication/login/validate.dart';
import '../../../utils/colors.dart';
class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => ForgotPage();
}
class ForgotPage extends State<Forgot> {
    final TextEditingController _phonenoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                          "Forgot Password?",
                          style: TextStyle(
                              color: whitemodeColor["greyshade5"],
                              fontFamily: "Montserrat",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07,
                          ),
                          child:  Text(
                            "Enter your Phone Number",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: whitemodeColor["greyshade6"],
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03,
                            left: MediaQuery.of(context).size.width * 0.08,
                            right: MediaQuery.of(context).size.width * 0.08,
                          ),
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: whitemodeColor["white"],
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                color: whitemodeColor["greyshade3"],
                                spreadRadius: 0,
                                blurRadius: 0.1,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _phonenoController,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.phone),
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                  color:
                                      whitemodeColor["greyshade4"],
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          14),
                              border: InputBorder.none,
                            ),
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
                                    builder: (context) => const Validate()),
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
                                "Send OTP",
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
