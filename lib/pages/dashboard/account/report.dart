import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/colors.dart';

class Reports {
  final int id;
  final String name;
  Reports({
    required this.id,
    required this.name,
  });
}

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);
  @override
  State<Report> createState() => ReportPage();
}

class ReportPage extends State<Report> {
  static final List<Reports> report = [
    Reports(id: 1, name: "Lion"),
    Reports(id: 2, name: "Flamingo"),
    Reports(id: 3, name: "Hippo"),
    Reports(id: 4, name: "Horse"),
    Reports(id: 5, name: "Tiger"),
    Reports(id: 6, name: "Penguin"),
    Reports(id: 7, name: "Spider"),
    Reports(id: 8, name: "Snake"),
    Reports(id: 9, name: "Bear"),
    Reports(id: 10, name: "Beaver"),
    Reports(id: 11, name: "Cat"),
    Reports(id: 12, name: "Fish"),
    Reports(id: 13, name: "Rabbit"),
    Reports(id: 14, name: "Mouse"),
    Reports(id: 15, name: "Dog"),
    Reports(id: 16, name: "Zebra"),
    Reports(id: 17, name: "Cow"),
    Reports(id: 18, name: "Frog"),
    Reports(id: 19, name: "Blue Jay"),
    Reports(id: 20, name: "Moose"),
    Reports(id: 21, name: "Gecko"),
    Reports(id: 22, name: "Kangaroo"),
    Reports(id: 23, name: "Shark"),
    Reports(id: 24, name: "Crocodile"),
    Reports(id: 25, name: "Owl"),
    Reports(id: 26, name: "Dragonfly"),
    Reports(id: 27, name: "Dolphin"),
  ];
  final _items = report
      .map((reprt) => MultiSelectItem<Reports>(reprt, reprt.name))
      .toList();
  @override
  void initState() {
    super.initState();
  }

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
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: whitemodeColor["white"],
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: whitemodeColor["white"],
                        elevation: 6,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.04,
                                    left: MediaQuery.of(context).size.width *
                                        0.05),
                                child: Text(
                                  "Report to us",
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            22,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: whitemodeColor["blackshade"],
                                  ),
                                ),
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06),
                                      child: Text(
                                        "Type:",
                                        style: TextStyle(
                                          fontSize:
                                              MediaQuery.textScaleFactorOf(
                                                      context) *
                                                  18,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w400,
                                          color: whitemodeColor["black"],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01),
                                          child: MultiSelectDialogField(
                                            buttonIcon: const Icon(null),
                                            items: _items,
                                            title: const Text("Select topic"),
                                            selectedColor:
                                                whitemodeColor["blue"],
                                            decoration: BoxDecoration(
                                              color: whitemodeColor["white"],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              border: Border.all(
                                                color: whitemodeColor["blue"],
                                                width: 0.8,
                                              ),
                                            ),
                                            buttonText: Text(
                                              "     Report",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: whitemodeColor["black"],
                                                fontSize: MediaQuery
                                                        .textScaleFactorOf(
                                                            context) *
                                                    13,
                                              ),
                                            ),
                                            onConfirm: (results) {},
                                          ),
                                        ))
                                  ]),
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.06,
                                  top:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                child: Text("Others",
                                    style: TextStyle(
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      color: whitemodeColor["black"],
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.05,
                                    top: MediaQuery.of(context).size.height *
                                        0.02,
                                    right: MediaQuery.of(context).size.width *
                                        0.05),
                                child: const TextField(
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    hintText: "Description...",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.04,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.04),
                                  child: TextButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        )),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                whitemodeColor["bluelight"]),
                                        padding: MaterialStateProperty
                                            .all<EdgeInsets>(
                                                EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.1,
                                                    right: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.1,
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.01,
                                                    bottom:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.01)),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const Thankspost()));
                                      },
                                      child: Text(
                                        "Report",
                                        style: TextStyle(
                                            fontSize:
                                                MediaQuery.textScaleFactorOf(
                                                        context) *
                                                    15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Montserrat",
                                            color: whitemodeColor["white"]),
                                      )),
                                ),
                              ),
                            ]))),
              ])
            ])));
  }
}
