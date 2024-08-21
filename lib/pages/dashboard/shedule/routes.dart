import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';
import 'package:traccoon/utils/globals.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => RoutesPage();
}

class RoutesPage extends State<Routes> {
  final List<String> items = [
    'route1',
    'route2',
    'route3',
    'route4',
  ];
  var route = [
    "Kazir bazar",
    "Rikabi bazar",
    "Chowhatta",
    "Noya Sorok",
    "Kumarpara",
    "Eidgah",
    "TB Gate",
    "lijis"
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 300) {
      routpadd = 0.14;
      routewidth = 0.4;
      pading = 0.03;
    } else {
      routpadd = 0.0;
      routewidth = 0.5;
      pading = 0.0;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitemodeColor["white"],
        foregroundColor: whitemodeColor["black"],
        actions: [SvgPicture.asset("assets/logo1.svg")],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
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
                              bottom:
                                  MediaQuery.of(context).size.height * 0.02)),
                    ),
                    onPressed: () {},
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
                // padding: EdgeInsets.only(
                //   left: MediaQuery.of(context).size.width * 0.03,
                //   right: MediaQuery.of(context).size.width * 0.03,
                // ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: whitemodeColor["greenshade1"],
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03,
                              left: MediaQuery.of(context).size.width * pading),
                          child: Text(
                            "Stopage Points",
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
                            left: MediaQuery.of(context).size.width * routpadd,
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
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01),
                                      child: Text(
                                        'Route 1',
                                        style: TextStyle(
                                            fontSize:
                                                MediaQuery.textScaleFactorOf(
                                                        context) *
                                                    14,
                                            fontWeight: FontWeight.w700,
                                            color: whitemodeColor["greyshade2"],
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
                              iconDisabledColor: whitemodeColor["greyshade18"],
                              buttonHeight: 40,
                              buttonWidth: MediaQuery.of(context).size.width *
                                  routewidth,
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
                              dropdownWidth: 150,
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
                          top: MediaQuery.of(context).size.height * 0.02),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04,
                          left: MediaQuery.of(context).size.width * 0.08),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: whitemodeColor["greyshade15"],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          route1(context, route[0]),
                          route2(context),
                          route1(context, route[1]),
                          route2(context),
                          route1(context, route[2]),
                          route2(context),
                          route1(context, route[3]),
                          route2(context),
                          route1(context, route[4]),
                          route2(context),
                          route1(context, route[5]),
                          route2(context),
                          route1(context, route[6]),
                          route2(context),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.05),
                            child: route1(context, route[7]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget route1(context, String label) {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: whitemodeColor["primaryshade6"],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Text(
                label,
                style: TextStyle(
                    color: whitemodeColor["whiteshade"],
                    fontFamily: "k2d",
                    fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget route2(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.019),
          child: Icon(
            Icons.circle,
            size: 8,
            color: whitemodeColor["white"],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.019),
          child: Icon(
            Icons.circle,
            size: 8,
            color: whitemodeColor["white"],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.019,
              bottom: MediaQuery.of(context).size.height * 0.01),
          child: Icon(
            Icons.circle,
            size: 8,
            color: whitemodeColor["white"],
          ),
        ),
      ],
    );
  }
}
