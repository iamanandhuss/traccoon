import 'package:flutter/material.dart';
import '../../../../../utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);
  @override
  State<FAQ> createState() => FAQPage();
}

class FAQPage extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  child: Image.asset("ask.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  child: Center(
                    child: Text(
                      "Frequently Asked Questions",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          color: whitemodeColor["bluelight"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Search',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: whitemodeColor["grey"]),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                prefixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.search,
                                        color: whitemodeColor["blackshade"],
                                        size: 24,
                                      ),
                                      Text('Search',
                                          style: TextStyle(
                                              color:
                                                  whitemodeColor["blackshade"],
                                              fontSize: 13,
                                              fontFamily: "Montserrat")),
                                    ]))))),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel lorem at felis viverra?",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel lorem at felis viverra?",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel lorem at felis viverra?",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel lorem at felis viverra?",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel lorem at felis viverra?",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: whitemodeColor["black"])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori",
                      style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: whitemodeColor["black"])),
                ),
              ])
            ])));
  }
}
