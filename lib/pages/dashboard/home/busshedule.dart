import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traccoon/utils/colors.dart';
import 'services.dart';
import 'dart:async';

class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => Buspage();
}

class Buspage extends State<Bus> {
  final GeolocatorService geoService = GeolocatorService();
  final Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    geoService.getCurrentLocation().listen((position) {
      centerScreen(position);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color:whitemodeColor["greyshade2"]
          ),
          actions: [SvgPicture.asset("assets/logo1.svg")],
          title: Text(
            "Shedule",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: whitemodeColor["black"],

                fontFamily: "k2d",
                fontSize: MediaQuery.textScaleFactorOf(context) * 17,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor:whitemodeColor["white"]
        ),
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .01,
                      bottom: MediaQuery.of(context).size.height * .01,
                      left: MediaQuery.of(context).size.width * .02,
                      right: MediaQuery.of(context).size.width * .02),
                  decoration: BoxDecoration(
                      color:whitemodeColor["greenshade3"],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Route 1 map",
                    style: TextStyle(
                        color:whitemodeColor["greyshade2"],
                        fontFamily: "k2d",
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16),
                  )),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02,
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.58,
                child: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                      target: LatLng(8.5664778, 76.9782794), zoom: 18.0),
                  mapType: MapType.terrain,
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
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.4),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    whitemodeColor["greenshade"],
                                child: SvgPicture.asset("assets/bus.svg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Text(
                                "Route 1",
                                style: TextStyle(
                                    color:
                                       whitemodeColor["greyshade2"],
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "k2d"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    whitemodeColor["greenshade4"],
                                child: SvgPicture.asset("assets/bus.svg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                              ),
                              child: Text(
                                "Route 2",
                                style: TextStyle(
                                    color:
                                       whitemodeColor["greyshade2"],
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "k2d"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    whitemodeColor["greenshade4"],
                                child: SvgPicture.asset("assets/bus.svg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Text(
                                "Route 3",
                                style: TextStyle(
                                    color:
                                        whitemodeColor["greyshade2"],
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "k2d"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      bottom: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.02,
                      right: MediaQuery.of(context).size.width * 0.02,
                    ),
                    decoration: BoxDecoration(
                        color:whitemodeColor["greenshade4"],
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.08,
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Driver contact",
                            style: TextStyle(
                              fontFamily: "k2d",
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16,
                              fontWeight: FontWeight.w700,
                              color: whitemodeColor["greyshade12"],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.03,
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                              ),
                              decoration: BoxDecoration(
                                  color:whitemodeColor["greenshade5"],
                                  borderRadius: BorderRadius.circular(30)),
                              width: MediaQuery.of(context).size.width * 02,
                              
                              child: Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02),
                                      child:  CircleAvatar(
                                        backgroundColor:whitemodeColor["white"],
                                        radius: 25,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                        child: Text(
                                          "Driver Name",
                                          style: TextStyle(
                                              color: whitemodeColor["greyshade15"],
                                              fontFamily: "k2d",
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                                bottom: MediaQuery.of(context).size.width*0.02
                                                ),
                                        child: Text(
                                          "Bus no (KL21A 7683)",
                                          style: TextStyle(
                                              color:whitemodeColor["greyshade15"],
                                              fontFamily: "k2d",
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }

  Future<void> centerScreen(Position position) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: 18.0)));
  }
}
