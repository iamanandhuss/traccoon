import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/pages/authentication/login/forgot.dart';
import 'package:traccoon/pages/authentication/register.dart';
import '../../../utils/globals.dart';
import '../../../utils/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginPage();
}

class LoginPage extends State<Login> {
  final TextEditingController _studentidcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 370 &&
        MediaQuery.of(context).size.width < 380) {
      signinpad = 0.15;
      padd = 0.09;
    } else if (MediaQuery.of(context).size.width >= 390 &&
        MediaQuery.of(context).size.width < 400) {
      signinpad = 0.18;
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
      padd = 0.02;
    } else {
      signinpad = 0.22;
      padd = 0.09;
    }
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: SvgPicture.asset("assets/logo.svg"),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                    "Please sign in for the service of Traccoon mobile app",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: whitemodeColor["greyshade2"],
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 22),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                  style: TextStyle(
                      color: whitemodeColor["greyshade1"],
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.07,
                  right: MediaQuery.of(context).size.width * 0.07,
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
                  controller: _studentidcontroller,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Student ID",
                    hintStyle: TextStyle(
                        color: whitemodeColor["greyshade4"],
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.07,
                  right: MediaQuery.of(context).size.width * 0.07,
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
                  controller: _passwordController,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: whitemodeColor["greyshade4"],
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.07),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgot()));
                    },
                    child: Text("Forgot password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: whitemodeColor["primary"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "K2D")),
                  )),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * padd),
                child: Row(
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                          color: whitemodeColor["greyshade1"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:
                                MediaQuery.of(context).size.width * signinpad),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: whitemodeColor["primary"],
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "k2d"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.height*0.03
                    ),
                child: Center(
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
                                left: MediaQuery.of(context).size.width * 0.15,
                                right: MediaQuery.of(context).size.width * 0.15,
                                top: MediaQuery.of(context).size.height * .01,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.01)),
                      ),
                      onPressed: () {
                        logdetail();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Successful()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1,
                            top: MediaQuery.of(context).size.height * .01,
                            bottom: MediaQuery.of(context).size.height * 0.01),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: whitemodeColor["white"],
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 18,
                              fontFamily: "K2D",
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget logdetail() {
    log.addAll({
      "id": _studentidcontroller.text,
      "password": _passwordController.text
    });
    return const Text("data");
  }
}
