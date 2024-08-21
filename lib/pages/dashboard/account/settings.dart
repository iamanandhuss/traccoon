import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:traccoon/utils/colors.dart';
import 'package:traccoon/utils/globals.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => SettingsPage();
}

class SettingsPage extends State<Settings> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 370 &&
        MediaQuery.of(context).size.width < 380) {
      setpad1 = 0.22;
      setpad2 = 0.12;
      setpad3 = 0.26;
      setpad4 = 0.02;
      setpad5 = 0.16;
      setpad6 = 0.02;
    } else if (MediaQuery.of(context).size.width >= 400 &&
        MediaQuery.of(context).size.width < 500) {
      setpad1 = 0.15;
      setpad2 = 0.13;
      setpad3 = 0.26;
      setpad4 = 0.05;
      setpad5 = 0.18;
      setpad6 = 0.04;
    } else if (MediaQuery.of(context).size.width >= 390 &&
        MediaQuery.of(context).size.width < 400) {
      setpad1 = 0.15;
      setpad2 = 0.11;
      setpad3 = 0.25;
      setpad4 = 0.02;
      setpad5 = 0.15;
      setpad6 = 0.02;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 600) {
      setpad1 = 0.17;
      setpad2 = 0.21;
      setpad3 = 0.31;
      setpad4 = 0.14;
      setpad5 = 0.24;
      setpad6 = 0.16;
    } else if (MediaQuery.of(context).size.width <= 360 &&
        MediaQuery.of(context).size.width > 300) {
      setpad1 = 0.25;
      setpad2 = 0.11;
      setpad3 = 0.26;
      setpad4 = 0.02;
      setpad5 = 0.15;
      setpad6 = 0.02;
    } else if (MediaQuery.of(context).size.width <= 300) {
      setpad1 = 0.05;
      setpad2 = 0.0;
      setpad3 = 0.11;
      setpad4 = 0.02;
      setpad5 = 0.04;
      setpad6 = 0.02;
    }
    return Scaffold(
      appBar: AppBar(
        actions: [SvgPicture.asset("assets/logo1.svg")],
        backgroundColor: whitemodeColor["white"],
        leading: BackButton(
          color: whitemodeColor["black"],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.width * .05),
                child: Text("Absent Setting",
                    style: TextStyle(
                      color: whitemodeColor["greenshade10"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * .07,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mark Kiran as absent",
                        style: TextStyle(
                          color: whitemodeColor["greyshade20"],
                          fontFamily: "k2d",
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                        )),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width) *
                            setpad1,
                        child: FlutterSwitch(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.03,
                          toggleSize: 40.0,
                          value: status,
                          borderRadius: 30.0,
                          padding: 2,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                          activeToggleColor: whitemodeColor["blueshade2"],
                          inactiveToggleColor: whitemodeColor["white"],
                          activeColor: whitemodeColor["white"],
                          switchBorder:
                              Border.all(color: whitemodeColor["blueshade1"]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: MediaQuery.of(context).size.width * .05),
                child: Text("Location Setting",
                    style: TextStyle(
                      color: whitemodeColor["greenshade11"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * .07),
                child: Text("Set pickup location",
                    style: TextStyle(
                      color: whitemodeColor["greyshade15"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.03),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.015,
                    bottom: MediaQuery.of(context).size.height * 0.015,
                    left: MediaQuery.of(context).size.width * 0.04,
                    right: MediaQuery.of(context).size.width * 0.06),
                decoration: BoxDecoration(
                    color: whitemodeColor["white"],
                    border: Border.all(color: whitemodeColor["greenshade11"]),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "192.157.2475.2545656",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: whitemodeColor["greyshade7"],
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * .05),
                child: Text("Notification Setting",
                    style: TextStyle(
                      color: whitemodeColor["greenshade11"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * .07,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Text("When bus arrived at school",
                          style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontWeight: FontWeight.w800,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 20,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * setpad2),
                      child: FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.03,
                        toggleSize: 40.0,
                        value: status2,
                        borderRadius: 30.0,
                        padding: 2,
                        onToggle: (val) {
                          setState(() {
                            status2 = val;
                          });
                        },
                        activeToggleColor: whitemodeColor["blueshade2"],
                        inactiveToggleColor: whitemodeColor["white"],
                        activeColor: whitemodeColor["white"],
                        switchBorder:
                            Border.all(color: whitemodeColor["blueshade1"]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * .07,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Text("When bus left school",
                          style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontWeight: FontWeight.w800,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 20,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * setpad3),
                      child: FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.03,
                        toggleSize: 40.0,
                        value: status3,
                        borderRadius: 30.0,
                        padding: 2,
                        onToggle: (val) {
                          setState(() {
                            status3 = val;
                          });
                        },
                        activeToggleColor: whitemodeColor["blueshade2"],
                        inactiveToggleColor: whitemodeColor["white"],
                        activeColor: whitemodeColor["white"],
                        switchBorder:
                            Border.all(color: whitemodeColor["blueshade1"]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * .07,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Text("When bus arrived at your house",
                          style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontWeight: FontWeight.w800,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 20,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * setpad4),
                      child: FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.03,
                        toggleSize: 40.0,
                        value: status4,
                        borderRadius: 30.0,
                        padding: 2,
                        onToggle: (val) {
                          setState(() {
                            status4 = val;
                          });
                        },
                        activeToggleColor: whitemodeColor["blueshade2"],
                        inactiveToggleColor: whitemodeColor["white"],
                        activeColor: whitemodeColor["white"],
                        switchBorder:
                            Border.all(color: whitemodeColor["blueshade1"]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * .07,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Text("When bus left your house",
                          style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontWeight: FontWeight.w800,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 20,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * setpad5),
                      child: FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.03,
                        toggleSize: 40.0,
                        value: status5,
                        borderRadius: 30.0,
                        padding: 2,
                        onToggle: (val) {
                          setState(() {
                            status5 = val;
                          });
                        },
                        activeToggleColor: whitemodeColor["blueshade2"],
                        inactiveToggleColor: whitemodeColor["white"],
                        activeColor: whitemodeColor["white"],
                        switchBorder:
                            Border.all(color: whitemodeColor["blueshade1"]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * .07),
                child: Row(
                  children: [
                    Flexible(
                      child: Text("When bus is near my home by",
                          style: TextStyle(
                            color: whitemodeColor["greyshade20"],
                            fontFamily: "k2d",
                            fontWeight: FontWeight.w800,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 20,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * setpad6),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.008,
                          bottom: MediaQuery.of(context).size.height * 0.008,
                          left: MediaQuery.of(context).size.width * 0.01,
                          right: MediaQuery.of(context).size.width * 0.01),
                      decoration: BoxDecoration(
                          color: whitemodeColor["white"],
                          border:
                              Border.all(color: whitemodeColor["greenshade11"]),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "1000 meter",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: whitemodeColor["greyshade7"],
                            fontWeight: FontWeight.w300,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
