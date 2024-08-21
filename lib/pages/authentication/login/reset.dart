import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/pages/authentication/login/successful.dart';
import 'package:traccoon/utils/colors.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => ResetPage();
}

class ResetPage extends State<Reset> {
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
                          "Reset Password?",
                          style: TextStyle(
                              color: whitemodeColor["greyshade10"],
                              fontFamily: "Montserrat",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 25,
                              fontWeight: FontWeight.w700),
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
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: whitemodeColor["greyshade4"],
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          14),
                              border: InputBorder.none,
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
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                  color: whitemodeColor["greyshade4"],
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
                                    builder: (context) => const Successful()),
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
                                "Reset",
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
