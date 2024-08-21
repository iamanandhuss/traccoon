import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/colors.dart';
import '../../../utils/globals.dart';


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  @override
  State<About> createState() => AboutPage();
}

class AboutPage extends State<About> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 370 &&
        MediaQuery.of(context).size.width > 300) {
      aboutimage = 0.25;
      aboutcont = 0.35;
      aboutimg = .2;
    } else if (MediaQuery.of(context).size.width <= 380 &&
        MediaQuery.of(context).size.width > 370) {
      aboutimage = 0.3;
      aboutcont = 0.4;
      aboutimg = .23;
    } else if (MediaQuery.of(context).size.width <= 400 &&
        MediaQuery.of(context).size.width > 380) {
      aboutimage = 0.25;
      aboutcont = 0.35;
      aboutimg = .2;
    } else if (MediaQuery.of(context).size.width > 1000) {
      aboutimage = 0.2;
      aboutcont = 0.45;
      aboutimg = .2;
    } else if (MediaQuery.of(context).size.width < 300) {
      aboutimage = 0.2;
      aboutcont = 0.4;
      aboutimg = .2;
    } else if (MediaQuery.of(context).size.width > 500 &&
        MediaQuery.of(context).size.width < 1000) {
      aboutimage = 0.3;
      aboutcont = 0.35;
      aboutimg = .2;
    } else {
      aboutimage = 0.25;
      aboutcont = 0.33;
      aboutimg = .2;
    }
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04),
                    child: Center(
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            color: whitemodeColor["black"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      "Nulla dolor quam, cursus tincidunt ultrices a, volutpat eu felis. Nulla sed fringilla erat, sit amet luctus nibh. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean cursus massa nec elit convallis, aliquet hendrerit odio fermentum.",
                      maxLines: 10,
                      style: TextStyle(
                          color: whitemodeColor["black"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Center(
                      child: Text(
                        "(Our Motto)",
                        style: TextStyle(
                            color: whitemodeColor["black"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Text(
                      "Our mission",
                      style: TextStyle(
                          color: whitemodeColor["grey"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      "Pellentesque Eleifend ",
                      style: TextStyle(
                          color: whitemodeColor["black"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.height * aboutimage,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          top: MediaQuery.of(context).size.height * 0.02,
                          right: MediaQuery.of(context).size.width * 0.05),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(7),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      "Nulla dolor quam, cursus tincidunt ultrices a, volutpat eu felis. Nulla sed fringilla erat, sit amet luctus nibh. In hac habitasse platea dictumst.\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean cursus massa nec elit convallis, aliquet  hendrerit odio fermentum.\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam dictum sodales elit non accumsan. Donec finibus lectus et risus egestas suscipit.",
                      maxLines: 17,
                      style: TextStyle(
                          color: whitemodeColor["black"],
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Center(
                      child: Text(
                        "Our values",
                        style: TextStyle(
                            color: whitemodeColor["grey"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Center(
                      child: Text(
                        "Pellentesque Eleifend Sapien metus ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: whitemodeColor["black"],
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            aboutcontainer(context),
                            aboutcontainer(context),
                            aboutcontainer(context),
                          ])),
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      children: [
                         Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
                          child: Text(
                            "Follow us:",
                            style: TextStyle(
                                color: whitemodeColor["black"],
                                fontSize: MediaQuery.textScaleFactorOf(context)*15,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.asset('assets/About/fb.svg'),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset('assets/About/Linked.svg'),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset('assets/About/insta.svg'),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset('assets/About/youtube.svg'),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ])));
  }


  Widget aboutcontainer(context) {
  return Container(
    width: MediaQuery.of(context).size.width * .65,
    height: MediaQuery.of(context).size.height * aboutcont,
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.05,
        top: MediaQuery.of(context).size.height * 0.02),
    decoration: BoxDecoration(
      border: Border.all(
        color: whitemodeColor["primary"],
        width: 2,
      ),
      borderRadius: BorderRadius.circular(7),
    ),
    child: Column(
      children: [
        Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * aboutimg,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(7),
            )),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: Center(
            child: Text(
              "Nulla dolor quam",
              style: TextStyle(
                  color: whitemodeColor["black"],
                  fontSize: MediaQuery.textScaleFactorOf(context) * 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Center(
            child: Text(
              "cursus tincidunt ultrices a, volutpat eu felis. Nulla sed fringilla erat, sit amet luctus nibh.",
              maxLines: 5,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: whitemodeColor["black"],
                  fontSize: MediaQuery.textScaleFactorOf(context) * 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    ),
  );
}
}

