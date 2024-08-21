import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => ProfilePage();
}

class ProfilePage extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: whitemodeColor["white"],
            leading: BackButton(
              color: whitemodeColor["black"],
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              SvgPicture.asset("assets/logo1.svg"),
            ]),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: whitemodeColor["greyshade12"],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Text("Full Name",
                      style: TextStyle(
                          fontFamily: "k2d",
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: whitemodeColor["black"])),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.height * 0.15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/id-badge.svg",
                          width: MediaQuery.of(context).size.width * .04),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08,
                        ),
                        child: Text(
                          "11003453",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whitemodeColor["black"]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.height * 0.15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/envelope.svg",
                        width: MediaQuery.of(context).size.width * .04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08,
                        ),
                        child: Text(
                          "user@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whitemodeColor["black"]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.height * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/phone-office.svg",
                        width: MediaQuery.of(context).size.width * .04),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08),
                      child: Text(
                        "+91 9835442743",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: whitemodeColor["black"]),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.height * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/graduation-cap.svg",
                        color: whitemodeColor["black"],
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width * 0.02),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08),
                      child: Text(
                        "Bsc.Computer Science ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: whitemodeColor["black"]),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.height * 0.15),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/calendar (1).svg",
                          width: MediaQuery.of(context).size.width * .04),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text(
                          "2nd",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whitemodeColor["black"]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.height * 0.03),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        whitemodeColor["orengeshade4"]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * 0.05,
                            top: MediaQuery.of(context).size.height * 0.01,
                            bottom: MediaQuery.of(context).size.height * 0.01)),
                  ),
                  onPressed: () {},
                  child: Text(
                    " LOG OUT",
                    style: TextStyle(
                        color: whitemodeColor["white"],
                        fontSize: MediaQuery.textScaleFactorOf(context) * 12,
                        fontFamily: "K2D",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Campus Contact",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 17,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  "Address, street no, Place ",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "+91  7865222340 ",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "+91  9877365122 ",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "demo@gmail.com",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  " www.demo.com ",
                  style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
