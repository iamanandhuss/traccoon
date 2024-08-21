import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traccoon/pages/dashboard/home/busshedule.dart';
import 'package:traccoon/utils/colors.dart';
import 'services.dart';
import 'dart:async';
import '../../../utils/globals.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => DashboardPage();
}

class DashboardPage extends State<Dashboard> {
  final GeolocatorService geoService = GeolocatorService();
  final Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    geoService.getCurrentLocation().listen((position) {
      centerScreen(position);
    });

    super.initState();
  }

  final List<String> items = [
    'rout1',
    'rout2',
    'rout3',
    'rout4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 300) {
      dashtime = 0.3;
    } else {
      dashtime = 0.2;
    }
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: whitemodeColor["greenshade4"]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        SvgPicture.asset("assets/bus.svg"),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.04,
                            ),
                            child: Text(
                              'Route 1',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          18,
                                  fontWeight: FontWeight.w700,
                                  color: whitemodeColor["black"],
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
                    iconSize: 30,
                    iconEnabledColor: whitemodeColor["black"],
                    iconDisabledColor: whitemodeColor["greyshade14"],
                    buttonHeight: 55,
                    buttonWidth: MediaQuery.of(context).size.width * 0.9,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: whitemodeColor["white"],
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 300,
                    dropdownWidth: MediaQuery.of(context).size.width * 0.9,
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
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03,
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: whitemodeColor["greenshade2"],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Next bus time",
                  style: TextStyle(
                      color: whitemodeColor["white"],
                      fontFamily: "k2d",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.01,
                    right: MediaQuery.of(context).size.width * 0.01),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * .03),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whitemodeColor["greyshade2"]),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.03,
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            "departure time :",
                            style: TextStyle(
                                color: whitemodeColor["white"],
                                fontFamily: "k2d",
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * dashtime,
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            "08:30AM",
                            style: TextStyle(
                                color: whitemodeColor["white"],
                                fontFamily: "k2d",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.04,
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            "Arrival time      :",
                            style: TextStyle(
                                color: whitemodeColor["white"],
                                fontFamily: "k2d",
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * dashtime,
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            "08:30AM",
                            style: TextStyle(
                                color: whitemodeColor["white"],
                                fontFamily: "k2d",
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    whitemodeColor["primaryshade5"],
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.3,
                          right: MediaQuery.of(context).size.width * 0.3,
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.02)),
                ),
                onPressed: () {},
                child: Text(
                  "Bus shedules",
                  style: TextStyle(
                      color: whitemodeColor["white"],
                      fontSize: MediaQuery.textScaleFactorOf(context) * 12,
                      fontFamily: "K2D",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Bus()));
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.01,
                    right: MediaQuery.of(context).size.width * 0.01,
                  ),
                  width: MediaQuery.of(context).size.width * 0.99,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: GoogleMap(
                    initialCameraPosition: const CameraPosition(
                        target: LatLng(8.5664778, 76.9782794), zoom: 18.0),
                    mapType: MapType.satellite,
                    markers: {
                      Marker(
                        markerId: const MarkerId('1'),
                        position: const LatLng(8.5664778, 76.9782794),
                        infoWindow: const InfoWindow(
                          title: 'Current Location',
                          snippet: 'Your current location',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueYellow),
                      )
                    },
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.05,
                    ),
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .01,
                        bottom: MediaQuery.of(context).size.height * .01,
                        left: MediaQuery.of(context).size.width * .02,
                        right: MediaQuery.of(context).size.width * .02),
                    decoration: BoxDecoration(
                        color: whitemodeColor["greenshade3"],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Route 1 map",
                      style: TextStyle(
                          color: whitemodeColor["greyshade2"],
                          fontFamily: "k2d",
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> centerScreen(Position position) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: 18.0)));
  }
}
