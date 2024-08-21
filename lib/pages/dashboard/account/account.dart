import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';
import './profile/profile.dart';
import 'settings.dart';
import 'report.dart';
import 'about.dart';
import 'faq.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => AccountPage();
}

class AccountPage extends State<Account> {
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
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
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
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
                      child: TextButton.icon(
                        onPressed: () {
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                        },
                        icon: SvgPicture.asset(
                          "assets/user.svg",
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.03,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('Profile',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          "calendar.png",
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.04,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('Attendance',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Settings()));
                        },
                        icon: Icon(
                          Icons.settings_outlined,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('Settings',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Report()));
                        },
                        icon: Icon(
                          Icons.error_outline_outlined,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('Report',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const About()));
                        },
                        icon: Icon(
                          Icons.info_outline_rounded,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('About',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: TextButton.icon(
                        onPressed: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FAQ()));
                        },
                        icon: Icon(
                          Icons.help_outline_rounded,
                          color: whitemodeColor["black"],
                        ),
                        label: Text('FAQ',
                            style: TextStyle(color: whitemodeColor["black"])),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ]));
  }
}
