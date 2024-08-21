import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';
import 'package:traccoon/utils/globals.dart';
import 'routes.dart';

class Shedule extends StatefulWidget {
  const Shedule({Key? key}) : super(key: key);

  @override
  State<Shedule> createState() => ShedulePage();
}

class ShedulePage extends State<Shedule> {
  final List<String> items = [
    'route1',
    'route2',
    'route3',
    'route4',
  ];
  var buses = ["Bus 1 & 2", "Bus 1 ", "Bus 2 "];
  var times = [
"08:30 AM",
"10:00 AM",
"03:00 AM",
"05:00 pm"
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 370 &&
        MediaQuery.of(context).size.width < 380) {
      sedpadd = 0.35;
      foldpadd = .25;
      routewidth = 0.4;
      bus1 = 0.44;
      bus2 = 0.278;
    } else if (MediaQuery.of(context).size.width >= 412 &&
        MediaQuery.of(context).size.width < 415) {
      sedpadd = 0.4;
      foldpadd = .25;
      routewidth = 0.4;
      bus1 = 0.44;
      bus2 = 0.278;
    } else if (MediaQuery.of(context).size.width >= 390 &&
        MediaQuery.of(context).size.width < 394) {
      sedpadd = 0.35;
      foldpadd = .25;
      routewidth = 0.4;
      bus1 = 0.44;
      bus2 = 0.278;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width < 1000) {
      sedpadd = 0.52;
      foldpadd = .25;
      routewidth = 0.4;
      bus1 = 0.54;
      bus2 = 0.41;
    } else if (MediaQuery.of(context).size.width <= 360 &&
        MediaQuery.of(context).size.width > 300) {
      sedpadd = 0.33;
      foldpadd = .25;
      routewidth = 0.4;
      bus1 = 0.44;
      bus2 = 0.278;
    } else if (MediaQuery.of(context).size.width < 300) {
      sedpadd = 0.1;
      foldpadd = 0.02;
      routewidth = 0.55;
      bus1 = 0.24;
      bus2 = 0.04;
    } else {
      sedpadd = 0.2;
      foldpadd = 0.12;
      routewidth = 0.4;
      bus1 = 0.44;
      bus2 = 0.278;
    }
    return Scaffold(
        body: ListView(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      whitemodeColor["primaryshade5"]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.33,
                          right: MediaQuery.of(context).size.width * 0.33,
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.02)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Routes()));
                },
                child: Text(
                  " VIEW BUS ROUTES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: whitemodeColor["white"],
                      fontSize: MediaQuery.textScaleFactorOf(context) * 12,
                      fontFamily: "K2D",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: whitemodeColor["greenshade1"],
              shape: BoxShape.rectangle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03,
                          left: MediaQuery.of(context).size.width * 0.02),
                      child: Text(
                        "12 Aug 2021",
                        style: TextStyle(
                            color: whitemodeColor["greyshade15"],
                            fontFamily: "k2d",
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width * foldpadd,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: [
                              SvgPicture.asset("assets/bus.svg"),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  child: Text(
                                    'Route 1',
                                    style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            14,
                                        fontWeight: FontWeight.w700,
                                        color: whitemodeColor["greyshade12"],
                                        fontFamily: "k2d"),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: whitemodeColor["black"],
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                          iconSize: 20,
                          iconEnabledColor: whitemodeColor["black"],
                          iconDisabledColor: whitemodeColor["greyshade17"],
                          buttonHeight: 40,
                          buttonWidth:
                              MediaQuery.of(context).size.width * routewidth,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: whitemodeColor["white"],
                          ),
                          buttonElevation: 2,
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 152,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: whitemodeColor["white"],
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius: const Radius.circular(40),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: true,
                          offset: const Offset(0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: whitemodeColor["greyshade15"],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * sedpadd),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            color: whitemodeColor["blueshade1"],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text(
                              "Start Point ",
                              style: TextStyle(
                                  color: whitemodeColor["white"],
                                  fontFamily: "k2d",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: whitemodeColor["white"],
                              size: 10,
                            ),
                            Text(
                              "End Point ",
                              style: TextStyle(
                                  color: whitemodeColor["white"],
                                  fontFamily: "k2d",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .08,
                              top: MediaQuery.of(context).size.height * .02),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(times[0],
                                        style: TextStyle(
                                            color: whitemodeColor["white"],
                                            fontFamily: "k2d",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              bus1),
                                      child: Text(buses[0],
                                          style: TextStyle(
                                              color: whitemodeColor["white"],
                                              fontFamily: "k2d",
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      18,
                                              fontWeight: FontWeight.w700)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          .03),
                                  child: Row(
                                    children: [
                                      Text(times[1],
                                          style: TextStyle(
                                              color: whitemodeColor["white"],
                                              fontFamily: "k2d",
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      18,
                                              fontWeight: FontWeight.w700)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                        child: Text(
                                          "(Active)",
                                          style: TextStyle(
                                              color: whitemodeColor[
                                                  "greenshade6"]),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                bus2),
                                        child: Text(buses[0],
                                            style: TextStyle(
                                                color: whitemodeColor["white"],
                                                fontFamily: "k2d",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          .03),
                                  child: Row(
                                    children: [
                                      Text(times[2],
                                          style: TextStyle(
                                              color: whitemodeColor["white"],
                                              fontFamily: "k2d",
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                bus1),
                                        child: Text(buses[1],
                                            style: TextStyle(
                                                color: whitemodeColor["white"],
                                                fontFamily: "k2d",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          .03),
                                  child: Row(
                                    children: [
                                      Text(times[3],
                                          style: TextStyle(
                                              color: whitemodeColor["white"],
                                              fontFamily: "k2d",
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                bus1),
                                        child: Text(buses[2],
                                            style: TextStyle(
                                                color: whitemodeColor["white"],
                                                fontFamily: "k2d",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                ),
                              ])),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * sedpadd),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            color: whitemodeColor["blueshade1"],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text(
                              "End Point ",
                              style: TextStyle(
                                  color: whitemodeColor["white"],
                                  fontFamily: "k2d",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: whitemodeColor["white"],
                              size: 10,
                            ),
                            Text(
                              "Start Point ",
                              style: TextStyle(
                                  color: whitemodeColor["white"],
                                  fontFamily: "k2d",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .08,
                            top: MediaQuery.of(context).size.height * .02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(times[0],
                                    style: TextStyle(
                                        color: whitemodeColor["white"],
                                        fontFamily: "k2d",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          bus1),
                                  child: Text(buses[0],
                                      style: TextStyle(
                                          color: whitemodeColor["white"],
                                          fontFamily: "k2d",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * .03),
                              child: Row(
                                children: [
                                  Text(times[1],
                                      style: TextStyle(
                                          color: whitemodeColor["white"],
                                          fontFamily: "k2d",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                bus1),
                                    child: Text(buses[0],
                                        style: TextStyle(
                                            color: whitemodeColor["white"],
                                            fontFamily: "k2d",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * .03),
                              child: Row(
                                children: [
                                  Text(times[2],
                                      style: TextStyle(
                                          color: whitemodeColor["white"],
                                          fontFamily: "k2d",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                bus1),
                                    child: Text(buses[1],
                                        style: TextStyle(
                                            color: whitemodeColor["white"],
                                            fontFamily: "k2d",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * .03),
                              child: Row(
                                children: [
                                  Text(times[3],
                                      style: TextStyle(
                                          color: whitemodeColor["white"],
                                          fontFamily: "k2d",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                bus1),
                                    child: Text(buses[2],
                                        style: TextStyle(
                                            color: whitemodeColor["white"],
                                            fontFamily: "k2d",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ]));
  }
}
