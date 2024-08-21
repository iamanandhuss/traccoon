import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:traccoon/utils/colors.dart';
import 'package:traccoon/utils/globals.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => WalletPage();
}

class WalletPage extends State<Wallet> {
  int? a = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 375 &&
        MediaQuery.of(context).size.width < 390) {
      walleft = 0.18;
      walLeft0 = 0.22;
      walib1 = 0.05;
      walib3 = 0.045;
      walibsp = 0.08;
      history = 0.06;
    } else if (MediaQuery.of(context).size.width >= 412 &&
        MediaQuery.of(context).size.width < 415) {
      walleft = 0.18;
      walLeft0 = 0.22;
      walib1 = 0.05;
      walib3 = 0.04;
      walibsp = 0.08;
      history = 0.06;
    } else if (MediaQuery.of(context).size.width <= 360 &&
        MediaQuery.of(context).size.width > 300) {
      walleft = 0.14;
      walLeft0 = 0.20;
      walib1 = 0.01;
      walib3 = 0.040;
      walibsp = 0.035;
      history = 0.06;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 1000) {
      walleft = 0.02;
      walLeft0 = 0.18;
      walib1 = 0.01;
      walib3 = 0.040;
      walibsp = 0.035;
      history = 0.06;
    } else if (MediaQuery.of(context).size.width < 300) {
      walib1 = 0.0;
      walibsp = 0.08;
      history = 0.005;
    } else if (MediaQuery.of(context).size.width >= 390 &&
        MediaQuery.of(context).size.width < 400) {
      walleft = 0.15;
      walLeft0 = 0.18;
      walib1 = 0.01;
      walib3 = 0.040;
      walibsp = 0.035;
      history = 0.06;
    } else {
      walib1 = 0.05;
      walibsp = 0.08;
      history = 0.06;
    }
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: Center(
          child: ToggleSwitch(
            animationDuration: 250,
            animate: true,
            minWidth: 150.0,
            minHeight: 50,
            cornerRadius: 35.0,
            borderColor: [whitemodeColor["black"], whitemodeColor["black"]],
            borderWidth: 1,
            customTextStyles: [
              TextStyle(
                color:
                    a == 0 ? whitemodeColor["white"] : whitemodeColor["black"],
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
              ),
              TextStyle(
                color:
                    a != 0 ? whitemodeColor["white"] : whitemodeColor["black"],
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
              ),
            ],
            activeBgColors: [
              [whitemodeColor["black"]],
              [whitemodeColor["black"]]
            ],
            activeFgColor: whitemodeColor["white"],
            inactiveBgColor: whitemodeColor["white"],
            inactiveFgColor: whitemodeColor["white"],
            initialLabelIndex: a,
            totalSwitches: 2,
            labels: const ['Wallet', 'Library'],
            radiusStyle: true,
            onToggle: (index) {
              setState(() {
                a = index;
              });
            },
          ),
        ),
      ),
      a == 0 ? userwallet(context) : userlibrary(context),
    ]));
  }

//wattet
  Widget userwallet(context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  right: MediaQuery.of(context).size.width * 0.055,
                  left: MediaQuery.of(context).size.width * 0.04),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/card.png"), fit: BoxFit.fill)),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .21,
                      left: MediaQuery.of(context).size.width * 0.01),
                  child: Text(
                    "Total Balance",
                    style: TextStyle(
                        color: whitemodeColor["whiteshade"],
                        fontSize: MediaQuery.textScaleFactorOf(context) * 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: "k2d"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2,
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: Text(
                    "₹ 1050",
                    style: TextStyle(
                        color: whitemodeColor["whiteshade"],
                        fontFamily: "k2d",
                        fontWeight: FontWeight.w800,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 33),
                  ),
                )
              ],
            )
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.height * 0.03),
            child: TextButton.icon(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: whitemodeColor["whiteshade"],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      whitemodeColor["orengeshade"]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: MediaQuery.of(context).size.height * .01,
                          bottom: MediaQuery.of(context).size.height * 0.01)),
                ),
                onPressed: () {},
                label: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Text(
                    "Top Up",
                    style: TextStyle(
                        color: whitemodeColor["white"],
                        fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                        fontFamily: "K2D",
                        fontWeight: FontWeight.w700),
                  ),
                )),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * history,
              ),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.006,
                  bottom: MediaQuery.of(context).size.height * 0.006,
                  left: MediaQuery.of(context).size.width * 0.01,
                  right: MediaQuery.of(context).size.width * 0.02),
              decoration: BoxDecoration(
                  color: whitemodeColor["white"],
                  border: Border.all(color: whitemodeColor["orengeshade1"]),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SvgPicture.asset("assets/vector.svg"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .02),
                    child: Text(
                      "Transaction history   ",
                      style: TextStyle(
                          color: whitemodeColor["greyshade15"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * walib1,
                  top: MediaQuery.of(context).size.height * 0.04,
                  bottom: MediaQuery.of(context).size.height * 0.01),
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Total Spent",
                        style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                            fontWeight: FontWeight.w700)),
                    Text("₹ 2550",
                        style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontSize: MediaQuery.textScaleFactorOf(context) * 26,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
          ],
        ),
        transaction(context, whitemodeColor["greenshade7"]),
        transaction(context, whitemodeColor["orengeshade2"]),
        transaction(context, whitemodeColor["greenshade7"]),
        transaction(context, whitemodeColor["greenshade7"]),
      ],
    );
  }

//library
  Widget userlibrary(context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  right: MediaQuery.of(context).size.width * 0.065,
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.05),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/card.png"), fit: BoxFit.fill)),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .05),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .16,
                    ),
                    child: Text(
                      "Total Balance",
                      style: TextStyle(
                          color: whitemodeColor["whiteshade"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 17,
                          fontWeight: FontWeight.w700,
                          fontFamily: "k2d"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2,
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      "₹ 1050",
                      style: TextStyle(
                          color: whitemodeColor["whiteshade"],
                          fontFamily: "k2d",
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.textScaleFactorOf(context) * 33),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(children: [
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
            ),
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.006,
                bottom: MediaQuery.of(context).size.height * 0.006,
                right: MediaQuery.of(context).size.width * 0.09,
                left: MediaQuery.of(context).size.width * 0.01),
            decoration: BoxDecoration(
                color: whitemodeColor["whiteshade"],
                border: Border.all(
                  color: whitemodeColor["orengeshade3"],
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                SvgPicture.asset("assets/vector.svg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                    "Library history",
                    style: TextStyle(
                        color: whitemodeColor["greyshade15"],
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * walibsp,
                top: MediaQuery.of(context).size.height * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.03),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Total Spent",
                      style: TextStyle(
                          color: whitemodeColor["greyshade15"],
                          fontFamily: " k2d",
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
                Text("₹ 2550",
                    style: TextStyle(
                        color: whitemodeColor["greyshade15"],
                        fontFamily: " k2d",
                        fontSize: 26,
                        fontWeight: FontWeight.w800)),
              ],
            ),
          )
        ]),
        library(context, whitemodeColor["greenshade7"]),
        library(context, whitemodeColor["orengeshade2"]),
        library(context, whitemodeColor["greenshade7"]),
        library(context, whitemodeColor["greenshade7"]),
      ],
    );
  }

  ///2222222222
  Widget transaction(context, Color colr) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).size.height * 0.03),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: whitemodeColor["greyshade2"],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Text(
                  "Transaction history",
                  style: TextStyle(
                      color: whitemodeColor["greyshade2"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.005),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: Text(
                    "09/11/2022",
                    style: TextStyle(
                        color: whitemodeColor["greyshade19"],
                        fontFamily: "k2d",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 15),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * walleft,
              top: MediaQuery.of(context).size.height * 0.02),
          child: Text(
            "+Rs. 200",
            style: TextStyle(
                fontFamily: "k2d",
                fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }

  Widget library(context, Color colr) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).size.height * 0.03),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: whitemodeColor["greyshade2"],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * walib3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Text(
                  "Library history",
                  style: TextStyle(
                      color: whitemodeColor["greyshade2"],
                      fontFamily: "k2d",
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.005),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: Text(
                    "09/11/2022",
                    style: TextStyle(
                        color: whitemodeColor["greyshade19"],
                        fontFamily: "k2d",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.textScaleFactorOf(context) * 15),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * walLeft0,
              top: MediaQuery.of(context).size.height * 0.02),
          child: Text(
            "+Rs. 200",
            style: TextStyle(
                fontFamily: "k2d",
                fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
